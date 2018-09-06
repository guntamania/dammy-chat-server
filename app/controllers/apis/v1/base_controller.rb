class Apis::V1::BaseController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
end
