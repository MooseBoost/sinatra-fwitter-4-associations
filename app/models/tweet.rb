class Tweet < ActiveRecord::Base
  # attr_reader :username, :status
  
  # ALL = []

  # def initialize(username, status)
  #   @username = username
  #   @status = status
  #   ALL << self
  # end

  # def username
  #   @username
  # end

  # def status
  #   @status
  # end

  # def self.all
  #   ALL
  # end
  
  belongs_to :user
end