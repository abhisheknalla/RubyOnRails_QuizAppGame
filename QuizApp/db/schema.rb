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

ActiveRecord::Schema.define(version: 20170919152737) do

  create_table "boards", force: :cascade do |t|
    t.text "name"
    t.integer "score"
    t.text "quizname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.text "question"
    t.text "option1"
    t.text "option2"
    t.text "option3"
    t.text "option4"
    t.text "correct_ans"
    t.text "subgenre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newstates", force: :cascade do |t|
    t.text "quizname"
    t.integer "questionid"
    t.integer "score"
    t.integer "userid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.text "quizname"
    t.integer "questionid"
    t.integer "marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "username"
  end

  create_table "subgenres", force: :cascade do |t|
    t.text "name"
    t.text "questions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "type"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
