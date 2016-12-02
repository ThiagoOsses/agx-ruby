require 'oauth2'
require 'oj'
require 'httplog'

require "agx/version"
require "agx/error"
require "agx/content"
require "agx/sync"

module Agx
  HttpLog.options[:logger]        = Logger.new($stdout)
  HttpLog.options[:severity]      = Logger::Severity::DEBUG
  HttpLog.options[:log_connect]   = true
  HttpLog.options[:log_request]   = true
  HttpLog.options[:log_headers]   = true
  HttpLog.options[:log_data]      = true
  HttpLog.options[:log_status]    = true
  HttpLog.options[:log_response]  = true
  HttpLog.options[:log_benchmark] = true
  HttpLog.options[:compact_log]   = false
  HttpLog.options[:color]         = true
  HttpLog.options[:url_whitelist_pattern] = /.*/
  HttpLog.options[:url_blacklist_pattern] = nil
end
