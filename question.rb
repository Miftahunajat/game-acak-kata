class Question
    def initialize(difficulty)
        @question_list = IO.readlines('question.txt').map {|s| s.chomp}.shuffle
        @difficulty = difficulty
    end

    def question_list
        @question_list
    end

    def get_question_based_difficulty
        random = @question_list.shift(@difficulty)
        random
    end
end