require 'yaml'
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
    end
  end
end
