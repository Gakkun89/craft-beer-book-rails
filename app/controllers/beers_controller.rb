class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]
end
