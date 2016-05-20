class MembersController < ApplicationController

	before_action :set_member, only: [:show, :edit]

	def index
		@member = Member.all
	end

	def show
		@member = Member.find(set_member)
	end

  def new
  	@member = Member.new
  end

  def create
  	@member = Member.new(member_params)

  	respond_to do |format|
      if @member.save
        format.html { render :members_path, notice: 'Mensagem Enviada. Em breve um de nossos negociadores irá te contatar.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  private

  	def set_member
  		@member = Member.find(params[:id])
  	end

    def member_params
      params.require(:member).permit(:name, :email, :bio, :avatar)
    end

end
