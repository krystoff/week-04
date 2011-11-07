
# 
# Here is where you will write the method #display_superheroes.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
#Superhero = Struct.new :name, :origin, :nemesis, :nick_name
#
#SuperHeroes = [ 
#  Superhero.new("Batman", "Gotham City", "Joker", "Caped Crusader"),
#  Superhero.new("Robin", "Gotham City", "Joker", "Boy Wonder"),
#  Superhero.new("Superman", "Krypton", "Lex Luthor", "Kal El"),
#  Superhero.new("Supergirl", "Krypton", "Bizzaro", "Kara Zor-El") ]


def display_superheroes(*heroes)
  
  heroes.flatten.uniq.each do |hero|
    
    #hero.each_pair do |name, value|
    #  puts " --< #{name} = #{value} >--"
    #end
    #puts "#{hero.name}"
    
    puts hero
    
  end
end

#display_superheroes SuperHeroes