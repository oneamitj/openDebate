module ApplicationHelper

	def flash_class(level)
    case level
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :error then "alert alert-error"
        when :alert then "alert alert-error"
    end
end
 
  # def bootstrap_class_for flash_type
  #   case flash_type
  #     when :success
  #       "alert-success"
  #     when :error
  #       "alert-error"
  #     when :alert
  #       "alert-block"
  #     when :notice
  #       "alert-info"
  #     else
  #       flash_type.to_s
  #   end
  # end
 
end
