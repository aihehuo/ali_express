module AliExpress
  class ExpressQuery
    attr_accessor :number, :type

    def initialize(params)
      raise ArgumentError.new('Param number is required') unless params && params[:number]
      @number = params[:number]
      @type = params[:type] || 'auto'
    end

    def excute
      @response ||= RestClient::Request.execute(
        method: :get,
        url: AliExpress.configuration.query_url,
        headers: { params: {number: @number, type: @type}, Authorization: "APPCODE #{AliExpress.configuration.app_code}" }
      )
    end

    def get_result
      excute
      if @response.code == 200
        JSON.parse(@response.body)
      else
        { "status": @response.code }
      end
    end
  end
end
