function digitPowerSum(power) {
  let sum = 0;

  for (n = 10; n < Math.pow(10, power + 1); n++) {
    let digits = [...n.toString()].map((dig) => parseInt(dig));
    let localSum = 0;

    digits.forEach((dig) => (localSum += Math.pow(dig, power)));

    if (localSum === n) {
      sum += n;
    }
  }

  return sum;
}

test("digitPowerSum", () => {
  expect(digitPowerSum(4)).toBe(19316);
  expect(digitPowerSum(5)).toBe(443839);
});
