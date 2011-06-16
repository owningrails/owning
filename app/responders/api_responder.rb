module ApiResponder
  def to_format
    if get? && resource.respond_to?(:limit)
      resource.replace resource.limit(3) # == @tickets
    end
    super
  end
end