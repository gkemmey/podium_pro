class AddCritiquesTable < ActiveRecord::Migration
  def change

    create_table :critiques do |t|
      t.references :micropost
      t.integer    :reviewer_id, null: false
      t.string     :category
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
      t.datetime   :created_at, null: false
    end
    
    add_index :lessons, :number
    
    
    create_table :chapters do |t|
      t.references :lesson
      t.integer    :number
      t.string     :title
      t.string     :content
      t.string     :youtube_id
      t.boolean    :assignment
      t.datetime   :created_at, null: false
    end
    
    add_index :lessons, :number
    
    
    add_column :users, :professional, :boolean
    add_column :users, :current_lesson_id, :integer, default: 1
    
    add_column :microposts, :lesson_id, :integer
    add_column :microposts, :youtube_id, :string
    add_column :microposts, :title, :string
  end
end
