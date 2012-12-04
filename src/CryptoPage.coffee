class CryptoPage

  constructor: (@key) ->

  decrypt: (text) ->
    text.toUpperCase()

window.CryptoPage = CryptoPage
