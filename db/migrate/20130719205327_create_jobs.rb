class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.date :begin
      t.date :end
      t.string :title

      t.timestamps
    end
  end
end
