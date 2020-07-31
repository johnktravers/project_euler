function pythagoreanTriplet(sum) {
  for (c = sum / 2; c > 0; c--) {
    for (i = 1; i < sum / 6; i++) {
      let b = c - i;
      let a = sum - b - c;
      if (Math.pow(a, 2) + Math.pow(b, 2) === Math.pow(c, 2)) {
        return [a, b, c];
      }
    }
  }
}

test("pythagoreanTriplet", () => {
  expect(pythagoreanTriplet(12)).toStrictEqual([3, 4, 5]);
  expect(pythagoreanTriplet(30)).toStrictEqual([5, 12, 13]);
  expect(pythagoreanTriplet(400)).toStrictEqual([80, 150, 170]);
  expect(pythagoreanTriplet(1000)).toStrictEqual([200, 375, 425]);
  expect(pythagoreanTriplet(1500)).toStrictEqual([250, 600, 650]);
});
