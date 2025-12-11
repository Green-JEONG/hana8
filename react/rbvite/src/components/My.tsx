import type { Session } from '../App';
import Small from '../ui/small';
import Login from './Login';
import Profile from './Profile';

type Prop = {
  session: Session;
  logout: () => void;
};

export default function My({ session, logout }: Prop) {
  return (
    <>
      {session?.loginUser ? (
        <Profile loginUser={session.loginUser} logout={logout} />
      ) : (
        <Login />
      )}
      <hr />
      <ul>
        {session.cart.map(({ id, name, price }) => (
          <li key={id}>
            <Small>{id}.</Small> {name}
            <Small>{price.toLocaleString()}원</Small>
          </li>
        ))}
      </ul>
    </>
  );
}
