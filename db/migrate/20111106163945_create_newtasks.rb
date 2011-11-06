class CreateNewtasks < ActiveRecord::Migration
  def self.up
    create_table :newtasks do |t|
      t.string :task
      t.integer :timeduration

      t.timestamps
    end
  end

  def self.down
    drop_table :newtasks
  end
end
