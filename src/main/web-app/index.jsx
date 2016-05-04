var React = require('react');
var ReactDOM = require('react-dom');
var MovieBox = require('./MovieBox');

ReactDOM.render(
    <MovieBox url="http://localhost:4567/api/movies" />,
    document.getElementById("content")
);