# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_221_027_091_422) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'drinks', force: :cascade do |t|
    t.string 'name'
    t.text 'comment'
    t.time 'time'
    t.datetime 'date'
    t.bigint 'symptom_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['symptom_id'], name: 'index_drinks_on_symptom_id'
  end

  create_table 'foods', force: :cascade do |t|
    t.string 'name'
    t.text 'comment'
    t.time 'time'
    t.datetime 'date'
    t.bigint 'symptom_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['symptom_id'], name: 'index_foods_on_symptom_id'
  end

  create_table 'medications', force: :cascade do |t|
    t.string 'name'
    t.text 'comment'
    t.time 'time'
    t.datetime 'date'
    t.bigint 'symptom_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['symptom_id'], name: 'index_medications_on_symptom_id'
  end

  create_table 'moods', force: :cascade do |t|
    t.string 'name'
    t.text 'comment'
    t.time 'time'
    t.datetime 'date'
    t.bigint 'symptom_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['symptom_id'], name: 'index_moods_on_symptom_id'
  end

  create_table 'symptoms', force: :cascade do |t|
    t.string 'name'
    t.integer 'intensity', default: 0
    t.time 'time'
    t.datetime 'date'
    t.text 'comment'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_symptoms_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'full_name'
    t.integer 'age'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'drinks', 'symptoms'
  add_foreign_key 'foods', 'symptoms'
  add_foreign_key 'medications', 'symptoms'
  add_foreign_key 'moods', 'symptoms'
  add_foreign_key 'symptoms', 'users'
end
