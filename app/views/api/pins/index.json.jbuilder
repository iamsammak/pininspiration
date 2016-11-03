json.array!(@pins) do |pin|
  josn.partial!('pin', pin: pin)
