require 'times'

describe Times do

  testHash = {
     "availability_slots"=>[
       {
          "time"=>"08:00:00",
          "slot_size"=>10,
          "doctor_id"=>1
       },
       {
          "time"=>"08:00:00",
          "slot_size"=>10,
          "doctor_id"=>2
       },
       {
          "time"=>"08:10:00",
          "slot_size"=>10,
          "doctor_id"=>1
       }
     ]
  }

  it "returns an array of the available times" do
    subject.get_times(testHash)
    expect(subject.instance_variable_get(:@output)).to eq(["08:00:00", "08:00:00", "08:10:00"])
  end

end
