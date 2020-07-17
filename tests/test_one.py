import requests

def test_get(request):
    url=request.config.getoption("--base_url")
    print(url)
    r =requests.get(url)
    assert 200 == r.status_code
"""def test_post(request):

    r = requests.post(f'{request.config.getoption("--base_url")}/', json={"name":"Kumar"})
    assert 200 == r.status_code
    assert "Kumar" == r.json()['name']"""