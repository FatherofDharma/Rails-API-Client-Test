class RequestsController < ApplicationController
  def index
    response = RestClient::Request.execute(
    method: :get,
    url: 'localhost:3000/v1/destinations',
    headers: {authorization: params[:token]}
    )

    @destinations = JSON.parse(response)

  end

  def create
    RestClient.post 'localhost:3000/v1/destinations', {city: 'Moonspawn', country: 'Universe'}
    redirect_to requests_path
  end


end
