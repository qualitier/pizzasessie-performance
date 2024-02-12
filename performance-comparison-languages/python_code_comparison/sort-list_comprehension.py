
import timeit

test_code = '''
lst1 = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25]
lst2 = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26]
output = [(a, b) for a in lst1 for b in lst2]
'''

if __name__ == "__main__":
    time = timeit.timeit(test_code)
    print(time)

