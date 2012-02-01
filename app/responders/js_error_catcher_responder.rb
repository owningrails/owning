module JsErrorCatcherResponder
  def to_js
    if has_errors?
      error_messages = resource.errors.full_messages.to_sentence
      render :js => %{alert("#{error_messages}");}
    else
      super
    end
  end
end