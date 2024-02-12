
const isPrime = (n) => {
    for (let i = 2; i <= n/2; i++) {
        if (!(n % i)) {
            return 0;
        }
    }
    return 1;
};


var numPrimes = 0;
const upperBound = 250001;

for (let i = 2; i < upperBound; i++) {
    numPrimes += isPrime(i);
}

console.log(numPrimes);

