namespace :elastic do
  desc "Create ES indexes"
  task create_index: :environment do

    Product.__elasticsearch__.create_index!
    Review.__elasticsearch__.create_index!

  end
end