class CapitalizedValidator < ActiveModel::EachValidator
  ### Exercise: validate that an attribute starts with a capital letter.
  
  def validate_each(record, attribute, value)
    unless value =~ /\A[A-Z]/
      record.errors.add attribute, "must start with a capital letter"
    end
  end
end