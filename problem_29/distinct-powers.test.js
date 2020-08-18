function distinctPowerCount(min, max) {
  let distinctPowers = [];

  for (let base = min; base <= max; base++) {
    for (let power = min; power <= max; power++) {
      let num = Math.pow(base, power);
      if (!distinctPowers.includes(num)) {
        distinctPowers.push(num);
      }
    }
  }

  return distinctPowers.length;
}

test("distinctPowerCount", () => {
  expect(distinctPowerCount(2, 4)).toBe(8);
  expect(distinctPowerCount(2, 5)).toBe(15);
  expect(distinctPowerCount(2, 100)).toBe(9183);
});
