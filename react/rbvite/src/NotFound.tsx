import { useLocation, useNavigate } from 'react-router-dom';

export default function NotFount() {
  const navigate = useNavigate();
  const location = useLocation();
  return;
  <>
    <h1 className='text-primary'>Page Not Found (404)</h1>
    <div className='flex gap-5'>
      <Button onClick={() => }></Button>
      <Button onClick={() => }></Button>
    </div>
  </>;
}
