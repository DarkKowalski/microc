# frozen_string_literal: true

module Microc
  module File
    def self.read(path)
      result = []
      # use :: to call Ruby Stdlib
      ::File.readlines(path).each do |line|
        line.each_char do |char|
          result.push(char)
        end
      end
      result
    end
  end
end
