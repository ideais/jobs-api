class AddInscriptionIdToEducations < ActiveRecord::Migration
  def change

    add_column :educations, :inscription_id, :integer

  end
end
