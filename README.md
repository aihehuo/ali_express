# AliExpress

阿里全国快递查询接口ruby封装，提供包括申通、顺丰、圆通、韵达、中通、汇通、EMS、天天、国通、德邦、宅急送等几百家快递物流公司单号查询接口。与官网实时同步更新。同时可以自动识别快递公司。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ali_express'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ali_express

## Usage

```ruby
# Configuration
AliExpress.configure do |config|
  config.app_code = '123456'
end

# Query
# type is optional here
AliExpress::ExpressQuery.new({ number: 'YOUR DELIVER NUMBER', type: 'COMPANY TYPE CODE' }).get_result
```
更多信息请参考 [官方文档](https://market.aliyun.com/products/57126001/cmapi011120.html?spm=5176.2020520132.101.45.4xKLql#sku=yuncode512000008)
## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
