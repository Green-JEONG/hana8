// 1) 1970년 1월 1일과 1970년 1월 2일의 차이를 초로 나타내시오.
// const day1 = new Date(1970, 0, 1);
// 21:23:34.99
const d1 = new Date(1970, 0, 1, 0, 0, 0, 0);
const day2 = new Date(1970, 0, 2);
const diff = (day2 - d1) / 1000;

console.log('1️⃣ 1970년 01월 01일과 1970년 01월 02일의 차이는?', diff, '초');
console.log("🚀 ~ diff:", (day2.getTime() - d1.getTime()) / 1000);

// 2) 이 달의 날짜 5개를 무작위로 만들어 역순으로 출력하시오.
const now = new Date();
const year = now.getFullYear();
const month = now.getMonth();
// now.setMonth(now.getMonth() + 1);
const lastDay = new Date(year,  month+1, 0).getDate();
// now.setDate(0);
// const lastday = now.getDate();
const rands = Array.from({ length: 5}, () => Math.ceil(Math.random() * lastDay)
// const rand = (s, e) => s + Math.floor((e - s + 1) * Math.random);
// const dates = Array.from({ length: 5}, + => rand(1, lastday));
// const dates = [];
/* 실무용 O, 공부용 X
do {
  const r = rnad(1, lastday);
  if (!dates.includes(r)) dates.push(r);
} while(dates.length < 5);
*/
// dates.sort((a, b) => (a > b ? 1 : -1)).reverse();
// const r1 = rand(1, lastday);
// const ym = `${now.getFullYear()}-${now.getMonth() + 1}`;
// dates.forEach(d => console.log(`${ym}-${d.toString().padStart(2, '0')}`));
// ('00' + d).substring(d.length)
);

rands.sort((a, b) => b - a);

console.log('2️⃣ 이번 달 무작위 날짜 5개 (역순)):', rands)

// 3) 내년(2026년) 오늘의 요일을 출력하시오.
const nextYear = now.getFullYear() + 1;
const dayNextYear = new Date(nextYear, now.getMonth(), now.getDate());
const weekday = dayNextYear.toLocaleDateString('ko-KR', { weekday: 'long' });

console.log(`3️⃣ 내년(${nextYear}년) 오늘의 요일은?`, weekday);

// 4) 오늘로 부터 100일 후의 날짜는?
const after100 = new Date(now);
after100.setDate(now.getDate() + 100);
// after100.setFullYear(after100.getFullYear() + 1);

const formatted = after100.toLocaleDateString('ko-KR', {
  year: 'numeric',
  month: 'long',
  day: 'numeric'
});
/*
const fmtWeek = new

const fmtWeek = new Intl.DateTimeFormat('ko-KR', {
  year: 'numeric',
  month: '2-digit',
  day: '2-digit',
  weekday: 'long'
});

const d5 = new Date();
d5.setDate(d5.getDate() + 100);
*/

console.log('4️⃣ 오늘로부터 100일 후의 날짜는?', formatted);