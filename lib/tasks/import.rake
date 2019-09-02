namespace :elastic do
  desc "Import ES documents"
  task import: :environment do

    Product.import
    Review.import

  end
end