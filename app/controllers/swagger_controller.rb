class SwaggerController < ApplicationController
  def show
    redirect_to '/api-docs'
  end
end
