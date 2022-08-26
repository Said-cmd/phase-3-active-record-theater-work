class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        actors = []
        self.auditions.map do |a|
            a.actor
        end
    end

    def locations
        self.auditions.map do |a|
            a.location
          end
    end

    def lead
        lead_actor = self.auditions.where(hired: true).first
        if lead_actor == nil
            "no actor has been hired for this role"
        else
            lead_actor
        end
    end

    def understudy
        understudy_actor = self.auditions.where(hired: true).second
        if understudy_actor == nil
            "no actor has been hired for understudy for this role"
        else
            understudy_actor
        end
    end

end