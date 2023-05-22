# frozen_string_literal: true

require_relative "rbCaptcha/version"

module RbCaptcha
  class Error < StandardError; end
  def Captcha()
    
    words = [
    '29183!с92-3822a29!``~39t', # => cat
    '38134@3#2d392o1911!!(@)O!!!#g', # => dog
    '3928937h392!@(o)303m39---e'    # => home
    ]

    cword = words.sample
    
    if cword == words[0]
        truew = 'cat'
    elsif cword == words[1]
        truew = 'dog'
    elsif cword == words[2]
        truew = 'home'
    end

    puts "Please, to continue, write a word that is written in lowercase letters.\n    #{cword}"
    
    mw0 = gets.chomp 
    mw = mw0.downcase
    if mw == truew
        puts "You have passed the captcha sir."
        return true
    else
        puts "You didn't pass the captcha, try again."
        return false
    end
    sleep(5)
end
end
