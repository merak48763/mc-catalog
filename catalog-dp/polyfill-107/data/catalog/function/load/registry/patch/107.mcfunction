# Reflect MC-279819
data modify storage catalog:registry pages."effect/mining_fatigue".lines[1].with_override[0] \
  merge value { \
    values: ["70", "91", "99.73"], \
    fallback: "99.92" \
  }
