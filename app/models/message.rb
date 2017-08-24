class Message

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :nombre, :email, :mensaje

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 

  validates :nombre, presence: { message: "no puede estar en blanco" }, length: { maximum: 80, message: "no debe exceder los 80 caracteres" }

  validates :email, presence: { message: "no puede estar en blanco" }, format: { with: VALID_EMAIL_REGEX, message: "no parece ser una dirección válida" }

  validates :mensaje, presence: { message: "no puede estar en blanco" }, length: { maximum: 5000, message: "no debe exceder los 5000 caracteres" }

end