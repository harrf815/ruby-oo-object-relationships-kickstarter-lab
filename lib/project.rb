

class Project

    attr_reader :title 

    def initialize(title)
        @title = title 
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        back = ProjectBacker.all.select{ |projectbacker| projectbacker.project == self }
        back.map {|projectbacker| projectbacker.backer}
    end
end