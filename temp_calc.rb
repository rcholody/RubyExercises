def celsisus_to_fahrenheit(temp)
    (temp * 1.8) + 32
end
def ceslsius_to_kelvin(temp)
    temp + 273.15
end
def fahrenheit_to_celsius(temp)
    (temp - 32) / 1.8
end
def kelvin_to_celsius(temp)
   temp - 273.15 
end
def fahrenheit_to_kelvin(temp)
    ((temp - 32) / 1.8) + 273.15
end
def kelvin_to_fahrenheit(temp)
    (temp - 273.15) + 1.8
end
def convert_temp(temp, input_scale:, output_scale: Celsius)
    case input_scale.downcase
        when 'fahrenheit'
        return output_scale == 'kelvin' ? 
        fahrenheit_to_kelvin(temp) : fahrenheit_to_celsius(temp)
        when 'celsius'
        return output_scale == 'kelvin' ?
        ceslsius_to_kelvin(temp) : celsisus_to_fahrenheit(temp)
        when 'kelvin'
        return output_scale == 'celsius' ?
      kelvin_to_celsius(temp) : kelvin_to_fahrenheit(temp)
    end
    
end
