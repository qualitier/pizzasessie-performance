
fn is_prime(n: Int) -> Int:
    for i in range(2, n//2+1):
        if (not (n%i)):
            return 0
    
    return 1


fn main():
    var num_primes: Int = 0
    let upper_bound: Int = 250001

    for i in range(2, upper_bound):
        num_primes += is_prime(i)
    
    print(num_primes)
