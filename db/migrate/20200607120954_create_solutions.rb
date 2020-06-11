class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.references :question, foreign_key: true
      t.text :content
      t.timestamps
    end
  end
end
