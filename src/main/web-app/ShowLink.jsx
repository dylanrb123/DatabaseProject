var React = require('react');
var Link = require('react-router').Link;

module.exports = React.createClass({
    render: function () {
        return (
            <div className="showPoster">
                <div className="showInfoOverlay">
                    <h2 style={{fontWeight: 'bold', color: '#aaa'}}>{this.props.show.showName}</h2>
                    <p style={{color: '#425955'}}>{this.props.show.summary.substr(0, 400)}</p>
                    <Link to={'/shows/' + this.props.show.showID} style={{display: 'block'}} className="btn btn-danger detailsButton">Show Details</Link>
                </div>
                <img src={this.props.show.posterUrl} />
            </div>
        )
    }
});
