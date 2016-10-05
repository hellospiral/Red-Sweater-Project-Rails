require 'etsy'

Etsy.api_key=ENV['ETSY_API_KEYSTRING']
Etsy.api_secret=ENV['ETSY_API_SHARED_SECRET']
Etsy.callback_url='http://localhost:3000'
