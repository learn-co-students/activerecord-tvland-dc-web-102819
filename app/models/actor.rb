class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  attr_accessor :show_id


  def full_name
  	"#{self.first_name} #{self.last_name}"
  end

  # def characters
  # 	Character.all.select do |role|
  # 		role.actor = self
  # 	end
  # end

  def list_roles
  	self.characters.map do |role|
  		"#{role.name} - #{role.show.name}"
  	end
  end
end