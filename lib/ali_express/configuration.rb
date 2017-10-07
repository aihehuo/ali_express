module AliExpress
  class Configuration
    attr_accessor :app_code, :query_url

    def initialize
      @query_url = 'http://jisukdcx.market.alicloudapi.com/express/query'
    end
  end
end
