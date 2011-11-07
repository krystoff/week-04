# 
# Here is where you will write the method #search_for_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
#def find_all_quotes_start_with(quotes,value)
#  quotes.find_all {|quote| quote.include?(value)}
#end

def search_for_quote(params = {})
  #file = params[:file]
  file = params.delete(:file)
  
  quotes = all_quotes(file)
  
  found = []
  #found = quotes ? quotes : []
  
  #quotes.each do |quote|
  #  if quote.respond_to? :include
  #    if quote.include?(params[:include])
  #      found.push(quote)
  #      puts quote
  #    end
  #  end
  #  
  #  #if quote.respond_to? :contains
  #  #  if quote.contains?(params[:contains])
  #  #    found.push(quote)
  #  #  end
  #  #end
  #  
  #  
  #end

  params.each do |key,value|
    found = quotes.find_all do |quote|
      quote.send("#{key}?",value) if quote.respond_to? "#{key}?"
    end
  end

  
  found = quotes unless found.any?
  found.flatten.compact
end
