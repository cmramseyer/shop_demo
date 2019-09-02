namespace :elastic do
  desc "Delete ES indexes"
  task delete_index: :environment do

    Product.__elasticsearch__.delete_index!
    Review.__elasticsearch__.delete_index!

  end
end