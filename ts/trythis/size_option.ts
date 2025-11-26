// type X = { id: "XS" | "S" | "M" | "L" | "XL"; price: number };
// const SIZE: X = [
//   { id: "XS", price: 8000 },
//   { id: "S", price: 10000 },
//   { id: "M", price: 12000 },
//   { id: "L", price: 14000 },
//   { id: "XL", price: 15000 },
// ];
const SIZE = [
  { id: "XS", price: 8000 },
  { id: "S", price: 10000 },
  { id: "M", price: 12000 },
  { id: "L", price: 14000 },
  { id: "XL", price: 15000 },
] as const;

const sizeOption1 = { XS: 1, S: 5, M: 2, L: 2, XL: 4 };
// type Q = keyof typeof sizeOption1;
const totalPrice1 = SIZE.reduce(
  (currPrice, size) => currPrice + sizeOption1[size.id] * size.price,
  0
);
console.log("🚀 ~ totalPrice1:", totalPrice1);

const sizeOption2 = { XS: 2, S: 3, M: 4, L: 5, XL: 6 };
const totalPrice2 = SIZE.reduce(
  (currPrice, size) => currPrice + sizeOption2[size.id] * size.price,
  0
);
console.log("🚀 ~ totalPrice2:", totalPrice2);

// interface User {
//   id: number;
//   name: string;
// }

// interface Dept {
//   id: number;
//   dname: string;
//   captain: string;
// }
// type UdT = (User | Dept) & { addr: string }; // (a + b) * c = ac + bc
// type UdT = User & Dept;
// type XX = { [k in keyof (User | Dept)]: string | number };
// interface Ud2 extends Partial<UdT> {
interface Ud2 {
  // <이 부분을 작성하시오>
  id: number;
  name?: string;
  dname?: string;
  captain?: string; // 1 way
  // [x: string]: number | string | undefined; // 2 way
  addr: string;
}

// 다음 코드가 오류가 없으면 통과!
// const ud2err: Ud2 = { id: 1, name: "HH", addr: "Seoul", xx: 1 };
const ud2: Ud2 = { id: 1, name: "HH", addr: "Seoul" };
const ud3: Ud2 = { id: 1, dname: "HH", captain: "HH", addr: "Seoul" };
console.log("🚀 ~:", ud2, ud3);
