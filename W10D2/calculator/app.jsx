import React from 'react';
import ReactDOM from 'react-dom';

import Calculator from './calculator';
//  Import the Calculator component

document.addEventListener('DOMContentLoaded', function () {
  ReactDOM.render(<Calculator />, document.getElementById('main'));
  // set it to render in the DOM.
});
