class CreateCandidatos < ActiveRecord::Migration[6.1]
  def change
    create_table :candidatos do |t|
      t.string :nome
      t.integer :numero

      t.timestamps
    end
  end
end
