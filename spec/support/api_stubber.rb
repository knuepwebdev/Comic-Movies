class ApiStubber
  include WebMock::API

  def initialize(apis)
    @apis = apis
  end

  def apis
    @apis
  end

  def generate_stubs
    @apis.each do |api|
      stub_request(api.method, api.domain).
      to_return(
        status: 200,
        body: api.body
      )             
    end
  end
end