function multiplesOfThreeAndFive(max_num) {
  let sum = 0;
  for (const n of Array(max_num).keys()) {
    if (n % 3 === 0 || n % 5 === 0) {
      sum += n;
    }
  }
  return sum;
}

test("multiplesOfThreeAndFive", () => {
  expect(multiplesOfThreeAndFive(10)).toBe(23);
  expect(multiplesOfThreeAndFive(100)).toBe(2318);
  expect(multiplesOfThreeAndFive(1000)).toBe(233168);
});
