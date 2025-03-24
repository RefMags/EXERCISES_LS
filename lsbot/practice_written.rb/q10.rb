def new_vehicles(hsh)

  selected = hsh.map do |key, value|
    value.select do |details|
      details[:year] >= 2020
    end
  end

  selected
end


vehicles = {
     cars: [
       {make: 'Toyota', model: 'Corolla', year: 2020},
       {make: 'Honda', model: 'Civic', year: 2018}
     ],
     trucks: [
       {make: 'Ford', model: 'F-150', year: 2015},
       {make: 'Chevrolet', model: 'Silverado', year: 2022}
     ]
   }

   p new_vehicles(vehicles)
