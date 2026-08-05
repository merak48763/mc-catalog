# Spyglass type check workaround
data modify storage catalog:zzz temp.single_insertion.wrapped \
  set from storage catalog:zzz io.single_insertion.in

# shortcut for no override
execute unless data storage catalog:zzz temp.single_insertion.wrapped.with_override[0] \
  run return run data modify storage catalog:zzz io.single_insertion.out \
  set from storage catalog:zzz temp.single_insertion.wrapped.base

# resolve insertions
  # push data
    # create storage
    data modify storage catalog:zzz stack append value {}
    # current input/output of resolver
    data modify storage catalog:zzz stack[-1].resolver_in \
      set from storage catalog:zzz io.resolve_insertions.in
    data modify storage catalog:zzz stack[-1].resolver_out \
      set from storage catalog:zzz io.resolve_insertions.out
    # base text
    data modify storage catalog:zzz stack[-1].base_text \
      set from storage catalog:zzz temp.single_insertion.wrapped.base

  # call resolver
  data modify storage catalog:zzz io.resolve_insertions.in \
    set from storage catalog:zzz temp.single_insertion.wrapped.with_override
  function catalog:util/resolve_insertions

  # restore output
  data modify storage catalog:zzz io.single_insertion.out \
    set from storage catalog:zzz stack[-1].base_text
  # override "with" list
  data modify storage catalog:zzz io.single_insertion.out.with \
    set from storage catalog:zzz io.resolve_insertions.out

  # pop data
    # current input/output of resolver
    data modify storage catalog:zzz io.resolve_insertions.in \
      set from storage catalog:zzz stack[-1].resolver_in
    data modify storage catalog:zzz io.resolve_insertions.out \
      set from storage catalog:zzz stack[-1].resolver_out
    # remove storage
    data remove storage catalog:zzz stack[-1]
