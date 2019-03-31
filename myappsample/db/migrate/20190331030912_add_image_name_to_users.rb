class AddImageNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:image_name,:string #保存をしてからdb:migrateを実行しよう
  end
end
