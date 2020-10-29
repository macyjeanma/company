class CreateFreeCupons < ActiveRecord::Migration[6.0]
  def change
    create_table :free_cupons do |t|
      t.string :compony
      t.string :serial_number
      t.string :phone
      t.belongs_to :user, null: false, foreign_key: true
      t.timestamps
    end
    add_index :free_cupons, :compony, unique: true
    add_index :free_cupons, :string, unique: true
  end
end
