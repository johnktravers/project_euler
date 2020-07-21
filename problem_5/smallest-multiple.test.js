function smallestMultiple(maxFactor) {
  let num = maxFactor;
  while (!divisibleFactors(num, maxFactor)) {
    num += maxFactor;
  }

  return num;
}

function divisibleFactors(num, maxFactor) {
  for (let i = 1; i <= maxFactor; i++) {
    if (num % i !== 0) {
      return false;
    }
  }
  return true;
}

//----------------- Tests -----------------//

test("smallestMultiple", () => {
  expect(smallestMultiple(10)).toBe(2520);
  expect(smallestMultiple(15)).toBe(360360);
  expect(smallestMultiple(20)).toBe(232792560);
});

test("divisibleFactors", () => {
  expect(divisibleFactors(15, 3)).toBe(false);
  expect(divisibleFactors(2520, 10)).toBe(true);
  expect(divisibleFactors(360360, 15)).toBe(true);
});
