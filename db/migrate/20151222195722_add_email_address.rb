class AddEmailAddress < ActiveRecord::Migration
  # def change
  # end

  def up
    add_column :posts, :email, :string
  end

  def down
    remove_column :posts, :email, :string
  end

end