var React = require('react');
var Review = require('./Review');

module.exports = React.createClass({
    render: function() {
        var reviewNodes = this.props.reviews.map(function(review) {
            if(!review.date) return;
            return (
                    <Review user={review.userName} key={review.reviewId} title={review.title} stars={review.starRating} date={review.date.iMillis}>
                        {review.body}
                    </Review>
                )
        });
        return (
            <div className="reviewList">
                {reviewNodes}
            </div>
        )

    }
});