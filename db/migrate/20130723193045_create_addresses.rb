class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|

      t.string :city
      t.string :state
      t.string :country
      t.string :cep
      t.string :neighborhood
      t.string :street
      t.string :number
      t.string :complement

      t.timestamps
    end
  end
end
