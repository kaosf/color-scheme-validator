class ColorSchemaValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /^#(\h{6}|\h{3})$/
      record.errors.add(attribute, options[:message] || :invalid)
    end
  end
end
