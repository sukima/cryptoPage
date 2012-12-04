require = window.require
$ = jQuery

describe "CryptoPage", ->
  CryptoPage = require("CryptoPage")

  it 'should define a jQuery plugin', ->
    expect( $("body").decrypt ).toBeDefined()
