var React = require('react');
var StarRatingComponent = require('react-star-rating-component');

module.exports = React.createClass({
    render: function() {
        return (
            <div className="review" style={{marginTop: '25px', marginBottom: '25px', padding: '25px', backgroundColor: 'rgba(0,0,0,.6)'}}>
                <StarRatingComponent
                    name="reviewRating"
                    starCount={5}
                    value={this.props.stars}
                    editing={false}
                    renderStarIcon={function() {
                        return <i style={{fontSize: '30px', fontStyle: 'normal'}}>&#9733;</i>
                        }
                    }
                />
                <h3 className="reviewTitle" style={{marginTop: '0px'}}>{this.props.title}</h3>
                <h5 style={{color: '#777'}}>Reviewed by: {this.props.user} | Reviewed on: {new Date(this.props.date).toDateString()}</h5>
                <span className="reviewText" style={{fontSize: '18px'}}>{this.props.children}</span>
            </div>
        )
    }
});