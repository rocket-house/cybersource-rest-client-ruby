=begin
#OAuth2 API

#OAuth2 Token Service (OAuth2)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::UnauthorizedClientError
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UnauthorizedClientError' do
  before do
    # run before each test
    @instance = CyberSource::UnauthorizedClientError.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UnauthorizedClientError' do
    it 'should create an instance of UnauthorizedClientError' do
      expect(@instance).to be_instance_of(CyberSource::UnauthorizedClientError)
    end
  end
  describe 'test attribute "error"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "error_description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
