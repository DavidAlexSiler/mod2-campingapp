class ReservationsController < ApplicationController

    def index 
        @reservations = Reservation.all 
        
    end

    def show
        @reservation = Reservation.find(params[:id])
    end

    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(reservation_params)
        @reservation.user_id = session[:user_id]
        if @reservation.save
            redirect_to reservation_path(@reservation)
        else
            render :new
        end
    end

    def destroy
        @reservation = Reservation.find(params[:id])
        if @reservation.user == current_user
            @reservation.destroy
        else
            flash[:info] = "You are not allowed to delete other peoples reservations."
        end
        redirect_to reservations_path
    end

    private 

    def reservation_params 
        params.require(:reservation).permit(:user_id, :planet_id, :date_time, :cost)
    end

end
