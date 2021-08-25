class Student < ApplicationRecord

  before_save :i_am_before_save

  after_save :i_am_after_save

  validates :first_name,:last_name,:email,:graduation, presence: true

  VALID_EMAIL_REGEX= /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

  validates :email ,uniqueness:{case_sensetive:false},
            format:{with:VALID_EMAIL_REGEX,multiline:true}


  validates :first_name,:last_name ,length: { minimum: 4, maximum: 100 }
    # validates :email,
    #           format: { with: /^(.+)@(.+)$/, message: "Email invalid"  },
    #           uniqueness: { case_sensitive: false },
    #           length: { minimum: 4, maximum: 254 }



  def i_am_before_save

    p "=====I am before save ================="
    p self
  end

  def i_am_after_save

    p "=====I am after save ================="

    self.last_name = "#{self.last_name}- shivait"
    p self.save
    p self

  end



  def self.test_class_method



  end

  def test_instance_method



  end





end
