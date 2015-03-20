# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150320185406) do

  create_table "dogs", :force => true do |t|
    t.string  "name"
    t.string  "breed"
    t.integer "age"
    t.string  "gender"
    t.string  "colour"
    t.string  "description"
    t.integer "serial_num"
    t.integer "owner_id"
    t.integer "temperament_id"
  end

  create_table "owners", :force => true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "phone_num"
    t.string  "email"
    t.string  "address"
    t.string  "state"
    t.string  "city"
    t.integer "zip"
  end

  create_table "temperaments", :force => true do |t|
    t.string "temperament"
  end

end
