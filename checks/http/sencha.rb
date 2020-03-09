module Intrigue
  module Ident
  module Check
  class Sencha < Intrigue::Ident::Check::Base
  
    def generate_checks(url)
      [
        {
          :type => "fingerprint",
          :category => "application",
          :tags => ["CMS"],
          :vendor => "Sencha",
          :product => "Cmd",
          :references => ["https://www.sencha.com/products/sencha-cmd/"],
          :version => nil,
          :match_type => :content_body,
          :match_content => /<!-- The line below must be kept intact for Sencha Cmd to build your application -->/i,
          :match_details => "unique comment",
          :hide => false,
          :paths => ["#{url}"],
          :inference => false  
        }
      ]
    end
  
  
  end
  end
  end
  end
  