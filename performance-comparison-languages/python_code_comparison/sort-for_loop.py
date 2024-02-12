#https://granulate.io/blog/python-performance-testing-quick-tutorial-and-best-practices/
# use timit to time certain programs and their execution times. can also keep and overview of this
# repeats a process for default 1000000 times (technically works somewhat different)

import timeit

test_code = '''
output = []
lst1 = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25]
lst2 = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26]

for a in lst1:
	for b in lst2:
		output.append((a, b))
'''

if __name__ == "__main__":
    time = timeit.timeit(test_code)
    print(time)

