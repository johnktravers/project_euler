function longestCollatzChain(max) {
  let maxLength = 0;
  let maxNum = 0;

  for (i = 1; i < max; i++) {
    let length = collatzChainLength(i);
    if (length > maxLength) {
      maxLength = length;
      maxNum = i;
    }
  }

  return maxNum;
}

function collatzChainLength(num) {
  let count = 1;

  while (num !== 1) {
    if (num % 2 === 0) {
      num = num / 2;
    } else {
      num = 3 * num + 1;
    }
    count += 1;
  }

  return count;
}

//----------------- Tests -----------------//

test("longestCollatzChain", () => {
  expect(longestCollatzChain(13)).toBe(9);
  expect(longestCollatzChain(1000000)).toBe(837799);
});

test("collatzChainLength", () => {
  expect(collatzChainLength(9)).toBe(20);
  expect(collatzChainLength(13)).toBe(10);
  expect(collatzChainLength(1000000)).toBe(153);
});
