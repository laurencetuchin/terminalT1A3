require 'date'

class SurfTime 
    def intitialize 
        @surf_time = Date.today
        # @surf1_time = Time.
    end
    # def surf_time 
    #     Time.new
    # end
end

a = SurfTime.new
puts a.intitialize