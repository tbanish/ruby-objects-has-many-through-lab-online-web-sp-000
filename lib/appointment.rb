class Appointment
  attr_accessor :date, :patient, :doctor
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
  end
  
  
end