module Morpher

  # Abstract namespace class for non tracking evaluators
  class Evaluator
    include AbstractType, Printer::Mixin, Adamantium::Flat

    def self.register(name)
      REGISTRY[name] = self
    end

    # Call evaluator in non tracking mode
    #
    # @param [Object] input
    #
    # @return [Object]
    #
    # @api private
    #
    abstract_method :call

    # Call evaluator in tracking mode
    #
    # @param [Object] input
    #
    # @return [Evaluation]
    #
    # @api private
    #
    abstract_method :evaluation

  end # Evaluator
end # Morpher
