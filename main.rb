require_relative 'game'
puts "Selamat datang di Permainan acak kata."
puts "Tentukan tingkat kesulitan anda."
puts "1. Mudah"
puts "2. Sedang"
puts "3. Sulit"
print "Masukkan kesulitan (1,2,3) : "
difficulty = gets.chomp.to_i
puts "=========="
game = Game.new(difficulty)
keep_playing = true
while keep_playing
    question = game.get_current_question.join(" ")
    if question.length != 0
        print "\nTebak kata : #{question}\n" 
        correct = false
        while correct == false
            print "Jawab : "
            answer = gets
            correct = game.check_answer(answer)
            correct ? s = "BENAR point anda : #{game.score}!\n" : s = "SALAH! Silakan Coba lagi\n"
            puts s
        end
        
    else
        print "Pertanyaan habis apakah anda ingin main lagi ? (y,t) : "
        answer = gets.chomp
        if (answer != 'y' && answer != 'Y' && answer != 'Yes')
            keep_playing = false
            puts "\nScore Akhir anda : #{game.score}"
        else
            game.load_new_question
        end
    end
end
puts "=========="