data modify storage catalog:registry prefixes.empty set value ""

# level 0
data modify storage catalog:registry prefixes.a set value {text: "▶ ", color: "#ffdd99"}
data modify storage catalog:registry prefixes.c set value { \
  translate: "catalog.fmt.wrap", fallback: "", \
  with: [{text: "\ue001", font: "catalog:space"}], \
  extra: [{text: "▋ ", color: "#ffdd99"}] \
}
data modify storage catalog:registry prefixes.d set value {text: "◆ ", color: "#ffdd99"}

# level 1
data modify storage catalog:registry prefixes.c+a set value { \
  translate: "catalog.fmt.wrap", fallback: "  ", \
  with: [{text: "\ue001▋ ", font: "catalog:space"}], \
  extra: [{text: "▶ ", color: "#ffdd99"}] \
}
data modify storage catalog:registry prefixes.c+c set value { \
  translate: "catalog.fmt.wrap", fallback: "  ", \
  with: [{text: "\ue001▋ \ue001", font: "catalog:space"}], \
  extra: [{text: "▋ ", color: "#ffdd99"}] \
}
data modify storage catalog:registry prefixes.d+d set value { \
  translate: "catalog.fmt.wrap", fallback: "  ", \
  with: [{text: "◆ ", font: "catalog:space"}], \
  extra: [{text: "◆ ", color: "#ffdd99"}] \
}

# level 2
data modify storage catalog:registry prefixes.ca+d set value { \
  translate: "catalog.fmt.wrap", fallback: "    ", \
  with: [{text: "\ue001▋ ▶ ", font: "catalog:space"}], \
  extra: [{text: "◆ ", color: "#ffdd99"}] \
}
data modify storage catalog:registry prefixes.cc+a set value { \
  translate: "catalog.fmt.wrap", fallback: "    ", \
  with: [{text: "\ue001▋ \ue001▋ ", font: "catalog:space"}], \
  extra: [{text: "▶ ", color: "#ffdd99"}] \
}
data modify storage catalog:registry prefixes.cc+d set value { \
  translate: "catalog.fmt.wrap", fallback: "    ", \
  with: [{text: "\ue001▋ \ue001▋ ", font: "catalog:space"}], \
  extra: [{text: "◆ ", color: "#ffdd99"}] \
}

# level 3
data modify storage catalog:registry prefixes.cca+d set value { \
  translate: "catalog.fmt.wrap", fallback: "      ", \
  with: [{text: "\ue001▋ \ue001▋ ▶ ", font: "catalog:space"}], \
  extra: [{text: "◆ ", color: "#ffdd99"}] \
}
data modify storage catalog:registry prefixes.ccd+d set value { \
  translate: "catalog.fmt.wrap", fallback: "      ", \
  with: [{text: "\ue001▋ \ue001▋ ◆ ", font: "catalog:space"}], \
  extra: [{text: "◆ ", color: "#ffdd99"}] \
}
