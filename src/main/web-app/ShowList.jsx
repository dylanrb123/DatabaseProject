var React = require('react');
var ShowLink = require('./ShowLink');
var SearchInput = require('react-search-input').default;
var createFilter = require('react-search-input').createFilter;


module.exports = React.createClass({
    searchUpdated: function(term) {
        this.setState({searchTerm: term})
    },
    getInitialState: function() {
        return {searchTerm: ''}
    },
    render: function() {
        var filterKeys = ['showName', 'ratingDash', 'genreString', 'episodeString'];



        var filteredShows = this.props.data.filter(createFilter(this.state.searchTerm, filterKeys));

        var searchShows = filteredShows.map(function(show) {
            var genreString = show.genres.join(' ');
            var ratingDash = show.rating.replace(/_/, '-');
            show.genreString = genreString;
            show.ratingDash = ratingDash;
            var episodeNames = show.seasons.map(function(season) {
                return episodeStrings = season.episodes.map(function(episode) {
                    return episode.episodeName;
                }).join(" ");

            });
            show.episodeString = episodeNames.join(' ');
            return show;
        });

        var showNodes = searchShows.map(function(show) {
            return (
                <ShowLink show={show} key={show.showID} />
            )
        });

        return (
            <div className="showList">
                <SearchInput className="search-input" onChange={this.searchUpdated} />
                {showNodes}
            </div>
        ) 
    }
});