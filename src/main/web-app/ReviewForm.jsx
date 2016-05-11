var React = require('react');
var StarRatingComponent = require('react-star-rating-component');

module.exports = React.createClass({
    getInitialState: function() {
        return {username: '', body: '', starRating: 0.0, reviewDate: '', title: ''}
    },
    handleUserChange: function(e) {
        this.setState({username: e.target.value})
    },
    handleBodyChange: function(e) {
        this.setState({body: e.target.value})
    },
    handleRatingChange: function(nextValue, prevValue, name) {
        console.log(nextValue);
        console.log(prevValue);
        this.setState({starRating: nextValue})
    },
    handleTitleChange: function(e) {
        this.setState({title: e.target.value})
    },
    handleSubmit: function(e) {
        e.preventDefault();
        var user = this.state.username.trim();
        var body = this.state.body.trim();
        var starRating = this.state.starRating;
        var reviewDate = Date.now();
        var title = this.state.title.trim();
        if(!user || !body || !starRating || !reviewDate || !title) {
            return;
        }
        this.props.onReviewSubmit({
            // properly format review object for server request
            reviewId: Date.now(),
            username: user,
            starRating: starRating,
            date: reviewDate,
            title: title,
            body: body
        });
        this.setState({username: '', body: '', starRating: 0, reviewDate: '', title: ''})
    },
    render: function() {
        return (
            <div>
                <h3>New Review</h3>
                <form className="reviewForm" onSubmit={this.handleSubmit}>
                    <StarRatingComponent 
                        name="reviewRating" 
                        starCount={5} 
                        onStarClick={this.handleRatingChange}
                        renderStarIcon={function() {
                            return <i style={{fontSize: '30px', fontStyle: 'normal'}}>&#9733;</i>
                            }
                        }
                        editing={true}
                        value={this.state.starRating}
                    />
                    <input type="text" placeholder="Review Title" value={this.state.title} onChange={this.handleTitleChange} className="form-control" />
                    <input type="text" placeholder="Username" value={this.state.username} onChange={this.handleUserChange} className="form-control"/>
                    <textarea placeholder="Write a review" value={this.state.body} onChange={this.handleBodyChange} className="form-control"/>
                    <input type="submit" value="Post Review" className="btn btn-danger" />
                </form>
            </div>
        )
    }


});