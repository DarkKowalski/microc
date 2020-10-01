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
      end
    end
  end
end

module Microc
  module VM
    include Microc::VM::Register
  end
end
