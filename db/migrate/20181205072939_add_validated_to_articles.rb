class AddValidatedToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :validated, :boolean
  end
end
