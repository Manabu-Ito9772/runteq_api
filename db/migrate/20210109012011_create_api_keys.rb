class CreateApiKeys < ActiveRecord::Migration[6.0]
  def change
    create_table :api_keys do |t|
      t.references :user, null: false, foreign_key: true
      t.string :access_token, null: false, unique: true
      t.datetime :expires_at

      t.timestamps
    end
  end
end
