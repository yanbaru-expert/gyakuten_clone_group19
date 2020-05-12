class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title, nill: false
      t.text :detail, nill: false
      t.timestamps
    end
  end
end
