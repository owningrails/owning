module FlashResponder
  def to_html
    if post? && !has_errors?
      controller.flash[:success] = controller.controller_name.humanize + " created!"
    end
    super
  end
end