function prime(num) {
  if (num < 2) {
    return false;
  }

  let sqrtMax = Math.pow(num, 0.5);
  for (i = 2; i <= sqrtMax; i++) {
    if (num % i === 0) {
      return false;
    }
  }
  return true;
}

//----------------- Tests -----------------//

test("prime", () => {
  expect(prime(0)).toBe(false);
  expect(prime(1)).toBe(false);
  expect(prime(2)).toBe(true);
  expect(prime(4)).toBe(false);
  expect(prime(5)).toBe(true);
  expect(prime(29)).toBe(true);
  expect(prime(99)).toBe(false);
});
