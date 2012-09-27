class Party
  attr_accessor :last_name
  attr_accessor :zip_code

  def initialize(options)
    self.last_name = options[:last_name]
    self.zip_code = options[:zip_code]
  end

  def members
    Guest.where last_name: name, zip_code: zip_code
  end

  def name
    last_name
  end
end
