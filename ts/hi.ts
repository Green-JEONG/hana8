const myName: string = "Kim";
console.log("🚀 ~ Hi~:", myName);

let x: string | undefined;
x = Math.random() > 0.5 ? "abc" : undefined;
console.log(x?.length);

type FN = (input: string | number) => number;
// const ff: FN = (i) => void; // void : 아무것도 리드 안하는 것
const ff: FN = (i: string | number) => {
  return +i * 100;
};
ff(1);

const f2 = (i: string | number | boolean) => +i + 1;
const f4 = (i: string | number) => +i + 1;
// cb = f2
// cb = f4 // dog = animal;
function f(cb: FN) {
  cb("1");
}
f(f2);
f(f4);

// ---
const arr = [1, 2, 3];
if (arr[1]) console.log(arr[0]?.toFixed(1), arr[1] + 100);

type OBJ = { [k: string | number]: number }; // 인덱스 시크니처
let o1: OBJ = { 1: 1, a: 2 };
console.log("🚀 ~ o1:", o1);
const obj: { [x: string]: number } = { id: 1 }; // 키는 스트링, 값은 밸류로만 올 수 있음
const a = "idd";
if (obj[a]) console.log("🚀 ~ obj:", obj[a] + 1);
