var React = require('react');
var ReviewBox = require('./ReviewBox');

module.exports = React.createClass({
    render: function() {
        var genresString = '';

        var posterStyles = {
            // height: '350px',
            width: '100%',
            minHeight: '360px',
            verticalAlign: 'top',
            paddingRight: '10px'
        };

        if(this.props.show.genres) {
            genresString = this.props.show.genres.join(", ")
        }
        if(this.props.show.seasons) {
            return (
                <div className="tvShow container">
                    <h1 className="showTitle">{this.props.show.showName}</h1>
                    <h4 style={{color: '#777'}}>
                        {this.props.show.rating} | {genresString} | {this.props.show.startYear} - {this.props.show.endYear}
                    </h4>
                    <p style={{fontSize: '20px'}}>
                        {this.props.show.summary}
                    </p>
                    <div className="row">
                        <div className="col-md-3">
                            <img src={this.props.show.posterUrl} style={posterStyles} />
                        </div>
                        <div className="col-md-9">
                        </div>
                    </div>
                    <div className="row">
                        <ReviewBox url={"http://localhost:4567/api/shows/reviews/" + this.props.show.showID}/>
                    </div>
                </div>
            )
        } else {
            return <div>No data</div>
        }
    }
});