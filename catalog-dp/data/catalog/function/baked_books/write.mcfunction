# $(id): baked book ID

$data modify storage catalog:zzz baked_books.$(id) \
  set from storage catalog:zzz book.baked_contents
