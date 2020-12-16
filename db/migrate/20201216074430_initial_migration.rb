class InitialMigration < ActiveRecord::Migration[6.1]
  def change
    create_table "comments", force: :cascade do |t|
      t.integer "post_id"
      t.text "content"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "user_id"
    end

    create_table "posts", force: :cascade do |t|
      t.string "title"
      t.text "content"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "user_id"
    end

    create_table "roles", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "roles_users", id: false, force: :cascade do |t|
      t.bigint "role_id"
      t.bigint "user_id"
      t.index ["role_id"], name: "index_roles_users_on_role_id"
      t.index ["user_id"], name: "index_roles_users_on_user_id"
    end

    create_table "users", force: :cascade do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer "sign_in_count", default: 0, null: false
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string "current_sign_in_ip"
      t.string "last_sign_in_ip"
      t.string "confirmation_token"
      t.datetime "confirmed_at"
      t.datetime "confirmation_sent_at"
      t.string "unconfirmed_email"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "first_name"
      t.string "last_name"
      t.boolean "guest", default: false
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    end
  end
end
