require 'pry-byebug'



TOWNS = ["Rome", "London", "Paris", "NY", "Vancouver", "Sydney", "Bangkok", "Tokyo",
          "Beijing", "Lima", "Montevideo", "Caracas", "Madrid", "Berlin"]

class CityRainfall

  def initialize(town, data)
    @town = town
    @data_by_city = transform_to_hash(data)
  end



  def mean
    return -1 unless (town_exist && town_has_values)
    sum_rain = 0
    @data_by_city[@town].each do |month|
      sum_rain += month[1].to_f
    end
    sum_rain / 12
  end

  def variance
    return -1 unless (town_exist && town_has_values)
    city_mean = mean
    sum_subt_mean = 0
    @data_by_city[@town].each do |month|
      sum_subt_mean += (month[1].to_f - city_mean)** 2
    end
    sum_subt_mean / 12
  end

  private

  def town_exist
    TOWNS.include? @town
  end

  def town_has_values
    @data_by_city[@town]
  end

  def transform_to_hash(data)
    data_by_city_hash = {}

    data.split(/\n/).map do |city|
      city_name = get_city_name(city)
      rain_data_month = get_rain_data_as_array(city)
      data_by_city_hash[city_name] = rain_data_month
    end
    data_by_city_hash
  end

  def get_city_name(city)
    city.split(":")[0]
  end

  def get_rain_data_as_array(city)
    rain_data = []
    city.split(":")[1].split(",").map do |month|
     rain_data << month.split(" ")
    end
    rain_data
  end

end
