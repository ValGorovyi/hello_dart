void main() {
    final sum = (num firstN, num secondN) => firstN + secondN;
    final diff = (num firstN, num secondN) => firstN - secondN;
    final divide = (num firstN, num secondN) => firstN / secondN;
    final multiply = (num firstN, num secondN) => firstN * secondN;
    final pov = (num firstN, num secondN) {
        var result = firstN;
        for (int i = 1; i < secondN; i++) {
            result = result * firstN;
        }
        return result;
    };

    var result = calcSwitchFunc(2, 2, '/') ;

    print(calculate(2, 2, pov));
    print(calculate(12, 12, sum));
    print(calculate(12, 12, diff));
    print(calculate(12, 12, divide));
    print(calculate(12, 12, multiply));
    print(result);
}

num calculate(num firstN, num secondN, num Function (num firstN, num secondN) action) {
    return action(firstN, secondN);
}


//bad
num calcSwitchFunc(num firstN, num secondN, String action) {
    switch (action) {
        case '+':
            return firstN + secondN;
        case '-':
            return firstN - secondN;
        case '*':
            return firstN * secondN;
        case '/':
            return firstN / secondN;
        default: return 0;
    }
}