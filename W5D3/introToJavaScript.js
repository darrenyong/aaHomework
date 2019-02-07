// madLib
function madLib(verb, adjective, noun) {
  var capVerb = verb.toUpperCase()
  var capAdjective = adjective.toUpperCase()
  var capNoun = noun.toUpperCase()

  console.log(`we shall ${capVerb} the ${capAdjective} ${capNoun}`);
}

// isSubstring
function isSubstring(searchString, subString) {
  console.log(searchString.includes(subString));
}
