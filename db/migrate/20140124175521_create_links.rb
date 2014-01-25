class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :url_link
      t.string :random_string

      t.timestamps
    end
  end
end
