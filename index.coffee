jsClass = ( obj ) ->
  Object::toString.call(obj).match(/^\[object\s(.*)]$/)[ 1 ]

module.exports = jsClass
