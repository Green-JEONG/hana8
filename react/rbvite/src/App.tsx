import { useState } from 'react';
import './App.css';
import Hello from './components/Hello';
import My from './components/My';

type Item = {
  id: number;
  name: string;
  price: number;
  isSoldOut?: boolean;
};
export type LoginUser = { id: number; name: string; age: number };
export type Session = {
  loginUser: LoginUser | null;
  cart: Item[];
};

const DefaultSession = {
  // loginUser: null,
  loginUser: { id: 1, name: 'Hong', age: 33 },
  cart: [
    { id: 100, name: '라면', price: 3000 },
    { id: 101, name: '컵라면', price: 2000 },
    { id: 200, name: '파', price: 5000 },
  ],
};

function App() {
  const [count, setCount] = useState(0); // count는 새로 생기는 것이 X
  // if (x === undefined()) 때만 0으로 초기화
  // x = 0; // 이전 값
  // function setAction(y) {
  //   this.x = typeof y === 'func' ? y(x) : y;
  //   render();
  // }
  // return [x, setAction];
  // const x = count;
  // console.log('🚀 ~ x:', x);
  const [session, setSession] = useState<Session>(DefaultSession);

  const logout = () => {
    // session.loginUser = null; // fail !!
    setSession({ ...session, loginUser: null });
  };

  return (
    <div className='grid place-items-center h-screen'>
      <h1 className='test-3xl'>count: {count}</h1>
      <My session={session} logout={logout} />
      <div className='card'>
        <Hello
          name={session.loginUser?.name}
          age={session.loginUser?.age}
          setCount={setCount}
        >
          반갑습니다
        </Hello>
      </div>
    </div>
  );
}

export default App;
