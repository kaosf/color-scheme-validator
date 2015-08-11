class ColorSchemaValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A#(\h{6}|\h{3})\z/
      record.errors.add(attribute, options[:message] || :invalid)
    end
  end
end
