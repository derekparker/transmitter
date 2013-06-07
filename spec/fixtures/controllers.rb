require 'fixtures/fake_rails_app'

class Space < ActiveRecord::Base
  transmittable
end

class TestsController < ActionController::Base
  include Rails.application.routes.url_helpers

  def new
    render text: "new"
  end

  def create
    head :ok
  end

  def space_params
    params.require(:space).permit(:expanding)
  end
end
