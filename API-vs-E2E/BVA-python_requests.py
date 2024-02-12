import requests

url = 'http://192.168.1.88:3002/api/calculate-score'

test_data = {
    "case1": {
        "input": -1,
        "expected_result": "invalid score"
    },
    "case2": {
        "input": 0,
        "expected_result": "A"
    },
    "case3": {
        "input": 9,
        "expected_result": "A"
    },
    "case4": {
        "input": 10,
        "expected_result": "B"
    },
    "case5": {
        "input": 19,
        "expected_result": "B"
    },
    "case6": {
        "input": 20,
        "expected_result": "C"
    },
    "case7": {
        "input": 29,
        "expected_result": "C"
    },
    "case8": {
        "input": 30,
        "expected_result": "D"
    },
    "case9": {
        "input": 39,
        "expected_result": "D"
    },
    "case10": {
        "input": 40,
        "expected_result": "E"
    },
    "case11": {
        "input": 49,
        "expected_result": "E"
    },
    "case12": {
        "input": 50,
        "expected_result": "invalid score"
    }
}


for test_case in test_data.values():
    res = requests.post(url=url, json={ 'score': test_case['input'] })
    if res.status_code == 200: print('success')
    assert res.json()['result'] == test_case['expected_result']