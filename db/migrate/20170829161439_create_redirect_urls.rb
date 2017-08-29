class CreateRedirectUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :redirect_urls do |t|
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
