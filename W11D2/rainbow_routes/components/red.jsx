import React from 'react';
import { Route, Link, NavLink } from 'react-router-dom';
import Orange from './orange';
import Yellow from './yellow';

class Red extends React.Component {
  render() {
    return(
      <div>
        <h2 className="red"></h2>
        <NavLink exact to='/red' >Red only</NavLink>
        {/* exact This is a flag. If it is set, the path will only match when it exactly matches the URL. For example, if we set exact, then /users will not match /users/123 any more. */}
        
        <NavLink to='/red/orange' >Add orange</NavLink>
        <NavLink to='/red/yellow' >Add yellow</NavLink>

        <Route path="/red/orange" component={Orange} />
        <Route path="/red/yellow" component={Yellow} />
      </div>
    );
  }
};

export default Red;
