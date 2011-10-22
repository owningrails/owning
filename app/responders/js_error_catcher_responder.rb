module JsErrorCatcherResponder
  def to_js
    if resource.errors.any?
      messages = resource.errors.full_messages.to_sentence
      render :js => %{alert("#{messages}");}
    else
      super
    end
  end
end