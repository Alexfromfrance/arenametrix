# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_11_114753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "num_billet"
    t.integer "num_resa"
    t.date "date_resa"
    t.time "heure_resa"
    t.integer "cle"
    t.string "nom_spectacle"
    t.integer "cle_representation"
    t.string "representation"
    t.date "date_representation"
    t.time "heure_representation"
    t.date "date_fin_representation"
    t.time "heure_fin_representation"
    t.integer "prix"
    t.string "type_produit"
    t.string "filiere"
    t.string "nom"
    t.string "prenom"
    t.string "email"
    t.string "adresse"
    t.integer "postal"
    t.string "pays"
    t.integer "age"
    t.string "sexe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking"
  end

end
