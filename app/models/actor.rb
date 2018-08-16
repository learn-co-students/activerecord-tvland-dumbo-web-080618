require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name+" "+self.last_name
  end

  def list_roles
    self.characters.map{|character| 
      show = Show.find_by(id: character.actor_id)
      character.name+" - "+show.name}
  end

end