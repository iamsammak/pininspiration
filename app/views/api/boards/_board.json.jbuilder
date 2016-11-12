json.extract!(
  board,
  :id, :title, :description, :user)
  
  json.pins do
    board.pins.each do |pin|
      json.set! pin.id do
        json.partial! 'api/pins/pin', pin: pin
      end
    end
  end
