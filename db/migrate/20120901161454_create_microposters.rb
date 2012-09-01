class CreateMicroposters < ActiveRecord::Migration
  def change
    create_table :microposters do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
