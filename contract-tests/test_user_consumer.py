import os
import pytest
import requests
from pact import Consumer, Provider, Like

# Pact broker/mock server setup
PACT_MOCK_HOST = 'localhost'
PACT_MOCK_PORT = 1234
PACT_DIR = os.path.join(os.path.dirname(os.path.realpath(__file__)), 'pacts')

@pytest.fixture(scope="session")
def pact():
    """
    Setup the Pact mock service and tear it down after all tests.
    This simulates the Provider API.
    """
    pact = Consumer('FrontendApp').has_pact_with(
        Provider('UserAPI'),
        host_name=PACT_MOCK_HOST,
        port=PACT_MOCK_PORT,
        pact_dir=PACT_DIR
    )
    
    pact.start_service()
    yield pact
    pact.stop_service()

def test_get_user_contract(pact):
    """
    Defines the contract expectations for GET /users/1.
    Ensures that the Consumer (FrontendApp) and Provider (UserAPI) 
    are speaking the exact same JSON schema language.
    """
    
    # 1. Define the Expected Contract (Schema)
    expected_response = {
        "id": Like(1),
        "name": Like("Integration Test User"),
        "email": Like("integration@test.com")
    }

    # 2. Setup the Pact Mock Behavior
    (pact
     .given('User with ID 1 exists')
     .upon_receiving('a request for user 1')
     .with_request('GET', '/users/1')
     .will_respond_with(200, body=expected_response))

    # 3. Execute the Consumer request against the Pact Mock Server
    with pact:
        result = requests.get(f'http://{PACT_MOCK_HOST}:{PACT_MOCK_PORT}/users/1')

    # 4. Verify the Contract matches
    assert result.status_code == 200
    data = result.json()
    assert "id" in data
    assert "name" in data
    assert "email" in data
