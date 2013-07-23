class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.string :email
      t.string :name
      t.string :linkedin_url
      t.string :github
      t.string :facebook
      t.string :twitter
      t.string :about
      t.string :phone
      t.string :cellphone
      t.date :birthday

      t.timestamps
    end
  end
end
