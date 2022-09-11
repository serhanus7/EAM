class CreateComponents < ActiveRecord::Migration[7.0]
  def change
    create_table :components do |t|
      t.string :name
      t.string :version
      t.references :editor, null: false, foreign_key: true
      t.string :support_type
      t.date :release_date
      t.date :support_end_date
      t.date :support_end_date_ex
      t.text :note
      t.boolean :lts
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
