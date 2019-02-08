// Simple Timeout
const simpleTimeout = () => window.setTimeout( () => alert('HAMMERTIME'), 5000)


// Timeout Plus Closure
const hammerTime = (time) => window.setTimeout( simpleTimeout() )
