# Spyglass type check workaround
data modify storage catalog:zzz temp.single_insertion.lookup \
  set from storage catalog:zzz io.single_insertion.in

# raw text
function catalog:util/single_insertion/lookup/select_text

# no format
execute unless data storage catalog:zzz temp.single_insertion.lookup.base_style \
  run return run data modify storage catalog:zzz io.single_insertion.out \
  set from storage catalog:zzz temp.single_insertion.raw_result
# format
  # base text
  data modify storage catalog:zzz io.single_insertion.out \
    set value {translate: "catalog.fmt.wrap", fallback: "%s", with: [""]}
  # merge style
  data modify storage catalog:zzz io.single_insertion.out \
    merge from storage catalog:zzz temp.single_insertion.lookup.base_style
  # content
  data modify storage catalog:zzz io.single_insertion.out.with[0] \
    set from storage catalog:zzz temp.single_insertion.raw_result
