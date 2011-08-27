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

ActiveRecord::Schema.define(:version => 20110827030213) do

  create_table "atributo_sub_categoria", :force => true do |t|
    t.string   "nome"
    t.integer  "sub_categoria_produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "atributo_sub_categoria", ["sub_categoria_produto_id"], :name => "index_atributo_sub_categoria_on_sub_categoria_produto_id"

  create_table "categoria_produtos", :force => true do |t|
    t.string   "nome"
    t.integer  "classe_produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classe_produtos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lojas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marca_produtos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_categoria_produtos", :force => true do |t|
    t.string   "nome"
    t.integer  "categoria_produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
