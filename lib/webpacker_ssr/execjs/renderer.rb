# frozen_string_literal: true

module WebpackerSSR
  module ExecJS
    class Renderer
      def initialize(js_code)
        refresh(js_code)
      end

      def refresh(js_code)
        @context = ::ExecJS.compile(js_template(js_code))
      end

      def js_template(js_code)
        <<~JS
          var execJsGlobal = {};
          var global = global || this;
          var self = self || this;
          #{exec_js_closure(js_code)}
        JS
      end

      def render(js_code)
        @context.eval(exec_js_closure(js_code))
      end

      private

      def exec_js_closure(js_code)
        <<~JS
          (function() {
            #{js_code}
          }).bind(execJsGlobal)()
        JS
      end
    end
  end
end
