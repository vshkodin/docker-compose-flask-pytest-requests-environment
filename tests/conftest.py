def pytest_addoption(parser):
    parser.addoption('--base_url', action='store', dest='base_url')