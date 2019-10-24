class Lien < ActiveRecord::Migration[5.2]       #migration permettant de créer non clés et de lier les tables grâce à l'id de la city
  def change
    add_reference :strolls, :city, foreign_key: true
    add_reference :dogs, :city, foreign_key: true
    add_reference :dogsitters, :city, foreign_key: true
  end
end
