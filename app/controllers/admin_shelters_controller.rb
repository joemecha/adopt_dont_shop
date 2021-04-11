class AdminSheltersController < ApplicationController
  def index
    @shelters = Shelter.reverse_abc_order
    @pending = Shelter.has_pending
  end
end
