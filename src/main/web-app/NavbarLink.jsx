var React = require('react');
var Link = require('react-router').Link;

module.exports = React.createClass({
    getDefualtProps: function() {
        return {isSelected: false}
    },
    render: function() {
        var liStyle = {
            backgroundColor: "#444"
        };
        if(this.props.isSelected) {
            liStyle.backgroundColor = "#005f5f"
        }
        return (
            <li style={liStyle}>
                <Link to={this.props.linkTo} onClick={this.props.onClick}>{this.props.text}</Link>
            </li>
        )
    }
});