class CreateMicroposts < ActiveRecord::Migration
  def self.up
    create_table :microposts do |t|
      t.string :content, :null => false, :limit => 140, :default => ""
      t.references :user, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :microposts
  end
end
