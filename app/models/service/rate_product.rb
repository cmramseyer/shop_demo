module Service
  class RateProduct

    def self.call(*args, &block)
      new(*args, &block).execute
    end

    def initialize(rating:, product:)
      @rating = rating
      @product = product
    end

    def execute
      ActiveRecord::Base.transaction do
        Rating.create!(rating: @rating, product: @product)
        # do more things...
      end
    end

  end
end