class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :num_billet
      t.integer :num_resa
      t.date :date_resa
      t.time :heure_resa
      t.integer :cle
      t.string :nom_spectacle
      t.integer :cle_representation
      t.string :representation
      t.date :date_representation
      t.time :heure_representation
      t.date :date_fin_representation
      t.time :heure_fin_representation
      t.integer :prix
      t.string :type_produit
      t.string :filiere
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :adresse
      t.integer :postal
      t.string :pays
      t.integer :age
      t.string :sexe

      t.timestamps
    end
  end
end
