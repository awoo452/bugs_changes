class AddIpAddressToBugsAndChangeRequests < ActiveRecord::Migration[8.1]
  def change
    add_column :bugs, :ip_address, :string
    add_column :change_requests, :ip_address, :string
  end
end
