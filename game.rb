require_relative 'question'
class Game
    def initialize(difficulty)
        @difficulty = difficulty;
        @questions = Question.new(difficulty)
        @score = 0
    end

    def load_new_question
        @questions = Question.new(@difficulty)
    end

    def get_current_question
        @current_question = @questions.get_question_based_difficulty
        @current_question.map {|w| w.split("").shuffle.join}
    end

    def score
        @score
    end

    def check_answer(answer)
        curr_answer = answer.split(" ")
        if curr_answer == @current_question
            @score +=1
            true
        else
            false
        end
    end
end