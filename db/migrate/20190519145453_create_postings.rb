class CreatePostings < ActiveRecord::Migration[5.2]
  def change
    create_table :postings do |t|
      t.string :name
      t.text :description
      t.string :creator
      t.text :seisakuurl
      t.text :kouteiurl

      t.timestamps
    end
  end
end
