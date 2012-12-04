class CryptoPage

  constructor: (@key) ->

  decrypt: (text) ->
    text.toUpperCase()

module.exports = CryptoPage
