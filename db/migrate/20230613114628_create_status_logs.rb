class CreateStatusLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :status_logs do |t|
      t.integer :status

      t.timestamps
    end
  end
end
