function powerDigitSum(base, exp) {
  let numString = BigInt(Math.pow(base, exp)).toString();
  let sum = 0;

  for (i = 0; i < numString.length; i++) {
    sum += parseInt(numString[i]);
  }

  return sum;
}

test("powerDigitSum", () => {
  expect(powerDigitSum(2, 15)).toBe(26);
  expect(powerDigitSum(3, 6)).toBe(18);
  expect(powerDigitSum(2, 1000)).toBe(1366);
});
