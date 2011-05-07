class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string  :name,  :null => false, :limit => 50, :default => ""
      t.string  :email, :null => false, :limit => 50, :default => ""
      t.integer :age

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
