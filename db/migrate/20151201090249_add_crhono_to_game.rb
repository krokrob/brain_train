class AddCrhonoToGame < ActiveRecord::Migration
  def change
    add_column :games, :chrono, :time
  end
end
