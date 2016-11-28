require "spec_helper"
require "rack/test"

describe "DbAppTest" do
  include Rack::Test::Methods

  def app
    DbApp
  end

  it "stores params" do
    get "/set?key=value"
    p last_response
    # expect(last_response)
    get "/get?key=key"
    expect(last_response.body).to include_json(key: "value")
  end

end
