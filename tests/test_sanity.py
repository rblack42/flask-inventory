# sanity test for pytest
def func(x):
    return x+1

def test_sanity():
    assert func(3) == 4

