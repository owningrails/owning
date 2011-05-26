module ApiResponder
  def to_xml
    if get? && resource.respond_to?(:limit)
      resource.replace resource.limit(options[:limit] || 3)
    end
    to_format
  end
end