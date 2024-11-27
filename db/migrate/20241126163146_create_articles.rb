class CreateArticles < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.text :body
      t.string :tags

      t.timestamps
    end
  end
end
