class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :requester_id
      t.integer :requestee_id

    end
  end
end
