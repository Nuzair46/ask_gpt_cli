# Ask GPT CLI

[![Gem Version](https://badge.fury.io/rb/ask_gpt_cli.svg)](https://badge.fury.io/rb/ask_gpt_cli)

The `ask_gpt_cli` is a Ruby gem that allows you to interact with the OpenAI GPT language model through the terminal with context.

## Installation

To use this gem, you need to have Ruby installed on your computer. You can install it using a package manager or follow the instructions on the [official Ruby website](https://www.ruby-lang.org/en/documentation/installation/).

After installing Ruby, you can install the `ask_gpt_cli` gem by running the following command:

```bash
gem install ask_gpt_cli
```

To use the `ask_gpt_cli` gem, you need to set the `OPENAI_API_KEY` environment variable to your OpenAI API key. You can find your API key from [OpenAI](https://platform.openai.com/account/api-keys).

Set the `OPENAI_API_KEY` environment variable by running the following command:

```bash
export OPENAI_API_KEY=<your_api_key>
```

## Usage

To use the `ask_gpt_cli` gem, run the following command:

```bash
ask_gpt_cli
```

The CLI will start, and you can ask GPT any question by typing it in the terminal. GPT will respond with an answer to your question.

## Options

You can customize the behavior of the `ask_gpt_cli` gem by setting the following environment variables:

- `ASK_GPT_MODEL`: The GPT model to use. Default is `gpt-3.5-turbo`.
  - You can use `gpt-4` if you have access to the GPT-4 model.

You can set the environment variables by running the following command:

```bash
export ASK_GPT_MODEL=<model>
```
