class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school
      t.date :begin
      t.date :end
      t.string :degree

      t.timestamps
    end
  end
end
