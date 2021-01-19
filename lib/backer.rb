

class Backer 

    attr_reader :name 

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
      pro = ProjectBacker.all.select { |projectbacker| projectbacker.backer == self }
      pro.map { |projectbacker| projectbacker.project}
    end

end