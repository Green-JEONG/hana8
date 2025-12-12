import { useEffect, useRef, type FormEvent } from 'react';
import Button from '../ui/Button';
import type { LoginFunction } from '../App';
import LabelInput from '../ui/LabelInput';
type Props = {
  login: LoginFunction;
};
export default function Login({ login }: Props) {
  // const [name, setName] = useState('');
  // const [age, setAge] = useState(0);
  // console.log('🚀 ~ name/age:', name);

  const nameRef = useRef<HTMLInputElement>(null);
  const ageRef = useRef<HTMLInputElement>(null);

  const makeLogin = (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (nameRef.current?.value && ageRef.current?.value) {
      login(nameRef.current.value, Number(ageRef.current.value));
    }
  };

  useEffect(() => {
    // 마운트하면 포커징 됨
    if (nameRef.current) nameRef.current.focus();
  }, []);

  return (
    <div className='border border-red-300 p-3 rounded-lg'>
      <h1 className='text-2xl text-green-500 text-center font-medium'>Login</h1>
      <form onSubmit={makeLogin} className='space-y-3'>
        {/* <div>
          <label htmlFor='name' className='text-sm text-gray-600'>
            Name
          </label>
          <input
            type='text'
            id='name'
            onChange={(e) => setName(e.target.value)}
            placeholder='user name...'
            className='w-full'
            required
          />
        </div>
        <div>
          <label htmlFor='age' className='text-sm text-gray-600'>
            Age
          </label>
          <input
            type='number'
            id='age'
            ref={ageRef}
            // onChange={(e) => setAge(+e.target.value)}
            placeholder='user name...'
            className='w-full'
            required
          />
        </div> */}
        <LabelInput label='Name' ref={nameRef} />
        <LabelInput
          type='number'
          ref={ageRef}
          // onChange={(e) => setAge(+e.target.value)}
          placeholder='Age...'
        />

        <div className='text-center'>
          <button type='reset'>Cancel</button>
          <Button
            // type='submit'
            // onClick={() => login(name, age)}
            className='bg-blue-500 text-white hover:bg-blue-600'
          >
            Login
          </Button>
        </div>
      </form>

      {/* <div className='flex items-center justify-center pt-4 pb-3 gap-5 text-center'>
        <div>
          <p>Name</p>
          <input
            type='text'
            className='border border-gray-300 rounded-md py-2'
          />
        </div>
        <div>
          <p>age</p>
          <input
            type='number'
            className='border border-gray-300 rounded-md py-2'
          />
        </div>
      </div>

      <button
        onClick={login}
        className='w-full border-0 py-2 rounded-md cursor-pointer bg-gray-100 hover:bg-gray-200'
      >
        Sign In
      </button> */}
    </div>
  );
}
