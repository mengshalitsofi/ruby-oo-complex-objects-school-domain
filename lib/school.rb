class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster.has_key?(grade)
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        result = {}
        @roster.each do |grade, names|
            result[grade] = names.sort
        end
        return result
    end
end
