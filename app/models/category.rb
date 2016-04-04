class Category < ActiveRecord::Base
	def change
    create_table :categories do |t|
      t.string :name_cate
      t.string :gists_name
      t.string :gists_raw_url
      t.string :gists_type

      t.timestamps null: false
    end
  end
	
end
