function sumSquareDifference(max) {
  let sum = 0;
  let sumOfSquares = 0;

  for (let i = 1; i <= max; i++) {
    sum += i;
    sumOfSquares += Math.pow(i, 2);
  }

  let squareOfSum = Math.pow(sum, 2);

  return squareOfSum - sumOfSquares;
}

test("sumSquareDifference", () => {
  expect(sumSquareDifference(10)).toBe(2640);
  expect(sumSquareDifference(100)).toBe(25164150);
  expect(sumSquareDifference(1000)).toBe(250166416500);
});
