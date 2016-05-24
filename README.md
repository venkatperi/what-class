# what-class
Returns the javascript class of an object

# Installation
Install with npm.

```shell
npm install --save what-class
```

# Examples

```coffeescript
jsClass = require 'what-class'

jsClass 'abc'       # String
jsClass 123         # Number
jsClass []          # Array
jsClass {}          # Object
jsClass (->)        # Function
jsClass true        # Boolean
jsClass new Date()  # Date
jsClass /abc/       # RegExp

```
