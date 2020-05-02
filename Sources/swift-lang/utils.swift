func isOdd(number: Int) -> Bool {
    return number % 2 == 1
}

func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

func isPrime(number: Int) -> Bool {
    var isPrime = number > 1
    
    for num in 2...number {
        isPrime = number % num != 0
    }
    
    return isPrime
}

func addFuncGenerator(factor: Int) -> ((_ num: Int) -> Int) {
    func add(num: Int) -> Int {
        return factor + num
    }
    return add
}

func multiplyFuncGenerator(factor: Int) -> ((_ num: Int) -> Int) {
    func multiplyBy(num: Int) -> Int {
        return factor * num
    }
    return multiplyBy
}

func exponentFuncGenerator(power: Int) -> ((_ num: Int) -> Int) {
    func exp(num: Int) -> Int {
        var result = num
        for _ in 0...power {
            result *= num
        }
        return result
    }
    return exp
}
