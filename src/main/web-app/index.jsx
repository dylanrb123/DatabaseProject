var React = require('react');
var ReactDOM = require('react-dom');
var Router = require('react-router').Router;
var Route = require('react-router').Route;
var Link = require('react-router').Link;
var IndexRedirect = require('react-router').IndexRedirect;
var hashHistory = require('react-router').hashHistory;

var MovieBox = require('./MovieBox');
var TvShowBox = require('./TvShowBox');
var ActorShowBox = require('./ActorBox');
var Navbar = require('./Navbar');
var Movie = require('./Movie');

var TvShowBoxWrapper = React.createClass({
    render: function() {
        return (
            <div></div>
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
        return {movie: [], videoId: ''};
    },
    render: function() {
        console.log(this.state);
        return (
            <div>
                <Movie movie={this.state.movie} videoId={this.state.videoId} />
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
            <Route path="tv-shows" component={TvShowBoxWrapper} />
            <Route path="actors" component={ActorBoxWrapper} />
        </Route>
    </Router>,
    document.getElementById("content")
);