require 'launchy'

def check_if_user_gave_input
  abort("google_searcher : missing input. Use as command $ ruby google_searcher.rb write your search here") if ARGV.empty?
end

def get_research
  return ARGV
end

def url_builder
  url = "https://www.google.com/search?q=" + get_research.join("+")
end

def browser_launcher(url)
  Launchy.open(url)
end

def perform
  check_if_user_gave_input
  browser_launcher(url_builder)
end

perform