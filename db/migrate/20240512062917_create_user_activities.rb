class CreateUserActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :user_activities do |t|
      t.references :user, null: false, foreign_key: true
      t.string :website_url
      t.integer :time_spent
      t.datetime :timestamp

      t.timestamps
    end
  end
end
