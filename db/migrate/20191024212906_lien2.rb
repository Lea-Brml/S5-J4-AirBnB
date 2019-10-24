class Lien2 < ActiveRecord::Migration[5.2]
  def change                #lien entre promenade et dog et promenade dogsitter

    add_reference :strolls, :dog, foreign_key: true
    add_reference :strolls, :dogsitter, foreign_key: true 

  end
end
