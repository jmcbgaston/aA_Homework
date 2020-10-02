import React from 'react';
// .jsx is a react file so we need it!
// 
import ReactDOM from 'react-dom';
// gives us the render ability

import Calculator from './calculator';
//  Import the Calculator component

document.addEventListener('DOMContentLoaded', function () {
  ReactDOM.render(<Calculator />, document.getElementById('main'));
  // set it to render in the DOM.
  //ReactDOM.render(React.createElement('h1', null, '<Calculator />')) -> React takes care of this for us
});
