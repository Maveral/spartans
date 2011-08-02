class CreateGbposts < ActiveRecord::Migration
  def self.up
    create_table :gbposts do |t|
      t.string :nick
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :gbposts
  end
end
