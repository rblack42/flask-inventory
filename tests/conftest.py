import pytest
from app.core import create_app


@pytest.fixture(scope='module')
def test_client():
    app = create_app('flask_test.cfg')
    testing_client = app.test_client()
    ctx = app.app_context()
    ctx.push()
    yield testing_client
    ctx.pop()
