class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(args_hash)
    self.network = Network.new(:call_letters => args_hash[:call_letters])
  end
end