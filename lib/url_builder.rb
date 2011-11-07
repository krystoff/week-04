# 
# Here is where you will write the #url_builder method that are defined in the 
# associated specifications file.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
#require 'ruby-debug'

def url_builder(url,parameters = {}) # vals = {} assigns emtpy hash as default if nothing passed in
  parameters[:results] = 10 unless parameters.key?(:results)
  #debugger
  
  # -OR-
  ## sets defaults and overrides original parameters with passed in vals
  #parameters = { :results => 10, :sort_by => "date"}.merge(parameters)
  
  #final_url = "#{url}?results=10"
  #
  #if parameters.key? :sort_by
  #  url = "#{url}?sort_by=#{parameters[:sort_by]}"
  #else 
  #  "#{url}?results=#{}"
  #
  #end
  #
  #param_array = parameters.map do |key, value|
  #  "#{key}=#{value}" unless value == nil
  #  # last true statement value gets mapped into param_array
  #end
  #
  ## KEY=VALUE&KEY=VALUE&KEY=VALUE
  #param_string = "?#{param_array.join("&")}"
  #
  #if parameters.key? :search
  #  "#{url}?results=#{parameters[:results]}&search=#{parameters[:search]}"
  #else 
  #  "#{url}?results=#{}"
  #
  #end


#### --ALT--
  final_url = "#{url}?results=10"
  
  if parameters.key? :sort_by
    final_url = "#{url}?sort_by=#{parameters[:sort_by]}"
  else 
    "#{url}?results=#{parameters[:results]}"
  
  end
  
  
  if parameters.key? :search
    "#{url}?results=#{parameters[:results]}&search=#{parameters[:search]}"
  else 
    "#{url}?results=#{parameters[:results]}"
  
  end
end
