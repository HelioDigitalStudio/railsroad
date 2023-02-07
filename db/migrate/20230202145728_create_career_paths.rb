class CreateCareerPaths < ActiveRecord::Migration[7.0]
  def change
    create_table :career_paths do |t|
      t.string :title
      t.text :summary

      t.timestamps
    end
  end
end
