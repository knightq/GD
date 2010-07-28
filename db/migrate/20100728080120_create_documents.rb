class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.text :body
      t.integer :creator_id
      t.integer :revisor_id
      t.date :expire_on

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
