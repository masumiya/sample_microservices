class MembersController < ApplicationController
  BASE_API_URL = 'http://kong:8000/api1/members/'.freeze

  def lists
    BASE_API_URL
  end

  def getOne
    BASE_API_URL + URI.encode(params[:id].to_s) + '/'
  end

  def index
    response = Net::HTTP.get_response(URI.parse(lists))
    @members = JSON.parse(response.body)
  end

  def show
    response = Net::HTTP.get_response(URI.parse(getOne))
    @member = JSON.parse(response.body)
  end
end
