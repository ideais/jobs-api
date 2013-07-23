class AddInscriptionIdToJobs < ActiveRecord::Migration
  def change

    add_column :jobs, :inscription_id, :integer

  end
end
