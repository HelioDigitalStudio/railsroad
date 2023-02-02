class CreateUsersCareersPaths < ActiveRecord::Migration[7.0]
  def change
    create_table :users_careers_paths do |t|
      t.references :users, null: false, foreign_key: true
      t.references :career_paths, null: false, foreign_key: true
      t.date :completed_at

      t.timestamps
    end
  end
end
