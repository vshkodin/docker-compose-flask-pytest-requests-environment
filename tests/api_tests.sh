#!/bin/sh

#echo $TEST_BASEURL
#BASEURL=${TEST_BASEURL:-http://$(hostname)}

#echo
#echo "Testing ${BASEURL}"
#echo

#/opt/venv/bin/activate && pytest -vs --alluredir=/allure_results --base_url $BASEURL test_one.py


#BASEURL=${TEST_BASEURL:-http://$(hostname):5000}

cd "$(dirname "$0")" || (echo "Could not cd, exiting"; exit 1)

output=$(virtualenv -p python3 .) || echo $output
source bin/activate

BASEURL=${TEST_BASEURL}
output=$(pip install -r requirements.txt) || echo $output
echo
echo $FOO
echo
echo
echo "Testing ${BASEURL}"
echo

python -m pytest --base_url $BASEURL test_one.py
