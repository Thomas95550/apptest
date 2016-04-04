class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name_cate
      t.string :member_id
      t.string :gists_name
      t.timestamps null: false
    end
  end
end
