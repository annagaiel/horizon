@greetings = {
  "English" => ["Hi", "Yo", "Hey", "What's up"],
  "Spanish" => ["Hola"],
  "Italian" => ["Ciao"],
   "French" => ["Bonjour"]
}
def greet(name, language = "English")
  if language == "English"
     greet_word = @greetings[language].sample
    "#{language}: \"#{greet_word} #{name}#{greet_word == "What's up" ? "?" : "!"}\""
  else
    "#{language}: \"#{@greetings[language].first} #{name}!\""
  end
end
puts greet("Emily")
puts greet("John", "French")
