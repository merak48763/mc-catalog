# $(id): baked book ID

$data modify storage catalog:zzz book.baked_contents \
  set from storage catalog:zzz baked_books.$(id)
