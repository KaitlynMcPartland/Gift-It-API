class GiftsController < ApplicationController
  def index
    @gifts = Gift.where(user_id: 1)

    render json: @gifts
  end

  def create
    @user = User.find(params[:user_id])
    @gift = Gift.new(
      user_id: params[:user_id],
      amount: params[:amount].to_i,
      charity: params[:charity],
      team: params[:team],
      icon: params[:icon]
    )

    if @gift.save
      render json: @user
    else
      render json: @user
    end
  end

  def show
    @gift = Gift.find(params[:id])

    render json: @gift
  end

  def totals
    @gift_totals = get_totals(Gift.where(team: '49ers'), Gift.where(team: 'Packers'))

    render json: @gift_totals
  end

  def get_totals(team1, team2)
    totals = []

    totals.push(team1.inject(0) { |total, element| total + element.amount })
    totals.push(team2.inject(0) { |total, element| total + element.amount })

    return totals
  end
end
