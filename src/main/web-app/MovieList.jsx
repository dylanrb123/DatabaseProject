var React = require("react");
var SearchInput = require('react-search-input').default;
var createFilter = require('react-search-input').createFilter;

var MovieLink = require('./MovieLink');

module.exports = React.createClass({
    searchUpdated: function(term) {
        this.setState({searchTerm: term})
    },
    getInitialState: function() {
        return {searchTerm: ''}
    },
    render: function() {
        var movies = this.props.data;
        movies.sort(function(a, b) {
            if(a.movieName < b.movieName) return -1;
            else if(a.movieName > b.movieName) return 1;
            else return 0;
        });

        var filterKeys = ['movieName', 'genreString', 'ratingDash'];

        var filteredMovies = movies.filter(createFilter(this.state.searchTerm, filterKeys));

        var searchMovies = filteredMovies.map(function(movie) {
            var genreString = movie.genres.join(' ');
            var ratingDash = movie.rating.replace(/_/, '-');
            movie.genreString = genreString;
            movie.ratingDash = ratingDash;
            return movie;
        });

        var movieNodes = searchMovies.map(function(movie) {
            var videoId = movie.trailerUrl.split('v=')[1];
            var ampersandPos = videoId.indexOf('&');
            if(ampersandPos != -1) {
                videoId = videoId.substring(0, ampersandPos);
            }

            return (
                <MovieLink movie={movie} videoId={videoId} key={movie.movieID}/>
            )
        });
        return (
            <div className="movieList">
                <SearchInput className="search-input" onChange={this.searchUpdated} />
                {movieNodes}
            </div>
        );
    }
});
