#!/usr/bin/env ruby

require 'irb/completion'
require 'irb/ext/history'
require 'irb/ext/save-history'

# irb history
IRB.conf[:EVAL_HISTORY] = 0
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:AUTO_INDENT] = false

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

