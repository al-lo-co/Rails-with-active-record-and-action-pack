class Profile < ActiveRecord::Base
  belongs_to :user

  validates :gender, inclusion:['female', 'male']
  validate :notBothNull
  validate :firstNameSue

  def notBothNull
    if first_name.nil? && last_name.nil?
      errors.add(:last_name, "does not allow a Profile with a null first and last name")
    end  
  end

  def firstNameSue
    if (first_name == "Sue") && (gender == "male")
      errors.add(:first_name, "his first name cannot be Sue")
    end
  end

  def self.get_all_profiles min, max
      Profile.where('birth_year between ? and ?', min, max).order(birth_year: :asc)
  end
end
