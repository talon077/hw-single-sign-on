class SessionsController < ApplicationController
  def start_test
  end

  def clear
  end

  def debug
  end

  def new
  end

  def nested_hash nh, indent
    puts indent + "VALUE is a nested hash"
    indent += '  '
    nh.each_pair do |key, value|
      puts indent + "KEY: #{key}"
      if value.kind_of?(Hash)
        nested_hash(value, indent)
      else
        puts indent + "VALUE:  #{value}"
      end     
    end
  end
    
  def create
    auth_hash = request.env['omniauth.auth']
      
    puts '\n raw auth_hash\n'
    p auth_hash
    puts '\n\nauth_hash by key\n'
    auth_hash.each_pair do |key, value|
      puts "\nKEY: #{key}"
      if value.kind_of?(Hash)
        nested_hash(value, '')
      else
        puts "Value: #{value}"
      end
    end
  end

  def failure
  end

  def destroy
  end
end
