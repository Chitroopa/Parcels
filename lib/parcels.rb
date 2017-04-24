require('pry')
class Parcels
  define_method(:initialize) do |height, length, depth, weight, time|
    @height = height
    @length = length
    @depth = depth
    @weight = weight
    @time = time

  end

  define_method(:volume) do
    (@height * @length) * @depth
  end

  define_method(:parcel_time_price) do
   time_frame = {1 => 5, 2 => 4, 3 => 3, 4 => 2, 5 => 1, 6 => 0}
   time_frame.fetch(@time)
  end

  define_method(:parcel_price) do
    parcel_volume = volume()
    parcel_time_price = parcel_time_price()
    if parcel_volume <= 1000
      price = 5 + (@weight * 0.001) + parcel_time_price
    elsif parcel_volume > 1000 && parcel_volume <= 4000
      price = 10 + (@weight * 0.001) + parcel_time_price
    elsif parcel_volume > 4000 && parcel_volume <= 10000
      price = 15 + (@weight * 0.001) + parcel_time_price
    else
      price = 20 + (@weight * 0.001) + parcel_time_price
    end
    price
  end
end
