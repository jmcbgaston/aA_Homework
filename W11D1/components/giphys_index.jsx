import React from 'react';

import GiphysIndexItem from './giphys_index_item';

// GiphysIndex: iterates over the giphys in props, rendering a GiphysIndexItem for each one.

function GiphysIndex({ giphys }) {
    return (
        <ul>
            {giphys.map(giphy => <GiphysIndexItem key={giphy.id} giphy={giphy} />)}
        </ul>
    )
}

export default GiphysIndex;