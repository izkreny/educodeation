require 'net/http'
require 'json'
require 'cgi/escape'

class String
  def unescape
    CGI::unescapeHTML(self)
  end
end

def get_number(range)
  loop do
    print("Answer: ")
    input = gets.chomp.to_i
    if range.include?(input)
      return input
    else
      puts("Please type a number between " +
           "#{range.first} and #{range.last}.")
    end
  end
end

def get_questions(count = 2)
  puts("Please wait, building up #{count} question(s)...")
  url = URI("https://opentdb.com/api.php?amount=#{count}")
  response = JSON.parse(Net::HTTP.get(url))
  if response["response_code"] == 0
    return response["results"]
  else
    puts("Something went wrong! :-/")
    exit
  end
end

def answer_correct?(question)
  answers = question["incorrect_answers"].
            append(question["correct_answer"]).
            shuffle

  puts("\n### #{question["category"].unescape.upcase} ###")
  puts(question["question"].unescape)
  answers.each_with_index do |answer, index|
    puts(" #{index + 1}) #{answer.unescape}")
  end
  answer = answers[get_number(1..answers.length) - 1]
  
  if answer == question["correct_answer"]
    puts("CORRECT!")
    return true
  else
    puts("WRONG! (#{question["correct_answer"].unescape})")
    return false
  end
end  

def play_trivia(questions)
  correct_answers = 0
  questions.each do |question|
    correct_answers += 1 if answer_correct?(question)
  end

  correct_answers_percentage = (
    (correct_answers.to_f / questions.length) * 100).to_i
  puts("\nYou answered correctly #{correct_answers_percentage}" +
       "% of questions.")
end

def main
  puts("How many questions do you want to answer (1-10)?!")
  play_trivia(get_questions(get_number(1..10)))
end

main
