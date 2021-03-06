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

ActiveRecord::Schema.define(version: 2019_06_18_185902) do

  create_table "apresentacaos", force: :cascade do |t|
    t.datetime "horario"
    t.integer "ingressos_total"
    t.integer "disponiveis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "descricao"
    t.integer "evento_id"
    t.index ["evento_id"], name: "index_apresentacaos_on_evento_id"
  end

  create_table "cidades", force: :cascade do |t|
    t.string "cidade_nome"
    t.integer "estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id"
  end

  create_table "classes_eventos", force: :cascade do |t|
    t.string "classe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credit_cards", force: :cascade do |t|
    t.integer "number"
    t.integer "security"
    t.date "expiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_credit_cards_on_user_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "name"
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string "title"
    t.datetime "date_begin"
    t.datetime "date_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.text "descricao"
    t.integer "faixa_etarium_id"
    t.integer "classes_evento_id"
    t.index ["classes_evento_id"], name: "index_eventos_on_classes_evento_id"
    t.index ["faixa_etarium_id"], name: "index_eventos_on_faixa_etarium_id"
    t.index ["user_id"], name: "index_eventos_on_user_id"
  end

  create_table "faixa_etaria", force: :cascade do |t|
    t.string "faixa_etaria"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingressos", force: :cascade do |t|
    t.integer "apresentacao_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apresentacao_id"], name: "index_ingressos_on_apresentacao_id"
    t.index ["user_id"], name: "index_ingressos_on_user_id"
  end

  create_table "locals", force: :cascade do |t|
    t.string "local"
    t.string "endereco"
    t.integer "cidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_locals_on_cidade_id"
  end

  create_table "salas", force: :cascade do |t|
    t.integer "num"
    t.string "complemento_sala"
    t.integer "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_salas_on_local_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "adm", default: false, null: false
    t.boolean "pf", default: true
    t.string "cpf"
    t.string "cnpj"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
