require 'csv'

class Booking < ApplicationRecord

 def self.import(file)
    Booking.destroy_all
    CSV.foreach(file.path, headers: true, col_sep: ";") do |row|
      data = parse(row.to_h)
      Booking.create(data)
    end
  end

  def self.parse(data)
    {
      num_billet: data["Numero billet"],
      num_resa: data["Reservation"],
      date_resa: data["Date reservation"],
      heure_resa: data["Heure reservation"],
      cle: data["Cle spectacle"],
      nom_spectacle: data["Spectacle"],
      cle_representation: data["Cle representation"],
      representation: data["Representation"],
      date_representation: data["Date representation"],
      heure_representation: data["Heure representation"],
      date_fin_representation: data["Date fin representation"],
      heure_fin_representation: data["Heure fin representation"],
      prix: data["Prix"],
      type_produit: data["Type de produit"],
      filiere: data["Filiere de vente"],
      nom: data["Nom"],
      prenom: data["Prenom"],
      email: data["Email"],
      adresse: data["Adresse"],
      postal: data["Code postal"],
      pays: data["Pays"],
      age: data["Age"],
      sexe: data["Sexe"]
    }
  end
end
