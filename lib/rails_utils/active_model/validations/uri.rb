require 'active_model/validator'
require 'uri'

class UriValidator < ActiveModel::EachValidator
  def validate_each (record, attribute, value)
    valid = begin
      URI.parse(value).kind_of?(URI::HTTP)
    rescue URI::InvalidURIError
      false
    end
    unless valid
      record.errors[attribute] << options[:message] || 'is not a valid URI'
    end
  end
end
