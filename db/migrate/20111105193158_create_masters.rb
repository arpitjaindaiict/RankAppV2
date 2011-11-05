class CreateMasters < ActiveRecord::Migration
  def self.up
    create_table :masters do |t|
      t.string :e_name
      t.string :task
      t.date :startdate
      t.date :enddate
      t.integer :points
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :masters
  end
end
