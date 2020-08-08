//----------------- Constants -----------------//

const names = require("./names");

//----------------- Functions -----------------//

function namesScores(nameList) {
  let sum = 0;

  nameList.sort().forEach((name, index) => {
    sum += alphabeticalValue(name) * (index + 1);
  });

  return sum;
}

function alphabeticalValue(name) {
  let value = 0;

  for (i = 0; i < name.length; i++) {
    value += name.charCodeAt(i) - 64;
  }

  return value;
}

//----------------- Tests -----------------//

test("namesScores", () => {
  expect(namesScores(["COLIN", "MARY", "PATRICIA"])).toBe(398);
  expect(namesScores(names)).toBe(871198282);
});

test("alphabeticalValue", () => {
  expect(alphabeticalValue("COLIN")).toBe(53);
  expect(alphabeticalValue("MARY")).toBe(57);
  expect(alphabeticalValue("PATRICIA")).toBe(77);
});
