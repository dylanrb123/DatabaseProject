
var React = require("react");
var Movie = require("./Movie");

module.exports = React.createClass({
    render: function() {
        var movieNodes = this.props.data.map(function(movie) {
            return (
                <Movie movieName={movie.movieName} rating={movie.rating} key={movie.movieID}>
                    {movie.summary}
                </Movie>
            )
        });
        return (
            <div className="movieList">
                {movieNodes}
            </div>
        );
    }
});
