module Pacer
  # Import the Pipes and related objects that we'll be using.
  module Pipes
    # TODO: move pipe imports to the modules that actually use them.
    import com.tinkerpop.pipes.AbstractPipe
    import com.tinkerpop.pipes.IdentityPipe
    import com.tinkerpop.pipes.Pipeline
    import com.tinkerpop.pipes.ExpandableIterator;

    import com.tinkerpop.pipes.filter.AbstractComparisonFilterPipe
    import com.tinkerpop.pipes.filter.RandomFilterPipe
    import com.tinkerpop.pipes.filter.DuplicateFilterPipe
    import com.tinkerpop.pipes.filter.RangeFilterPipe
    import com.tinkerpop.pipes.filter.ComparisonFilterPipe
    import com.tinkerpop.pipes.filter.CollectionFilterPipe

    import com.tinkerpop.pipes.pgm.GraphElementPipe
    import com.tinkerpop.pipes.pgm.IdPipe
    import com.tinkerpop.pipes.pgm.IdCollectionFilterPipe
    import com.tinkerpop.pipes.pgm.PropertyPipe

    EQUAL = ComparisonFilterPipe::Filter::EQUAL
    NOT_EQUAL = ComparisonFilterPipe::Filter::NOT_EQUAL
    #GREATER_THAN, LESS_THAN, GREATER_THAN_EQUAL, LESS_THAN_EQUAL
  end

  import java.util.Iterator
  begin
    java.util.ArrayList.new.iterator.next
  rescue NativeException => e
    NoSuchElementException = e.cause
    Pipes::NoSuchElementException = e.cause
  end
end

require 'pacer/pipe/ruby_pipe'

require 'pacer/pipe/never_pipe'
require 'pacer/pipe/block_filter_pipe'
require 'pacer/pipe/enumerable_pipe'
require 'pacer/pipe/expandable_pipe'
require 'pacer/pipe/group_pipe'
require 'pacer/pipe/loop_pipe'
require 'pacer/pipe/map_pipe'
require 'pacer/pipe/stream_sort_pipe'
require 'pacer/pipe/stream_uniq_pipe'
require 'pacer/pipe/type_filter_pipe'
require 'pacer/pipe/label_prefix_pipe'
require 'pacer/pipe/variable_store_iterator_wrapper'

require 'pacer/pipe/ruby_comparison_filter_pipe'
require 'pacer/pipe/property_comparison_pipe'
