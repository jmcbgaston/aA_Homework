import React from 'react';
import { Provider } from 'react-redux';

import GiphysSearchContainer from './giphys_search_container';

// Root: As usual, it is responsible for connecting our component tree with the store. It renders the GiphysSearchContainer.

const Root = ({ store }) => {
    // debugger;
  return (
    <Provider store={store}>
      <GiphysSearchContainer />
    </Provider>
  );
};

export default Root;