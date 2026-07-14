import requests
from jsonschema import validate
from ..schemas.booking_schema import BOOKING_SCHEMA, CREATE_BOOKING_RESPONSE_SCHEMA

class TestBookingAPI:
    """
    Test suite for the Booking API (Restful Booker Sandbox).
    These are REAL integration tests (no mocks).
    """

    def test_get_booking_ids(self, base_url):
        """Validate that the API returns a successful response containing a list of booking IDs."""
        response = requests.get(f"{base_url}/booking")
        
        # Real HTTP assertions
        assert response.status_code == 200, f"Expected 200, got {response.status_code}"
        
        data = response.json()
        assert isinstance(data, list), "Response is not a list"
        
        if len(data) > 0:
            assert "bookingid" in data[0], "Payload does not contain bookingid"

    def test_create_booking_schema_validation(self, base_url):
        """Validate the creation of a booking and assert the response JSON matches the defined schema."""
        payload = {
            "firstname": "John",
            "lastname": "Doe",
            "totalprice": 150,
            "depositpaid": True,
            "bookingdates": {
                "checkin": "2024-05-01",
                "checkout": "2024-05-10"
            },
            "additionalneeds": "Late Checkout"
        }
        
        response = requests.post(
            f"{base_url}/booking", 
            json=payload, 
            headers={"Accept": "application/json"}
        )
        
        assert response.status_code == 200
        data = response.json()
        
        # Schema Validation
        validate(instance=data, schema=CREATE_BOOKING_RESPONSE_SCHEMA)
        
        # Data integrity assertions
        assert data["booking"]["firstname"] == "John"
        assert data["booking"]["totalprice"] == 150

    def test_update_booking_requires_auth(self, base_url, auth_headers):
        """Validate that an existing booking can be fully updated using proper authentication."""
        # 1. Setup: Create a booking to update
        create_payload = {
            "firstname": "ToUpdate",
            "lastname": "User",
            "totalprice": 200,
            "depositpaid": False,
            "bookingdates": {
                "checkin": "2024-06-01",
                "checkout": "2024-06-05"
            }
        }
        create_resp = requests.post(f"{base_url}/booking", json=create_payload, headers={"Accept": "application/json"})
        assert create_resp.status_code == 200
        booking_id = create_resp.json()["bookingid"]

        # 2. Action: Update the booking
        update_payload = create_payload.copy()
        update_payload["firstname"] = "UpdatedName"
        update_payload["totalprice"] = 300
        
        update_resp = requests.put(
            f"{base_url}/booking/{booking_id}", 
            json=update_payload, 
            headers=auth_headers
        )
        
        # 3. Assertions
        assert update_resp.status_code == 200
        updated_data = update_resp.json()
        
        # Validate against schema and data integrity
        validate(instance=updated_data, schema=BOOKING_SCHEMA)
        assert updated_data["firstname"] == "UpdatedName", "Firstname was not updated"
        assert updated_data["totalprice"] == 300, "Total price was not updated"

    def test_delete_booking(self, base_url, auth_headers):
        """Validate that a booking can be deleted and subsequent GET returns 404."""
        # Setup: Create booking
        payload = {
            "firstname": "ToDelete",
            "lastname": "User",
            "totalprice": 100,
            "depositpaid": True,
            "bookingdates": {"checkin": "2024-07-01", "checkout": "2024-07-05"}
        }
        create_resp = requests.post(f"{base_url}/booking", json=payload, headers={"Accept": "application/json"})
        booking_id = create_resp.json()["bookingid"]

        # Action: Delete
        delete_resp = requests.delete(f"{base_url}/booking/{booking_id}", headers=auth_headers)
        
        # Assertions
        assert delete_resp.status_code == 201  # Restful Booker uses 201 Created for successful deletion
        
        # Verify it's actually deleted
        get_resp = requests.get(f"{base_url}/booking/{booking_id}")
        assert get_resp.status_code == 404
