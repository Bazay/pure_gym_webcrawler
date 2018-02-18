class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :gym, index: true, foreign_key: true
      t.datetime :time
      t.integer :duration
      t.string :status

      t.timestamps null: false
    end
  end
end
