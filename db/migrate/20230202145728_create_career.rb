class CreateCareer < ActiveRecord::Migration[7.0]
  def change
    create_table :careers do |t|
      t.string :title
      t.text :summary

      t.timestamps
    end
  end
end
