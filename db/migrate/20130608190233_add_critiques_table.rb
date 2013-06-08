class AddCritiquesTable < ActiveRecord::Migration
  def change

    create_table :critiques do |t|
      t.references :micropost
      t.integer    :reviewer_id, null: false
      t.string     :type
      t.boolean    :positive
      t.string     :comment
      t.integer    :seconds
      t.datetime   :created_at, null: false
    end
    
    add_index :critiques, [:micropost_id, :seconds]


    create_table :lessons do |t|
      t.integer    :number
      t.string     :title
      t.string     :description
      t.string     :youtube_id
      t.string     :assignment
      t.datetime   :created_at, null: false
    end
    
    add_index :lessons, :number
    
    
    add_column :users, :professional, :boolean
    add_column :users, :current_lesson_id, :integer
    
    add_column :microposts, :lesson_id, :integer
    add_column :microposts, :youtube_id, :string
  end
end
