class ReservationsController < ApplicationController
  
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    if @reservation.save
      flash[:notice] = "予約に成功しました"
      redirect_to reservation_path(@reservation)
    else 
      render :new
    end
  end

  def index
  end

  def show
    @reservation = Reservation.find(params[:id])
  end
  
  def edit
    @reservation = Reservation.find(params[:id])
    if @reservation.user == current_user
      render :edit
    else
      redirect_to reservations_path
    end
  end
  
  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      flash[:notice] = "予約更新に成功しました"
      redirect_to reservation_path(@reservation)
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to new_reservation_path
  end
  
  private

  def reservation_params
    params.require(:reservation).permit(:reservation_date, :reservation_time, :consultation_count, :tel, :symptoms, :body_parts,
                                        :starting_point, :treatment, :prescription, :side_effects, :other_diseases, :hospital_name,
                                        :pregnancy, :purpose, :request)
  end
  
end

