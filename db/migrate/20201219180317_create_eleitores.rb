class CreateEleitores < ActiveRecord::Migration[6.1]
  def change
    create_table :eleitores do |t|
      t.string :nome
      t.string :titulo

      t.timestamps
    end
  end
end
