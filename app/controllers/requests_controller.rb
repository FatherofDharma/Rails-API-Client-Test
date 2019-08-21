class RequestsController < ApplicationController
  def index
    response = RestClient::Request.execute(
    method: :get,
    url: 'localhost:3000/destinations',
    headers: {}
    )

    @destinations = JSON.parse(response)

  end

  def create
    RestClient.post 'localhost:3000/destinations', {city: 'Moonspawn', country: 'Universe'}
    redirect_to requests_path
  end



end
