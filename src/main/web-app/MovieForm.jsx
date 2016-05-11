var React = require("react");

module.exports = React.createClass({
    getInitialState: function () {
        return {movieName: '', summary: ''};
    },
    handleTitleChange: function(e) {
        this.setState({movieName: e.target.value});
    },
    handleSummaryChange: function(e) {
        this.setState({summary: e.target.value});
    },
    handleSubmit: function(e) {
        e.preventDefault();
        var movieName = this.state.movieName.trim();
        var summary = this.state.summary.trim();
        if (!movieName || !summary) {
            return;
        }
        this.props.onMovieSubmit({movieName: movieName, summary: summary});
        this.setState({movieName: '', summary: ''});
    },
    render: function() {
        return (
            <form className="movieForm" onSubmit={this.handleSubmit}>
                <input type="text" placeholder="Movie title" value={this.state.movieName} onChange={this.handleTitleChange} />
                <textarea placeholder="Movie summary" value={this.state.summary} onChange={this.handleSummaryChange} />
                <input type="submit" value="Post"/>
            </form>
        )
    }
});
