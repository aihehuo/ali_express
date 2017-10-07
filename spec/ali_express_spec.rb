require "spec_helper"

RSpec.describe AliExpress do
  it "has a version number" do
    expect(AliExpress::VERSION).not_to be nil
  end

  it "has app_code Configuration" do
    AliExpress.configure do |config|
      config.app_code = '123456'
    end
    expect(AliExpress.configuration.app_code).to eq('123456')
  end

  it 'has default query_url Configuration' do
    expect(AliExpress.configuration.query_url).to eq('http://jisukdcx.market.alicloudapi.com/express/query')
  end
end
