class ProductDecorator < Draper::Decorator
  delegate_all

  def average_rating
    if object.average_rating == 0
      "-"
    else
      object.average_rating.round(1).to_s
    end
  end

end
