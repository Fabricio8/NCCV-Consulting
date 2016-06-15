class PagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def faq
  end
  
  def home
  end
  
  def busqueda

      @q = Renting.ransack(params[:q])
      @parks = @q.result
      
      #Lista de los parques no reservados
      ids = Transactionoffer.all.map(&:transaction_offer_id).to_a
    
     @park =   @parks.where.not(id: ids)
      
      #@hash = Gmaps4rails.build_markers(@park) do |parking_place, marker|
      #  marker.lat parking_place.georeference_x
      #  marker.lng parking_place.georeference_y
      #end
  end
end
