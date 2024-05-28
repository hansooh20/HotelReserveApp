class Public::MembersController < ApplicationController
  def mypage
    member = current_member
    render json: member, status: :ok
  end

  def edit
    member = current_member
    render json: member, status: :ok
  end

  def update
    member = current_member
    member.update(member_params)

    render json: member, status: :ok
  end

  private

  def member_params
    params.require(:member).permit%i(email, name, phone_number)
  end
end
