var React = require('react');
var YouTube = require('react-youtube').default;
var ReviewBox = require('./ReviewBox');
var JsonTable = require('react-json-table');

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
            if(this.props.movie.persons) {
                var actorTableRows = this.props.movie.persons.map(function (person) {
                    var personRow = {};
                    personRow.Name = person.name;
                    personRow['Birth Date'] = new Date(person.DOB.iMillis).toDateString();
                    personRow.Biography = person.biography;
                    personRow.Role = person.role;
                    return personRow;
                });
                console.log(actorTableRows);
            }
            return (
                <div className="movie container" style={{paddingTop: '30px'}}>
                    <div className="row">
                        <div className="col-md-3">
                            <img src={this.props.movie.posterUrl} style={posterStyles}/>
                        </div>

                        <div className="col-md-9">
                            <h1 className="movieTitle" style={{marginTop: '0px'}}>
                                {this.props.movie.movieName}
                            </h1>
                            <h4 style={{color: '#777'}}>{ratingString} | {runtimeString} | {genresString} | {dateString}</h4>
                            <p style={{fontSize: '20px'}}>{this.props.movie.summary}</p>
                        </div>
                    </div>
                    <div className="row" style={{paddingTop: '30px'}}>
                        <div className="col-md-12">
                            <YouTube videoId={this.props.videoId} opts={videoOpts} />
                        </div>
                    </div>
                    <div className="row">
                        <JsonTable className="table" rows={actorTableRows} />
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
