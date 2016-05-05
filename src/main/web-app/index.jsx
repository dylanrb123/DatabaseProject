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
            <MovieBox url="http://localhost:4567/api/movies" />
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
            <Route path="movies" component={MovieBoxWrapper}>
                <Route path="/movies/:movieID" component={Movie}/>
            </Route>
            <Route path="tv-shows" component={TvShowBoxWrapper} />
            <Route path="actors" component={ActorBoxWrapper} />
        </Route>
    </Router>,
    document.getElementById("content")
);