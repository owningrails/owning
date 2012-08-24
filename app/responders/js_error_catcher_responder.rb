module JsErrorCatcherResponder
  def to_js
    ### Exercise: catch and display error.
    if has_errors?
      error_message = resource.errors.full_messages.to_sentence
      render :js => %{alert("#{error_message}");}
    else
      super
    end
  end
end