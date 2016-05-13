var React = require('react');
var JsonTable = require('react-json-table');
var ReviewBox = require('./ReviewBox');

module.exports = React.createClass({
    getEpisodes: function(season) {
        var episodes = season.episodes.map(function (episode) {
            return {
                'Episode': episode.episodeName,
                'Air Date': new Date(episode.airDate.iMillis).toDateString(),
                'Plot': episode.description
            }
        });
        console.log(episodes);
        return episodes;
    }
    ,
    render: function() {
        var show = this;
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
                <div className="tvShow container" style={{paddingTop: '30px'}}>
                    <div className="row">
                        <div className="col-md-3">
                            <img src={this.props.show.posterUrl} style={posterStyles} />
                        </div>

                        <div className="col-md-9">
                            <h1 className="showTitle">{this.props.show.showName}</h1>
                            <h4 style={{color: '#777'}}>
                                {this.props.show.rating} | {genresString} | {this.props.show.startYear} - {this.props.show.endYear}
                            </h4>
                            <p style={{fontSize: '20px'}}>
                                {this.props.show.summary}
                            </p>
                        </div>
                    </div>
                    <div className="row">
                        <h3>Episodes</h3>
                        {this.props.show.seasons.map(function(season) {
                            return (
                                <div>
                                    <h4>{'Season ' + season.seasonNumber}</h4>
                                    <JsonTable className="table" rows={show.getEpisodes(season)} />
                                </div>
                            )
                        })}

                        <ReviewBox url={"http://localhost:4567/api/shows/reviews/" + this.props.show.showID}/>
                    </div>
                </div>
            )
        } else {
            return <div>No data</div>
        }
    }
});