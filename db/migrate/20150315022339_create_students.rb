class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.text :wanted_skills
      t.string :email
      t.string :twitter

      t.timestamps null: false
    end
  end
end
