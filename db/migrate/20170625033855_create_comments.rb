class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.belongs_to :home
      
      t.timestamps null: false
    end
  end
end
