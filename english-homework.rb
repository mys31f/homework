puts "What are you considering to buy? Notice, this is only a general recommendation."
    puts "1. CPU + Motherboard"
    puts "2. GPU"
    puts "3. Storage solutions"
    puts "4. Full PC"
print "Your answer: "
    answer = gets.chomp

if answer == "1"
    puts "What are you planning to do with this upgrade?"
        puts "1. Purely more gaming performance"
        puts "2. Content creation"
        puts "3. Just purely better Microsoft Office performance"
        puts "4. Code compilation improvements"
        puts "5. Hackintoshing"
    print "Your answer: "
    answer_1 = gets.chomp
        if answer_1 == "1"
            puts "Do you have any brand preferences?"
                puts "1. AMD"
                puts "2. Intel"
                puts "3. Either's fine"
            print "Your answer: "
                answer_cpubrand = gets.chomp 
                    if answer_cpubrand == "1"
                        puts "You can probably go buy a Ryzen 7 3700 or a Ryzen 9 CPU (either the 3900 or the 3950 is gonna do you well) or wait until the new Ryzen 5000 CPUs come out with a B550/X570 motherboard. However, beware of the Adobe suite with AMD, as there has not been much optimization from Adobe."
                    elsif answer_cpubrand == "2"
                        puts "Probably your best bet is an i7-10700 or the i9-10900 "
                    elsif answer_cpubrand == "3"
                        puts "Either a Ryzen 7 3700 or an i7-10700 would be fine for what you need"
                    end
        elsif answer_1 == "2"
            puts 
            
        end