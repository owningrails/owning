class CapitalizedValidator < ActiveModel::EachValidator
  REGEXP = /\A[A-Z]/
  
  def validate_each(record, attribute, value)
    unless value =~ REGEXP
      record.errors.add attribute, "must start with a capital letter"
    end
  end
end