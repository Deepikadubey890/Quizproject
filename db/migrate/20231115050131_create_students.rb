class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      # title:string content:text published:boolean
      t.string :title
      t.text :content
      t.boolean :published
    
      t.timestamps
    end
  end
end
