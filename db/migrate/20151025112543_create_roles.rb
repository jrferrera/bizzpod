class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :status
      t.decimal :salary, precision: 20, scale: 2
      t.string :salary_terms

      t.timestamps null: false
    end
  end
end
