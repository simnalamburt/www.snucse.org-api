class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :sid
      t.string :name
      t.integer :profile_type, null: false
      t.integer :admin_id
      t.text :description
      t.integer :rendering_mode, null: false
      t.boolean :is_public, default: false
      t.integer :comment_count, default: 0

      t.timestamps null: false
    end
    add_index :profiles, :sid, unique: true
  end
end
