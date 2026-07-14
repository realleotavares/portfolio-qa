import requests
from conftest import API_URL
from sqlalchemy import text

def test_database_persistence_deep_assertion(db_session, clean_user_data):
    """
    Validates that when the API returns 201 Created, the data is ACTUALLY
    persisted physically in the PostgreSQL database.
    """
    payload = {
        "name": "Integration Test User",
        "email": "integration@test.com"
    }
    
    # 1. API Action
    response = requests.post(f"{API_URL}/users", json=payload)
    assert response.status_code == 201
    
    # Queue for intelligent teardown
    clean_user_data.append(payload["email"])
    
    # 2. Deep Assertion (Direct DB query)
    # Bypassing the API entirely to ensure truth
    result = db_session.execute(
        text("SELECT name, email FROM users WHERE email = :email"),
        {"email": payload["email"]}
    ).fetchone()
    
    assert result is not None, "User was not found in the physical database"
    assert result[0] == payload["name"]
    assert result[1] == payload["email"]
