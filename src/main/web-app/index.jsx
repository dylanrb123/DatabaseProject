var React = require('react');
var ReactDOM = require('react-dom');
var Router = require('react-router').Router;
var Route = require('react-router').Route;
var Link = require('react-router').Link;
var IndexRedirect = require('react-router').IndexRedirect;
var hashHistory = require('react-router').hashHistory;

var MovieBox = require('./MovieBox');
var TvShowBox = require('./TvShowBox');
var ActorBox = require('./ActorBox');
var Navbar = require('./Navbar');
var Movie = require('./Movie');
var Show = require('./Show');

var TvShowBoxWrapper = React.createClass({
    render: function() {
        return (
            <div>
                <TvShowBox url="http://localhost:4567/api/shows" />
            </div>
        )

    }
});

var ActorBoxWrapper = React.createClass({
    render: function() {
        return (
            <div></div>
        )

    }
});
var blah;
var MovieBoxWrapper = React.createClass({
    render: function() {
        return (
            <div>
                <MovieBox url="http://localhost:4567/api/movies"/>
            </div>
        )
    }
});

var MovieWrapper = React.createClass({
    getInfoFromServer: function() {
        var url = "http://localhost:4567/api/movies/" + this.props.params.movieId;
        $.ajax({
            url: url,
            dataType: 'json',
            cache: false,
            success: function(data) {
                var videoId = data.trailerUrl.split('v=')[1];
                var ampersandPos = videoId.indexOf('&');
                if(ampersandPos != -1) {
                    videoId = videoId.substring(0, ampersandPos);
                }
                this.setState({movie: data, videoId: videoId});
            }.bind(this),
            error: function(xhr, status, err) {
                console.error(url, status, err.toString())
            }.bind(this)
        })
    },
    componentDidMount: function() {
        this.getInfoFromServer();
    },
    getInitialState: function() {
        return {movie: {}, videoId: '', releaseDate: {}, genres: [], runtime: {}};
    },
    render: function() {
        return (
            <div>
                <Movie movie={this.state.movie} videoId={this.state.videoId} />
            </div>
        )
    }
});

var ShowWrapper = React.createClass({
    componentDidMount: function() {
        var url = "http://localhost:4567/api/shows/" + this.props.params.showId;
        $.ajax({
            url: url,
            dataType: 'json',
            cache: false,
            success: function(data) {
                this.setState({show: data});
            }.bind(this),
            error: function(xhr, status, err) {
                console.error(url, status, err.toString())
            }.bind(this)
        })
    },
    getInitialState: function() {
        return {show: {}}
    },
    render: function() {
        return (
            <div>
                <Show show={this.state.show} />
            </div>
        )
    }
});

var Index = React.createClass({
    render: function() {
        return (
            <div>
                <Navbar />
                {this.props.children}
            </div>
        )
    }
});

ReactDOM.render(
    <Router history={hashHistory}>
        <Route path="/" component={Index}>
            <IndexRedirect to="/movies" />
            <Route path="movies" component={MovieBoxWrapper} />
            <Route path="/movies/:movieId" component={MovieWrapper}/>
            <Route path="shows" component={TvShowBoxWrapper} />
            <Route path="/shows/:showId" component={ShowWrapper} />
            <Route path="actors" component={ActorBoxWrapper} />
        </Route>
    </Router>,
    document.getElementById("content")
);