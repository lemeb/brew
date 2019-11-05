require "keg"
require "cli/parser"

module Homebrew
  module_function

  def unused_args
    Homebrew::CLI::Parser.new do
      usage_banner <<~EOS
        `unused`

        List formulaes installed as dependencies and that are no longer required.
      EOS
      switch :debug
    end
  end

  def unused
    unused_args.parse

    puts "Unused kegs are orphan kegs 😢"
  end
end
