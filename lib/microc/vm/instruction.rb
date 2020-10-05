# frozen_string_literal: true

module Microc
  module VM
    module Insturction
      def self.included(base)
        base.extend ClassMethods
      end

      module ClassMethods
        def inst
          @inst ||= Inst.new
        end
      end

      class Inst < Hash
        def initialize(mem = Microc::VM.mem, reg = Microc::VM.reg)
          super()
          # bind memory and register
          @mem = mem
          @reg = reg

          # bind entries to real payload
          self.default = method(:nop)
        end

        # do nothing
        def nop; end

        # TODO: design IR here
      end
    end
  end
end

module Microc
  module VM
    include Microc::VM::Insturction
  end
end
