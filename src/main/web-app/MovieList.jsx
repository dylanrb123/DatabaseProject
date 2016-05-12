var React = require("react");
var MovieLink = require('./MovieLink');

module.exports = React.createClass({
    render: function() {
        var movieNodes = this.props.data.map(function(movie) {
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
                {movieNodes}
            </div>
        );
    }
});
