class AddPasswordDigestToUser < ActiveRecord::Migration
  def change
  	# add_column table, column, data_type
  	add_column  :users, :password_digest, :string
  end
end

