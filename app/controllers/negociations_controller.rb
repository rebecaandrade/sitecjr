class NegociationsController < InheritedResources::Base

  private
  
    def negociation_params
      params.require(:negociation).permit(:name, :subject, :description)
    end
end

