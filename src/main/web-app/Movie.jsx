var React = require('react');
var YouTube = require('react-youtube').default;


module.exports = React.createClass({
    render: function() {
        const opts = {
            height: '390',
            width: '640',
            playerVars: {
                autoplay: 1
            }
        };
        return (
            <div className="movie">
                <h2 className="movieTitle">
                    {this.props.movieName}
                </h2>
                <span>
                    {this.props.children.toString()}
                </span>
                <YouTube videoId="eOrNdBpGMv8" opts={opts} onReady={this._onReady} />
            </div>
        );
    },
    _onReady: function(e) {
        e.target.pauseVideo();
    }
});
