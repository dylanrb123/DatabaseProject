var React = require('react');
var Link = require('react-router').Link;

module.exports = React.createClass({
    render: function() {
        return (
            <div className="nav">
                <ul>
                    <li className="brand">OMDb</li>
                    <li><Link to="movies">Movies</Link></li>
                    <li><Link to="tv-shows">TV Shows</Link></li>
                    <li><Link to="actors">Actors</Link></li>
                </ul>
            </div>
        )
    }
});