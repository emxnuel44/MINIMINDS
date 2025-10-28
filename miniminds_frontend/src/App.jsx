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
import Syllables from './pages/Syllables';
import Home from './pages/Home';
import Objects from './pages/Objects';
import Family from './pages/Family';
import Weather from './pages/Weather';
import Time from './pages/Time';
import Manners from './pages/Manners';
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
        <Route exact path="/syllables" element={<Syllables />} />
        <Route exact path="/home" element={<Home />} />
        <Route exact path="/objects" element={<Objects />} />
        <Route exact path="/family" element={<Family />} />
        <Route exact path="/weather" element={<Weather />} />
        <Route exact path="/time" element={<Time />} />
        <Route exact path="/manners" element={<Manners />} />
      </Routes>
  );
}

export default App;
