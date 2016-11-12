import React from 'react';
import { Link } from 'react-router';
import GreetingContainer from './greeting/greeting_container';
import ErrorsContainer from './error/errors_container';

const App = ({ children }) => (
  <div>
    <div>
      {children}
    </div>
    <ErrorsContainer />
  </div>
);

export default App;
