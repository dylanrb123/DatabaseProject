'use-strict'

var React = require("react");
var MovieList = require("./MovieList");

module.exports = React.createClass({
    loadInfoFromServer: function() {
        $.ajax({
            url: this.props.url,
            dataType: 'json',
            cache: false,
            success: function(data) {
                this.setState({data: data});
            }.bind(this),
            error: function(xhr, status, err) {
                console.error(this.props.url, status, err.toString())
            }.bind(this)
        })
    },
    getInitialState: function() {
        return {data: []};
    },
    
    componentDidMount: function() {
        this.loadInfoFromServer();
        //setInterval(this.loadInfoFromServer, this.props.pollInterval)
    },

    render: function() {
        return (
            <div className="movieBox">
                <MovieList data={this.state.data} />
            </div>
        )
    }

});