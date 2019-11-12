class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def import
    Booking.import(params[:file])
    redirect_to root_url, notice: "CSV importé"
  end

  def admindata
    memory = []
    hash = {}
    Booking.all.each { |booking| hash[booking.representation].nil? ? hash[booking.representation] = [booking.prix] : hash[booking.representation] << booking.prix }
    @representations = hash.map { |k, v| [k, v.sum.fdiv(v.length)] }

    @bookings = []
    Booking.where.not(age: nil).each do |booking|
      unless memory.include?(booking.nom)
        @bookings << booking
        memory << booking.nom
      end
    end
  end
end
