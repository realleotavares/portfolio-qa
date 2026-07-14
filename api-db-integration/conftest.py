import os
import pytest
from sqlalchemy import create_engine, text
from sqlalchemy.orm import sessionmaker

# Setup Environment variables (can be overridden by CI)
# We default to localhost for local testing outside the docker network.
API_URL = os.getenv("API_URL", "http://localhost:8000")
DB_URL = os.getenv("DB_URL", "postgresql://user:password@localhost:5432/qadb")

@pytest.fixture(scope="session")
def db_session():
    """
    Creates a direct connection to the database to perform deep assertions.
    Bypasses the API entirely to ensure data persistence is actual physical reality.
    """
    engine = create_engine(DB_URL)
    Session = sessionmaker(bind=engine)
    session = Session()
    yield session
    session.close()

@pytest.fixture
def clean_user_data(db_session):
    """
    Intelligent Teardown Fixture:
    Stores emails created during tests and deletes them from DB afterwards.
    """
    emails_to_delete = []
    
    yield emails_to_delete
    
    # Teardown logic via direct DB query
    if emails_to_delete:
        for email in emails_to_delete:
            db_session.execute(
                text("DELETE FROM users WHERE email = :email"), 
                {"email": email}
            )
        db_session.commit()
