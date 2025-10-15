from app import app

def test_index():
    client = app.test_client()
    r = client.get("/")
    assert r.status_code == 200
    assert r.get_json() == {"message": "Hello CI/CD!"}
