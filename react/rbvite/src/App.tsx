// import './App.css';
import { Route, Routes } from 'react-router-dom';
import Hello from './components/Hello';
import My from './components/My';
import { SessionProvider } from './hooks/SessionContext';
import Nav from './Nav';
import Posts from './components/Posts';
import Home from './components/Home';
import Profile, { type ProfileHandler } from './components/Profile';
import { useRef } from 'react';

function App() {
  const profileHandlerRef = useRef<ProfileHandler>(null);

  return (
    <SessionProvider>
      <Nav />
      <div className='grid place-items-center h-screen mx-2'>
        <Routes>
          <Route path='/' element={<Home />} />
          <Route path='/my' element={<My />} />
          <Route path='/profile' element={<Profile />} />
          <Route path='/posts' element={<Posts />} />
          <Route path='/hello' element={<Hello />} />
        </Routes>
      </div>
    </SessionProvider>
  );
}

export default App;
