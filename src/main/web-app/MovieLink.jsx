var React = require('react');
var Link = require('react-router').Link;

module.exports = React.createClass({
    render: function() {
        var linkText = '/movies/' + this.props.movie.movieID;
        return (
            <div className="moviePoster">
                <div className="movieInfoOverlay">
                    <h2 style={{fontWeight: 'bold', color: '#aaa'}}>{this.props.movie.movieName}</h2>
                    {this.props.movie.summary}
                    <Link to={linkText} style={{display: 'block'}} className="btn btn-danger detailsButton">Movie Details</Link>
                </div>
                <img src={this.props.movie.posterUrl}/>
            </div>
        )     
    }
});