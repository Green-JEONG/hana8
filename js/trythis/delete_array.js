const assert = require('assert');

const deleteArray1 = (array, startOrKey, endOrValue) => {
  if (typeof startOrKey === 'number') {
    return array.filter((_, i) => i < startOrKey || i >= endOrValue)
  }

  return array.filter(a => a[startOrKey] !== endOrValue);
};
const deleteArray = (array, startOrKey, endOrValue) =>
  array.filter(
    typeof startOrKey === 'number'
    ? (_, i) => i < startOrKey || i >= endOrValue
    : a => a[startOrKey] !== endOrValue
  );
//           0  1  2  3
const arr = [1, 2, 3, 4];
assert.deepStrictEqual(deleteArray(arr, 2), [1, 2]);    // 2부터 끝까지 지우고 나머지 리턴
return;
assert.deepStrictEqual(deleteArray(arr, 1, 3), [1, 4]); // 1부터 3미만까지 지우고 나머지 리턴
assert.deepStrictEqual(arr, [1, 2, 3, 4]);
// cf. 만약 startIndex가 endIndex 보다 크다면??!

const Hong = { id: 1, name: 'Hong' };
const Kim = { id: 2, name: 'Kim' };
const Lee = { id: 3, name: 'Lee' };
const users = [Hong, Kim, Lee];

assert.deepStrictEqual(deleteArray(users, 2), [Hong, Kim]);
assert.deepStrictEqual(deleteArray(users, 1, 2), [Hong, Lee]);
assert.deepStrictEqual(deleteArray(users, 'id', 2), [Hong, Lee]);
assert.deepStrictEqual(deleteArray(users, 'name', 'Lee'), [Hong, Kim]);
