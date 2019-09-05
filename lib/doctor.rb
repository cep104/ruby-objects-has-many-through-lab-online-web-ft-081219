require 'pry'
class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def appointments
    # binding.pry
    new_array = Appointment.all.select do |appointment| 
       appointment.doctor == self
     end
     new_array
  end
  
 def new_appointment(patient, date)
   Appointment.new(date,patient,self)
  end
  
  def patients 
    appointments.map do |appointment|
      appointment.patient 
  end
end
  
end