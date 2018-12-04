require_relative 'question' 

describe Question do 
   context "Expected input same as difficulty" do 
      
      it "return 1 array string" do 
         q = Question.new(1)
         question = q.get_question_based_difficulty
         expect(question.length).to be 1 
      end 
		
      it "return 2 array string" do 
         q = Question.new(2)
         question = q.get_question_based_difficulty
         expect(question.length).to be 2
      end 

      it "return 3 array string" do 
        q = Question.new(3)
        question = q.get_question_based_difficulty
        expect(question.length).to be 3
     end 
      
   end 
end