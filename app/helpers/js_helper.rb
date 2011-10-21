module JsHelper
  def catch_errors_on(object, &block)
    if object.errors.any?
      error_message = object.errors.full_messages.to_sentence
      output = ActiveSupport::SafeBuffer.new
      output.safe_concat(%Q{alert("#{j error_message}");})
    else
      capture(&block)
    end
  end
  
  # def catch_errors_on(object, &block)
  #   if object.errors.any?
  #     error_message = object.errors.full_messages.to_sentence
  #     raw %Q{alert("#{j error_message}");}
  #   else
  #     capture(&block)
  #   end
  # end
end
