# The Appointment class needs a class variable @@all that begins as an empty array.
# The Appointment class needs a class method .all that lists each Appointment in the class variable.
# An Appointment should be initialized with a date (as a string, like "Monday, August 1st"), a patient, and a doctor. The Appointment should be saved in the @@all array.

class Appointment

attr_accessor :date, :patient, :doctor

@@all = []

    def initialize(patient, doctor, date)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end 

    def self.all
        @@all
    end

end 


one = Appointment.new("Monday, August 1st", "Grace Tan", "Dr Lee")
two = Appointment.new("Monday, August 1st", "Sarah Lala", "Dr Shalala")
three = Appointment.new("Monday, August 1st", "Amy tata", "Dr Woopee")

p Appointment.all