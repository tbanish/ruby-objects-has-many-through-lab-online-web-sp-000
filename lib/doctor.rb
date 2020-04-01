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
    #binding.pry
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
  
  def patients
    binding.pry
    appointments.map do |appointment|
      appointment
    end
  end
  
end




