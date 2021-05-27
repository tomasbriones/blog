class ApplicationController < ActionController::Base
    http_basic_authenticate_with name: "tomas", password: "123456", only: :dashboard
end
