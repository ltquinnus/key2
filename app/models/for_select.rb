class ForSelect < ActiveRecord::Base
def self.GroupedSelect(facility,code, db_model)
		@forSelect = db_model.all
			.where(facility: facility)
            .where(code: code)
			.order(option_order: :asc)  
	    # @grouped_options = ForSelect.grouped_options(@forSelect)
	    @grouped_options = GroupedOptions.grouped_options(@forSelect)
		
	end

	def self.CollectionForSelect(facility,code, db_model)
		select_collection = db_model.where(facility: Company)
					.where(code: code)
							.order(option_order: :asc)  
	end
end
