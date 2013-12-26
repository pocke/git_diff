module GitDiff
  module Line
    class Base
      attr_reader :content, :line_number

      def initialize(content, line_number=nil)
        @content = content
        @line_number = LineNumber.from_line_number(line_number) if line_number
      end

      def deletion?
        false
      end

      def addition?
        false
      end

      def to_s
        content
      end
    end
  end
end
