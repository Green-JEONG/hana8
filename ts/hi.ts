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

type OBJ = { [k: string | number]: number }; // 인덱스 시그니처
let o1: OBJ = { 1: 1, a: 2 };
console.log("🚀 ~ o1:", o1);
const obj: { [x: string]: number } = { id: 1 }; // 키는 스트링, 값은 밸류로만 올 수 있음
const a = "idd";
if (obj[a]) console.log("🚀 ~ obj:", obj[a] + 1);

// ---------
class GradeCounter {
  countGrades(grades: string[], letter: string) {
    // (x: string[], y:string) =>
    return grades.filter((grade) => grade === letter).length;
  }
}

// 기본(super)의 GradeCounter의 반환 타입과 매개변수가 작기 때문에 허용
// ex) x:부모타입 = new 자식() 했을 때 x.f(x, y)와 같이 부모 함수 구조로 요구하므로 자식이 더 많은 param이면 누락되는 arg가 있어 오류!
class FailureCounter extends GradeCounter {
  is: boolean = false;
  setIs(is: boolean) {
    this.is = is;
  }
  // countGrades() {  // 모두 OK(:작기 때문에)
  countGrades(grades: string[], _letter: string) {
    return super.countGrades(grades, this.is ? "F" : "D");
  }
}

// Object.freeze(obj) =====> obj.x = y;
// function dcRate(cate) { return Object.freeze({dcRate: 0.1, until: '12/30'})}
// function dcRate(cate) { return {dcRate: 0.1, until: '12/30'} as const}
// as const;
const xx: GradeCounter = new FailureCounter();
// ((FailureCounter)x).setIs(false);
if (xx instanceof FailureCounter) xx.setIs(false);
xx.countGrades(["A"], "");

const someFunc = () => {
  try {
    throw new Error("some error!!!!");
    // throw 'some string error!!!';
    // throw ['some', 'array', 'error'];
  } catch (error) {
    console.log("error >>> ", error, typeof error);
    if (error instanceof Error) console.log(error.message);
    else console.log(JSON.stringify(error));
  }
};
someFunc();

// ---
type User = {
  id: number;
  age: number;
  name: string;
};

// type ArrayMember<T extends unknown[]> = T[number];
type ArrayMember<T extends Array<unknown>> = T[number];
type A = Array<number | string>; // (number | string)[]

const ns = [1, 2, 3];
type NA = typeof ns;
type XX4 = ArrayMember<NA>;
const strs = ["a", "b"];
type XX5 = ArrayMember<typeof strs>;

// const map = new Map<string, number | string | boolean | undefined>([['id', 1], ['x', undefined], ['age', false], ['name', 'Hong']]);
const map = new Map<string, number | string | boolean>([
  ["id", 1],
  ["age", false],
  ["name", "Hong"],
]);
// const map = new Map<string, number | string>([['id', 1], ['age', 33], ['name', 'Hong']]);
// const map = new Map<string, string>([['age', '33'], ['name', 'Hong']]);
// const map = new Map<string, boolean>([['age', true], ['name', false]]);
type ObjectValue<M extends Object> = M[keyof M]; // only object type
type XX61 = ObjectValue<User>;

type MapValue0<M extends Map<unknown, unknown>> = M[keyof M];
type XX60 = MapValue0<typeof map>; // number | string
const vals = [...map.values()];
console.log("===>", vals, typeof vals);
type Vals = ArrayMember<typeof vals>;
// type MapValue<M extends Map<unknown, unknown>> = Exclude<M[keyof M], Function>;
// type MapValue<M> = M extends Map<unknown, infer Val> ? Val : unknown; // 정답!!
// type MapValue<M extends Map<unknown, unknown>> = Exclude<M[keyof M], Function>;
// type MapValue<M extends Map<unknown, unknown>> = Exclude<ReturnType<M['get']>, undefined>;
// type MapValue<M extends Map<unknown, unknown>> = ReturnType<M['values']>;

type MI<M> = M extends MapIterator<infer X> ? X : unknown;
// type MI<M extends Array<unknown>> = M[number];
type MapValue<M extends Map<unknown, unknown>> = MI<ReturnType<M["values"]>>;
type XX6 = MapValue<typeof map>;

type MapObject<M extends Map<unknown, unknown>> = {
  [k in keyof M as M[k] extends Function
    ? never
    : k extends "size" | typeof Symbol.toStringTag
    ? never
    : k]: M[k];
};
type XX66 = MapObject<typeof map>;

type ExclueFunction<T> = T extends Function ? never : T;
type X67 = ExclueFunction<XX6>;
type X68 = Exclude<XX6, Function>;
type Except<T, U> = T extends U ? never : T;
