require 'booking'

describe Booking do

  testArray = ["12:40:00", "08:20:00", "09:20:00"]

  it "should make an appointment if slot is available" do
    subject.book_slot("12:40", testArray)
    expect(subject.instance_variable_get(:@slot)).to eq("12:40")
  end

  it "should remove that slot from the array of times" do

  end

end
