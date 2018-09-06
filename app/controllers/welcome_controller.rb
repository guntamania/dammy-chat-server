class WelcomeController < ApplicationController
  before_action :sign_in_required, only: [:example]
  def example
    logger.debug("aaa")
  end
end
