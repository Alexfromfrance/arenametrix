class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def import
    Booking.import(params[:file])
    redirect_to root_url, notice: "CSV importé"
  end
end
