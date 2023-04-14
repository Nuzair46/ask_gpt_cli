# frozen_string_literal: true

require_relative 'ask_gpt_cli/version'
require 'ask_gpt'

module AskGptCli
  class CLI
    API_KEY = ENV['OPENAI_API_KEY']
    MODEL = ENV['MODEL'] || 'gpt-3.5-turbo'

    def key_exists?
      !API_KEY.nil?
    end

    def ask
      incomplete_setup_text = 'Setup incomplete. Make sure you have set the OPENAI_API_KEY environment variable.'
      welcome_text = 'Welcome to Ask GPT CLI!. Ask me anything. Type "!q" to quit.'

      ask_gpt = AskGpt::GPT.new(API_KEY, model: MODEL)

      puts welcome_text

      loop do
        break unless key_exists? || puts(incomplete_setup_text)

        print "\nYou: "
        question = gets.chomp
        if question == '!q'
          puts "\nBye!"
          break
        end

        answer = ask_gpt.ask(question)
        puts "\nGPT: #{answer}"
      end
    end
  end
end
