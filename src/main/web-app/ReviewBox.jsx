var React = require('react');
var ReviewList = require('./ReviewList');
var ReviewForm = require('./ReviewForm');

module.exports = React.createClass({
    loadReviewsFromServer: function() {
        $.ajax({
            url: this.props.url,
            dataType: 'json',
            cache: false,
            success: function(data) {
                this.setState({reviews: data})
            }.bind(this),
            error: function(xhr, status, err) {
                console.error(this.props.url, status, err.toString())
            }.bind(this)
        });
    },
    handleReviewSubmit: function(review) {
        var reviews = this.state.reviews;
        review.id = Date.now();
        var newReviews = reviews.concat([review]);
        this.setState({reviews: newReviews});
        $.ajax({
            url: this.props.url,
            dataType: 'json',
            type: 'POST',
            data: review,
            success: function(data) {
                this.setState({reviews: data})
            }.bind(this),
            error: function(xhr, status, err) {
                this.setState({reviews: reviews});
                console.error(this.props.url, status, err.toString());
            }.bind(this)
        })
    },
    getInitialState: function() {
        return {reviews: []};
    },
    componentDidMount: function() {
        this.loadReviewsFromServer();
        // setInterval(this.loadReviewsFromServer, 1000)
    },
    render: function() {
        return (
            <div className="reviewBox container">
                <h2>Reviews</h2>
                <ReviewList reviews={this.state.reviews} />
                <ReviewForm onReviewSubmit={this.handleReviewSubmit} />
            </div>
        )
    }
});