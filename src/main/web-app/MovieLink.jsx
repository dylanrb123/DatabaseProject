var React = require('react');
var Link = require('react-router').Link;

module.exports = React.createClass({
    render: function() {
        var linkText = '/movies/' + this.props.movie.movieID;
        return (
            <div className="moviePoster">
                <img src={this.props.movie.posterUrl}/>
                <Link to={linkText}>Movie Details</Link>
            </div>
        )     
    }
});