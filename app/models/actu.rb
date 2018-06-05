class Actu < ApplicationRecord

  validates :title,uniqueness: {message: "existe déja !"},presence: {message: "est vide"}
  validates :content, presence: {message: "est vide"}, uniqueness: {message: "existe déja !"}
  validates :pwd, presence: {message: "est vide"}

end