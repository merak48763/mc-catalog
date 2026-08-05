data modify storage catalog:zzz io.bake_book.out.hidden_tabs[-1] \
  append value { \
    button: { \
      id: "filled_map", \
      components: { \
        custom_data: {"catalog/button": {next_tab: {}}}, item_model: "feather", \
        item_name: { \
          translate: "catalog.fmt.next_tab", fallback: "%s ❱", \
          with: [{translate: "catalog.book.next_tab", fallback: "Next Page", color: "#88ff88"}] \
        }, \
        bundle_contents: [{id: "bow"}] \
      } \
    } \
  }
