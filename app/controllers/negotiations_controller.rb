class NegotiationsController < InheritedResources::Base
  # This will execute :set_negotiation before the methods show, edit, update and destroy
  # This will get the id inside an URL (I think)
  before_action :set_negotiation, only: [:show, :edit, :update, :destroy]

  def index
  	@negotiation = Negotiation.all
  end
  
  def new
  	@negotiation = Negotiation.new
  end

  def create
  	@negotiation = Negotiation.new(negotiation_params)

  	respond_to do |format|
      if @negotiation.save
      	# estava redirect_to @negotiation
        format.html { redirect_to root_path, notice: 'Mensagem Enviada. Em breve um de nossos negociadores irá te contatar.' }
        format.json { render :show, status: :created, location: @negotiation }
      else
        format.html { render :new }
        format.json { render json: @negotiation.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def show
  	@negotiation = Negotiation.find(negotiation_params)
  end

  def update
#  	respond_to do |format|
#      if @negotiation.update(params[:id])
#        format.html { redirect_to @negotiation, notice: 'negotiation was successfully updated.' }
#        format.json { render :show, status: :ok, location: @negotiation }
#      else
#        format.html { render :edit }
#        format.json { render json: @negotiation.errors, status: :unprocessable_entity }
#      end
#    end
  end

  def destroy
 # 	@negotiation.destroy
 #    respond_to do |format|
 #     format.html { redirect_to negotiations_url, notice: 'negotiation was successfully destroyed.' }
 #     format.json { head :no_content }
 #   end
  end


  private

  	# Use callbacks to share common setup or constraints between actions.
  	def set_negotiation
  		@negotiation = negotiation.find(params[:id])
  	end

  	# Never trust parameters from the scary internet, only allow the white list through.
    def negotiation_params
      params.require(:negotiation).permit(:name, :email, :DDD, :celular, :subject, :description)
    end

end