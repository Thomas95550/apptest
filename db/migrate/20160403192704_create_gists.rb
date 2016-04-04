class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :name_gists
      t.string :gists_type
      t.string :gists_language
      t.string :gists_raw_url
      t.string :cat
      t.integer :gists_size

      t.timestamps null: false
    end
  end
end
