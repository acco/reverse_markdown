module ReverseMarkdown
  class Config
    attr_accessor :unknown_tags, :github_flavored, :preserve_existing_markdown

    def initialize
      @unknown_tags    = :pass_through
      @github_flavored = false
      @inline_options = {}
    end

    def with(options = {})
      @inline_options = options
      result = yield
      @inline_options = {}
      result
    end

    def unknown_tags
      @inline_options[:unknown_tags] || @unknown_tags
    end

    def github_flavored
      @inline_options[:github_flavored] || @github_flavored
    end

    def preserve_existing_markdown
      @inline_options[:preserve_existing_markdown] || @inline_options
    end
  end
end
