import React from 'react';
import { Routes, Route } from 'react-router-dom';
import Login from './pages/Login';
import Dashboard from './pages/Dashboard';
import Letters from './pages/Letters';
import Numbers from './pages/Numbers';
import Animals from './pages/Animals';
import Colors from './pages/Colors';
import Body from './pages/Body';
import Food from './pages/Food';
import Register from './pages/Register';

function App() {


  return (
      <Routes>
        <Route exact path='/' element={<Login />} />
        <Route exact path='/register' element={<Register />} />
        <Route exact path="/dashboard" element={<Dashboard />} />
        <Route exact path="/letters" element={<Letters />} />
        <Route exact path="/numbers" element={<Numbers />} />
        <Route exact path="/animals" element={<Animals />} />
        <Route exact path="/colors" element={<Colors />} />
        <Route exact path="/body" element={<Body />} />
        <Route exact path="/food" element={<Food />} />

      </Routes>
  );
}

export default App;
