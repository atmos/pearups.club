class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.text :skills
      t.string :email
      t.string :twitter

      t.timestamps null: false
    end
  end
end
