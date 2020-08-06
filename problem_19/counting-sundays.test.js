//----------------- Constants -----------------//

const nonLeapFirsts = [1, 32, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335];
const leapFirsts = [1, 32, 61, 92, 122, 153, 183, 214, 245, 275, 306, 336];

//----------------- Functions -----------------//

function firstOfTheMonthSundayCount(startYear, endYear) {
  let count = 0;
  let day = 7;

  for (year = 1900; year <= endYear; year++) {
    while (day <= 336) {
      if (leapYear(year)) {
        if (year >= startYear && leapFirsts.includes(day)) {
          count += 1;
        }
      } else {
        if (year >= startYear && nonLeapFirsts.includes(day)) {
          count += 1;
        }
      }
      day += 7;
    }

    if (leapYear(year)) {
      day = ((day + 7 * 5) % 366) % 7;
    } else {
      day = ((day + 7 * 5) % 365) % 7;
    }
  }

  return count;
}

function leapYear(year) {
  if (year % 100 !== 0) {
    return year % 4 === 0;
  } else {
    return year % 400 === 0;
  }
}

//----------------- Tests -----------------//

test("firstOfTheMonthSundayCount", () => {
  expect(firstOfTheMonthSundayCount(1900, 1901)).toBe(4);
  expect(firstOfTheMonthSundayCount(1901, 1902)).toBe(3);
  expect(firstOfTheMonthSundayCount(1901, 2000)).toBe(171);
});

test("leapYear", () => {
  expect(leapYear(1992)).toBe(true);
  expect(leapYear(2400)).toBe(true);
  expect(leapYear(1900)).toBe(false);
  expect(leapYear(1997)).toBe(false);
});
