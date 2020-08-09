function primeSummation(maxNum) {
  let sum = 0;
  for (n = 2; n < maxNum; n++) {
    if (prime(n)) {
      sum += n;
    }
  }

  return sum;
}

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

test("primeSummation", () => {
  expect(primeSummation(10)).toBe(17);
  expect(primeSummation(1000)).toBe(76127);
  expect(primeSummation(2000000)).toBe(142913828922);
});

test("prime", () => {
  expect(prime(0)).toBe(false);
  expect(prime(1)).toBe(false);
  expect(prime(2)).toBe(true);
  expect(prime(4)).toBe(false);
  expect(prime(5)).toBe(true);
  expect(prime(29)).toBe(true);
  expect(prime(99)).toBe(false);
});
