class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :video_url
      t.string :image_url
      t.string :text
      t.timestamp :completed
      t.references :series

      t.timestamps
    end
  end
end
