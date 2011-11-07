# 
# Here is where you will write the method #find_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
def find_quote(file,num = 0)
  quotes = all_quotes(file)
  num = num.to_i
  num = rand(quotes.length) unless num >= 0
  
  if quotes.empty?
    "Could not find a quote at this time"
  else
    if num > quotes.length - 1
      num = rand(quotes.length)
    else
      quotes[num]
    end
  end
end
