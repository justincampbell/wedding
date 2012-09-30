class Party
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def members
    Guest.where party_name: name
  end
end
