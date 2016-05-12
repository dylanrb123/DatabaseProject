var React = require('react');
var ShowLink = require('./ShowLink');

module.exports = React.createClass({
    render: function() {
        var showNodes = this.props.data.map(function(show) {
            return (
                <ShowLink show={show} key={show.showID} />
            )
        });
        return (
            <div className="showList">
                {showNodes}
            </div>
        ) 
    }
});