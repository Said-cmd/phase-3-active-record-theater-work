class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        Role.auditions.actors
    end

    def locations
        Role.auditions.locations
    end

    def lead
        lead_actor = Role.auditions.where(hired: true).first
        if lead_actor == nil
            "no actor has been hired for this role"
        else
            lead_actor
        end
    end

    def understudy
        understudy_actor = Role.auditions.where(hired: true).second
        if understudy_actor == nil
            "no actor has been hired for understudy for this role"
        else
            understudy_actor
        end
    end

end