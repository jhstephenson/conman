class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :clientname
      t.string :addressline1
      t.string :addressline2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :internalid
      t.decimal :billingrate
      t.decimal :monthlyretainer
      t.integer :hourspermonth
      t.string :invoicetype
      t.string :primaryphone
      t.string :status
      t.string :contactname
      t.string :contactemail
      t.string :contactphone
      t.string :clienttype
      t.datetime :clientsince

      t.timestamps null: false
    end
  end
end
