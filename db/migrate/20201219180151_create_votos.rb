class CreateVotos < ActiveRecord::Migration[6.1]
  def change
    create_table :votos do |t|
      t.integer :eleitor_id
      t.integer :candidato_id

      t.timestamps
    end
  end
end
