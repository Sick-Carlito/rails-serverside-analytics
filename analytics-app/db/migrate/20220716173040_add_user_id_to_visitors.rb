class AddUserIdToVisitors < ActiveRecord::Migration[5.0]
  def change
    add_reference :visitors, :user, foreign_key: {on_delete: :cascade}
  end
end
