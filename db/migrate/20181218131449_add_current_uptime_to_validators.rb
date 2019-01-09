class AddCurrentUptimeToValidators < ActiveRecord::Migration[5.2]
  def change
    add_column :cosmos_validators, :current_uptime, :decimal, default: 0.0
  end
end
