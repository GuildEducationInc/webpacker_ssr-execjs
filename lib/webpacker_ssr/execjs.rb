# frozen_string_literal: true

require 'webpacker_ssr'
require 'webpacker_ssr/execjs/renderer'
require 'webpacker_ssr/execjs/version'

WebpackerSSR.register_renderer(:execjs, WebpackerSSR::ExecJS::Renderer)
