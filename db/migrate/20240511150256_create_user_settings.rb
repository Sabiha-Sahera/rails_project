class CreateUserSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :user_settings do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :time_limit_per_website
      t.text :website_categories # Change from string to text

      t.timestamps
    end
  end
end
