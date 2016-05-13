var React = require('react');
var Link = require('react-router').Link;
var NavbarLink = require('./NavbarLink');

module.exports = React.createClass({
    onLinkClick: function(idx) {
        this.setState({selectedItem: idx});
    },
    getInitialState: function() {
        return {selectedItem: null}
    },
    render: function() {
        var items = [
            {
                text: 'Movies',
                linkTo: 'movies'
            },
            {
                text: 'TV Shows',
                linkTo: 'shows'
            }
        ];
        var temp = this;
        var links = items.map(function(item, idx) {
            var isSelected = temp.state.selectedItem === idx;
            return <NavbarLink
                key={item.text}
                text={item.text}
                linkTo={item.linkTo}
                onClick={temp.onLinkClick.bind(temp, idx)}
                isSelected={isSelected}
            />
        });
        return (
            <div className="nav">
                <ul>
                    <li className="brand">OMDb</li>
                    {links}
                </ul>
            </div>
        )
    }
});