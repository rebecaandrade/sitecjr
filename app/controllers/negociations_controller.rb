class NegociationsController < InheritedResources::Base

  private

    def negociation_params
      params.require(:negociation).permit(:name, :email, :DDD, :celular, :subject, :description)
    end
end

