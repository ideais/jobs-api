class AddInscriptionIdToAddresses < ActiveRecord::Migration
  def change

    add_column :addresses, :inscription_id, :integer

  end
end
