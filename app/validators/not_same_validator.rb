class NotSameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    as = options[:as]
    if value == record.send(as)
      record.errors.add(attribute, "should not be the same as #{as}")
    end
  end
end