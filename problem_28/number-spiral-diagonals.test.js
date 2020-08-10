function diagonalNumberSum(sideLength) {
  let sum = 0;
  for (let i = 1; i <= sideLength; i += 2) {
    sum += cornerSum(i);
  }
  return sum;
}

function cornerSum(sqrtNum) {
  let square = sqrtNum * sqrtNum;
  let sum = square;

  if ((sqrtNum > 1) & (sqrtNum % 2 === 1)) {
    for (i = 1; i <= 3; i++) {
      sum += square - i * (sqrtNum - 1);
    }
  }

  return sum;
}

//----------------- Tests -----------------//

test("diagonalNumberSum", () => {
  expect(diagonalNumberSum(1)).toBe(1);
  expect(diagonalNumberSum(3)).toBe(25);
  expect(diagonalNumberSum(5)).toBe(101);
  expect(diagonalNumberSum(7)).toBe(261);
  expect(diagonalNumberSum(9)).toBe(537);
  expect(diagonalNumberSum(1001)).toBe(669171001);
});

test("cornerSum", () => {
  expect(cornerSum(1)).toBe(1);
  expect(cornerSum(3)).toBe(24);
  expect(cornerSum(5)).toBe(76);
  expect(cornerSum(7)).toBe(160);
  expect(cornerSum(9)).toBe(276);
});
