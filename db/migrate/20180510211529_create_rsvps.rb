class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.belongs_to :user_id
      t.belongs_to :event

      t.timestamps
    end
  end
end
