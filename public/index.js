/* global axios */

console.log("hello from js");

axios.get("http://localhost:3000/actors").then(function (response) {
  var actors = response.data;
  console.log(actors);
});
