class CreateMilestones < ActiveRecord::Migration[7.0]
  def change
    create_table :milestones do |t|
      t.string :title
      t.text :content
      t.references :career_paths, null: false, foreign_key: true

      t.timestamps
    end
  end
end
