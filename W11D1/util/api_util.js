export const fetchSearchGiphys = (searchTerm) => {
    return $.ajax({
        method: 'GET',
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=wnqLGRP8D62eKo3gbwliFalsjbS3ggLZ&limit=2`
    })
};

// export default fetchSearchGiphys;