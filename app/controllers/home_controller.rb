class HomeController < ApplicationController
  require 'rest-client'


def index
end

def fetch_logs
    logs = RestClient.get 'https://iomhlkcfs4.execute-api.us-east-1.amazonaws.com/default/rails_app'
    logs = JSON.parse(logs)
    render json: {data: logs}
end

end
