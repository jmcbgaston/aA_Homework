import React from 'react';

import GiphysIndex from './giphys_index';
import fetchSearchGiphys from '../util/api_util.js'

// GiphysSearch: renders the search bar and handles all of the search logic (keeping track of the query and trigger the AJAX request on submit); renders the GiphysIndex.

class GiphysSearch extends React.Component {
    constructor() {
        super();
        this.state = {
            searchTerm: 'pizza'
        }

        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }
    
    componentDidMount() {
        this.props.fetchSearchGiphys('pizza');
    }
    
    handleChange(e) {
        this.setState({
            searchTerm: e.currentTarget.value
        })
    }
    
    handleSubmit(e) {
        e.preventDefault();
        let searchTerm = this.state.searchTerm;
        this.props.fetchSearchGiphys(searchTerm);
    }
    
    render() {
        let { giphys } = this.props;

        return (
            <div>
                <form className='search-bar'>
                    <input value={this.state.searchTerm} onChange={this.handleChange} />
                    <button type='submit' onClick={this.handleSubmit}>Search Giphy</button>
                </form>
                <GiphysIndex giphys={giphys} />
            </div>
        )
    }
}

export default GiphysSearch;