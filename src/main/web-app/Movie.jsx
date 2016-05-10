var React = require('react');
var YouTube = require('react-youtube').default;
module.exports = React.createClass({
    render: function() {

        return (
            <div className="movie">
                <h2 className="movieTitle">
                    {this.props.movie.movieName}
                </h2>
                <div>
                </div>
                <YouTube videoId={this.props.videoId} />
            </div>
        );
    }
});
