#!/usr/bin/env ruby

require 'irb/completion'
require 'irb/ext/history'
require 'irb/ext/save-history'

# irb history
IRB.conf[:EVAL_HISTORY] = 0
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:AUTO_INDENT] = false

class Color
    def self.red(string);          colorize(string, "\001\e[1m\e[31m\002");  end
    def self.dark_red(string);     colorize(string, "\001\e[31m\002");       end
    def self.green(string);        colorize(string, "\001\e[1m\e[32m\002");  end
    def self.dark_green(string);   colorize(string, "\001\e[32m\002");       end
    def self.yellow(string);       colorize(string, "\001\e[1m\e[33m\002");  end
    def self.dark_yellow(string);  colorize(string, "\001\e[33m\002");       end
    def self.blue(string);         colorize(string, "\001\e[1m\e[34m\002");  end
    def self.dark_blue(string);    colorize(string, "\001\e[34m\002");       end
    def self.purple(string);       colorize(string, "\001\e[1m\e[35m\002");  end

    def self.console_def(string);          colorize(string, "\001\e[1m\002");  end
    def self.console_bold(string);         colorize(string, "\001\e[1m\002");  end
    def self.console_blink(string);        colorize(string, "\001\e[5m\002");  end

    def self.colorize(text, color_code)  "#{color_code}#{text}\001\e[0m\002" end
end

IRB.conf[:PROMPT][:salzig] = {
  :AUTO_INDENT => false,                  # enables auto-indent mode
  :PROMPT_I => "#{Color.blue('%3n')} #{Color.green('>')} ", # normal prompt
  :PROMPT_S => "%l#{Color.green('>')} ",  # prompt for continuated strings
  :PROMPT_C => " #{Color.green('>')} ",   # prompt for continuated statement
  :PROMPT_N => "?#{Color.green('>')} ",   # prompt for continuated unknown
  :RETURN => "#  => %s\n"                 # format to return value
}
#IRB.conf[:PROMPT_MODE] = :salzig

# load .railsrc in rails environments
railsrc_path = File.expand_path('~/.railsrc')
if ( ENV['RAILS_ENV'] || defined? Rails ) && File.exist?( railsrc_path )
  begin
    load railsrc_path
  rescue Exception
    warn "Could not load: #{ railsrc_path } because of #{$!.message}"
  end
end

# Rails Routes
if defined? Rails
  include Rails.application.routes.url_helpers
  default_url_options[:host] = "localhost"
end

puts `date +'  %H:%M' | toilet -t --metal`

