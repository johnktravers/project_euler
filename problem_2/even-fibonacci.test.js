function evenFibonacciSum(limit) {
  let sum = 0;
  let num1 = 1;
  let num2 = 2;
  let num3 = num1 + num2;

  while (num2 <= limit) {
    if (num2 % 2 === 0) {
      sum += num2;
    }
    num1 = num2;
    num2 = num3;
    num3 = num1 + num2;
  }

  return sum;
}

test("evenFibonacciSum", () => {
  expect(evenFibonacciSum(80)).toBe(44);
  expect(evenFibonacciSum(1000)).toBe(798);
  expect(evenFibonacciSum(4000000)).toBe(4613732);
});
