# frozen_string_literal: true

module Microc
  module VM
    module Memory
      def self.included(base)
        base.extend ClassMethods
      end

      module ClassMethods
        def mem
          @mem ||= Mem.new
        end
      end

      class Mem
        attr_accessor :stack, # Runtime stack
                      :text,  # Code
                      :data   # Global and static variables

        def initialize
          @stack = []
          @text = []
          @data = []
        end
      end
    end
  end
end

module Microc
  module VM
    include Microc::VM::Memory
  end
end
