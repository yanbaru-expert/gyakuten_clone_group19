class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.integer :question_id
      t.text :content
      t.timestamps
    end
  end
end
