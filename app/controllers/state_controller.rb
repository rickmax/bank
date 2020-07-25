class StateController < ApplicationController
  
  def get_cities
    cities = City.where(state_id: params[:id].to_i)
    @cities = []
    cities.each do |city|
      @cities << {:id => city.id, :name => city.name}
    end
    render :json => {:cities => @cities.compact}.as_json
  end
end
