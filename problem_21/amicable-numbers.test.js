function amicableNumberSum(maxNum) {
  let sum = 0;

  for (let a = 1; a < maxNum; a++) {
    let b = divisorSum(a);
    if (a !== b && divisorSum(b) === a) {
      sum += a;
    }
  }

  return sum;
}

function divisorSum(num) {
  let sum = 0;

  for (let i = 1; i <= num / 2; i++) {
    if (num % i === 0) {
      sum += i;
    }
  }

  return sum;
}

//----------------- Tests -----------------//

test("amicableNumberSum", () => {
  expect(amicableNumberSum(1000)).toBe(504);
  expect(amicableNumberSum(10000)).toBe(31626);
});

test("divisorSum", () => {
  expect(divisorSum(220)).toBe(284);
  expect(divisorSum(284)).toBe(220);
});
