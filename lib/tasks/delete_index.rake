namespace :elastic do
  desc "Delete ES indexes"
  task delete_index: :environment do

    Product.__elasticsearch__.delete_index! if Product.__elasticsearch__.index_exists?
    Review.__elasticsearch__.delete_index! if Review.__elasticsearch__.index_exists?

  end
end