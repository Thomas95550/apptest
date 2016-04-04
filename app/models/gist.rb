class Gist < ActiveRecord::Base
	def change
    create_table :gists do |t|
      t.string :name_gist
      t.string :gist_type
      t.string :gist_language
      t.string :gist_raw_url
      t.string :gist_size
      t.timestamps null: false
    end
  end
end
