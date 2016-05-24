should = require 'should'
jsClass = require '../index'

check = ( x, t ) ->
  jsClass(x).should.equal t

describe 'jsClass', ->
  it 'String', -> check 'string', 'String'
  it 'Number', -> check 123, 'Number'
  it 'Date', -> check new Date(), 'Date'
  it 'Array', -> check [], 'Array'
  it 'Object', -> check {}, 'Object'
  it 'Function', -> check (->), 'Function'
  it 'Boolean', -> check true, 'Boolean'
  it 'RegExp', -> check /abc/, 'RegExp'
  it 'Map', -> check new Map, 'Map'
  it 'Set', -> check new Set, 'Set'

  describe 'Error', ->
    it 'Error', -> check new Error(), 'Error'
    it 'EvalError', -> check new EvalError(), 'Error'

  describe 'custom class', ->
    class Test
    Test2 = ->

    it 'returns object', ->
      check Test, 'Function'
      check new Test(), 'Object'

    it 'returns objects', ->
      check Test2, 'Function'
      check new Test2(), 'Object'


