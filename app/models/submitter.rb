class Submitter < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
  		 :rememberable, :trackable

  validates_presence_of    :password, :on=>:create
  validates_confirmation_of    :password, :on=>:create
  validates_length_of    :password, :within => Devise.password_length, :allow_blank => true

  validates_presence_of :userid, :on=>:create
  validates_format_of :userid, :with => /\A([0-9a-f]{8})\Z/i, :on => :create #matches 8 digit hex

  validates_format_of :uw_overall_correct_pct, :with => /\A([0-9]{1,2})\Z/i, :on => :create
  validates_format_of :uw_percentile, :with => /\A([0-9]{1,2})\Z/i, :on => :create
  validates_format_of :step1_actual_score_3_digit, :with => /\A([0-9]{2,3})\Z/i, :on => :create

  def self.new_userid

  	@id = SecureRandom.hex(4)

  	#check for duplicate
  	while Submitter.find_by_userid(@id) != nil
  		@id = SecureRandom.hex(4)
  	end

  	return @id

  end


end
