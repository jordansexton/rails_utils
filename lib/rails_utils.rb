require 'rails_utils/version'

module RubyUtils
  autoload :ValueObject,           'rails_utils/active_model/value_object'
  autoload :EmailAddressValidator, 'rails_utils/active_model/validations/email_address'
  autoload :PhoneNumberValidator,  'rails_utils/active_model/validations/phone_number'
  autoload :URIValidator,          'rails_utils/active_model/validations/uri'
  autoload :ZipCodeValidator,      'rails_utils/active_model/validations/zip_code'
end
