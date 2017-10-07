module AliExpress
  class ExpressQuery
    attr_accessor :number, :type

    def initialize(params)
      raise ArgumentError.new('Param number is required') unless params && params[:number]
      @number = params[:number]
      @type = params[:type] || 'auto'
    end
  end
end
