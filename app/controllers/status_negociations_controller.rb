class StatusNegociationsController < InheritedResources::Base

  private

    def status_negociation_params
      params.require(:status_negociation).permit(:status, :firstNegociator, :secondNegociator, :log, :linkProposta, :descriptionNegociation)
    end
end

