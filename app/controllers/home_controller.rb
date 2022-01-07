# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    render json: { msg: 'Please use the frontend application :)' }, status: 200
  end
end
