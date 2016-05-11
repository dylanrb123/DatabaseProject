var React = require('react');
var YouTube = require('react-youtube').default;
var ReviewBox = require('./ReviewBox');

module.exports = React.createClass({
    render: function() {
        var videoOpts = {
            width: '100%',
            minHeight: '360px'
        };

        var posterStyles = {
            // height: '350px',
            width: '100%',
            minHeight: '360px',
            verticalAlign: 'top',
            paddingRight: '10px'
        };

        var ratingString = '';
        if(this.props.movie.rating) {
            ratingString = this.props.movie.rating.replace(/_/, '-')
        }

        var genresString = '';
        if(this.props.movie.genres) {
            genresString = this.props.movie.genres.join(", ")
        }

        var dateString = '';
        if(this.props.movie.releaseDate) {
            var date = new Date(this.props.movie.releaseDate.iMillis);
            dateString = date.toDateString()
        }
        var runtimeString = '';
        if(this.props.movie.runtime) {
            var runtimeMs = this.props.movie.runtime.iMillis;
            var hours =  parseInt((runtimeMs/(1000*60*60))%24);
            var minutes = parseInt((runtimeMs/(1000*60))%60);
            runtimeString = hours + 'h ' + minutes + 'min'
        }

        if(this.props.movie.runtime) {
        return (
            <div className="movie container">
                <h1 className="movieTitle">
                    {this.props.movie.movieName}
                </h1>
                <h4 style={{color: '#777'}}>{ratingString} | {runtimeString} | {genresString} | {dateString}</h4>
                <p style={{fontSize: '20px'}}>{this.props.movie.summary}</p>
                <div className="row">
                    <div className="col-md-3">
                        <img src={this.props.movie.posterUrl} style={posterStyles}/>
                    </div>
                    <div className="col-md-9">
                        <YouTube videoId={this.props.videoId} opts={videoOpts} />
                    </div>
                </div>
                <div className="row">
                    <ReviewBox url={"http://localhost:4567/api/movies/reviews/" + this.props.movie.movieID} />
                </div>
            </div>
        );
        } else {
            return <div>No data</div>
        }
    }
});
