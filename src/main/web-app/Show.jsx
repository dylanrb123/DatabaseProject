var React = require('react');
var ReviewBox = require('./ReviewBox');

module.exports = React.createClass({
    render: function() {
        if(this.props.show.seasons) {
            return (
                <div>
                    <h2>{this.props.show.showName}</h2>
                    <ReviewBox url={"http://localhost:4567/api/shows/reviews/" + this.props.show.showID}/>
                </div>
            )
        } else {
            return <div>No data</div>
        }
    }
});