require 'pry'
class Patient 
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
    Appointment.all.select {|appointment| appointment.patient == self}
    
end

def new_appointment(doctor,date)
   Appointment.new(date,self,doctor)
   
  # binding.pry
  end
  
def doctors 
  appointments.map do |appointment| 
    appointment.doctor
end
end
end
