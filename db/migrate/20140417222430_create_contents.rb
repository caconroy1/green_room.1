class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.references :user, index: true
      t.string :title
      t.string :platform
      t.text :text
      t.string :approval_status

      t.timestamps
    end
  end
end
