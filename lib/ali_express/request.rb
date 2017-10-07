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
  end
end
