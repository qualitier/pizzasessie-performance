
def is_prime(n):
    for i in range(2, n//2+1):
        if (not (n%i)):
            return 0
        
    return 1

num_primes = 0
upper_bound = 250001

for i in range(2, upper_bound):
    num_primes += is_prime(i)

print(str(num_primes))

