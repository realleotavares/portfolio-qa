import pytest
import requests
import os

def pytest_configure():
    # Set default base URL for the Restful Booker sandbox
    os.environ["BASE_URL"] = "https://restful-booker.herokuapp.com"

@pytest.fixture(scope="session")
def base_url():
    return os.environ.get("BASE_URL")

@pytest.fixture(scope="session")
def auth_token(base_url):
    """
    Retrieves an authentication token to be used in protected API routes.
    Executed once per session.
    """
    payload = {
        "username": "admin",
        "password": "password123"
    }
    response = requests.post(f"{base_url}/auth", json=payload)
    assert response.status_code == 200, f"Auth failed with status {response.status_code}"
    
    token = response.json().get("token")
    assert token is not None, "Token was not found in auth response"
    return token

@pytest.fixture
def auth_headers(auth_token):
    """
    Returns the standard headers required for protected routes.
    """
    return {
        "Cookie": f"token={auth_token}",
        "Accept": "application/json",
        "Content-Type": "application/json"
    }
