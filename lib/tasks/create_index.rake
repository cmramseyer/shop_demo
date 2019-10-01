namespace :elastic do
  desc "Create ES indexes"
  task create_index: :environment do

    Product.__elasticsearch__.create_index! unless Product.__elasticsearch__.index_exists?
    Review.__elasticsearch__.create_index! unless Review.__elasticsearch__.index_exists?
    ProductComment.__elasticsearch__.create_index! unless ProductComment.__elasticsearch__.index_exists?

  end
end