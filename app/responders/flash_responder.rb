module FlashResponder
  def to_html
    if post? && !has_errors?
      controller.flash[:success] = controller.controller_name.humanize + " updated!"
    end
    super
  end
end