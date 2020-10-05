# frozen_string_literal: true

module Microc
  module VM
    module Register
      def self.included(base)
        base.extend ClassMethods
      end

      module ClassMethods
        def reg
          @reg ||= Reg.new
        end
      end

      class Reg
        attr_accessor :pc, # Program counter
                      :sp, # Stack pointer
                      :bp, # Base pointer
                      :ax # Accumulator

        def initialize
          @pc = nil
          @sp = nil
          @bp = nil
          @ax = nil
        end
      end
    end
  end
end

module Microc
  module VM
    include Microc::VM::Register
  end
end
