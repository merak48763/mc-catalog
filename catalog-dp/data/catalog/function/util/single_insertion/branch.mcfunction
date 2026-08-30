# Spyglass type check workaround
data modify storage catalog:zzz temp.single_insertion.branch \
  set from storage catalog:zzz io.single_insertion.in

# raw text
function catalog:util/single_insertion/branch/select_text

# add format & write to output
function catalog:util/single_insertion/common/apply_base_format {type: "branch"}
