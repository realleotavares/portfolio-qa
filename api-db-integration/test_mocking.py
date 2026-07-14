import requests
from conftest import API_URL

def test_external_service_mocking_with_wiremock():
    """
    Validates that the API successfully integrates with a 3rd party service.
    Instead of hitting a real fragile endpoint, we use Wiremock.
    This proves we can test our microservices in total isolation.
    """
    # Action
    response = requests.get(f"{API_URL}/external-status")
    
    # Assert
    assert response.status_code == 200
    data = response.json()
    
    # Asserting the exact contract provided by Wiremock in status.json
    assert data["service"] == "payments-mock"
    assert data["status"] == "UP"
