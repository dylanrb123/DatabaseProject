var React = require('react');
var StarRatingComponent = require('react-star-rating-component');

module.exports = React.createClass({
    render: function() {
        return (
            <div className="review">
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
                <h4 className="reviewTitle">{this.props.title}</h4>
                <h5>By: {this.props.user}</h5>
                <h5>Date: {this.props.date}</h5>
                <span>{this.props.children}</span>
            </div>
        )
    }
});