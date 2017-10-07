require 'yaml'
require 'json'

if File.exist?('secret.yaml')
  secret = YAML.load_file('secret.yaml')

  RSpec.describe AliExpress::ExpressQuery do
    before do
      AliExpress.configure do |config|
        config.app_code = secret['app_code']
      end
    end

    it "return correct express infomation without type" do
      response = AliExpress::ExpressQuery.new({ number: '50554347608522' }).excute
      expect(response.code).to eq(200)
      expect(JSON.parse(response.body)['msg']).to eq('ok')
    end

    it 'return express check result' do
      result = AliExpress::ExpressQuery.new({ number: '50554347608522' }).get_result
      expect(result['status']).to eq('0')
      expect(result['result']['number']).to eq('50554347608522')
    end
  end
end
