class CreateInitialSchema < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :email_address, null: false, index: { unique: true }
      t.string :password_digest, null: false

      t.timestamps
    end

    create_table :sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :ip_address
      t.string :user_agent

      t.timestamps
    end

    create_table :feeds do |t|
      t.references :user
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
