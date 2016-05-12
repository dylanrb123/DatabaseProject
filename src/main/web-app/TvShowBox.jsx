var React = require('react'); 
var ShowList = require('./ShowList');

module.exports = React.createClass({
    componentDidMount: function() {
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
        return {data: []}
    },
    render: function() {
        return (
            <div className="showBox">
                <ShowList data={this.state.data} />
            </div>
        )
    }
});