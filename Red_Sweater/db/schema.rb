ActiveRecord::Schema.define(version: 20160909154955) do
  enable_extension "plpgsql"

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.text     "bio"
    t.string   "dream"
    t.boolean  "sponsored"
    t.integer  "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

end
