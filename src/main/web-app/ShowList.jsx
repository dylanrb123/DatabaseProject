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
        var filterKeys = ['showName'];

        var filteredShows = this.props.data.filter(createFilter(this.state.searchTerm, filterKeys));
        var showNodes = filteredShows.map(function(show) {
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