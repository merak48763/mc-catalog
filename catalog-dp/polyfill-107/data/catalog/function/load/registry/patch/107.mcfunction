# Reflect MC-279819
data modify storage catalog:registry pages."effect/mining_fatigue".lines[1].with_override[0] \
  merge value { \
    values: ["70", "91", "99.73"], \
    fallback: "99.92" \
  }

# Enchantment lookup table
data modify storage catalog:registry pages."enchantment/frost_walker".lines[4].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [3, 4, 5, 6, 7, 8, 9, 10, 11, 12] \
  }
data modify storage catalog:registry pages."enchantment/lunge".lines[4].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] \
  }
data modify storage catalog:registry pages."enchantment/sharpness".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5] \
  }
data modify storage catalog:registry pages."enchantment/smite".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [2.5, 5, 7.5, 10, 12.5, 15, 17.5, 20, 22.5, 25] \
  }
data modify storage catalog:registry pages."enchantment/bane_of_arthropods".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [2.5, 5, 7.5, 10, 12.5, 15, 17.5, 20, 22.5, 25] \
  }
data modify storage catalog:registry pages."enchantment/impaling".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [2.5, 5, 7.5, 10, 12.5, 15, 17.5, 20, 22.5, 25] \
  }
data modify storage catalog:registry pages."enchantment/power".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [50, 75, 100, 125, 150, 175, 200, 225, 250, 275] \
  }
data modify storage catalog:registry pages."enchantment/density".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5] \
  }
data modify storage catalog:registry pages."enchantment/piercing".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] \
  }
data modify storage catalog:registry pages."enchantment/multishot".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20] \
  }
data modify storage catalog:registry pages."enchantment/knockback".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] \
  }
data modify storage catalog:registry pages."enchantment/punch".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] \
  }
data modify storage catalog:registry pages."enchantment/protection".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64, 68, 72, 76], \
    fallback: 80 \
  }
data modify storage catalog:registry pages."enchantment/luck_of_the_sea".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] \
  }
data modify storage catalog:registry pages."enchantment/efficiency".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [2, 5, 10, 17, 26, 37, 50, 65, 82, 101] \
  }
data modify storage catalog:registry pages."enchantment/respiration".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] \
  }
data modify storage catalog:registry pages."enchantment/aqua_affinity".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [400, 800, 1200, 1600, 2000, 2400, 2800, 3200, 3600, 4000] \
  }
data modify storage catalog:registry pages."enchantment/soul_speed".lines[3].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [40.5, 51, 61.5, 72, 82.5, 93, 103.5, 114, 124.5, 135] \
  }

# Effect lookup table
data modify storage catalog:registry pages."effect/absorption".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [4, 8, 12, 16, 20, 24] \
  }
data modify storage catalog:registry pages."effect/absorption".lines[2].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [4, 8, 12, 16, 20, 24] \
  }
data modify storage catalog:registry pages."effect/conduit_power".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [20, 40, 60, 80, 100, 120] \
  }
data modify storage catalog:registry pages."effect/haste".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [10, 20, 30, 40, 50, 60] \
  }
data modify storage catalog:registry pages."effect/haste".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [20, 40, 60, 80, 100, 120] \
  }
data modify storage catalog:registry pages."effect/health_boost".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [4, 8, 12, 16, 20, 24] \
  }
data modify storage catalog:registry pages."effect/jump_boost".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: ["0.1", "0.2", "0.3", "0.4", "0.5", "0.6"] \
  }
data modify storage catalog:registry pages."effect/jump_boost".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 2, 3, 4, 5, 6] \
  }
data modify storage catalog:registry pages."effect/luck".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 2, 3, 4, 5, 6] \
  }
data modify storage catalog:registry pages."effect/mining_fatigue".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [10, 20, 30, 40, 50, 60] \
  }
data modify storage catalog:registry pages."effect/saturation".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 2, 3, 4, 5, 6] \
  }
data modify storage catalog:registry pages."effect/saturation".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [2, 4, 6, 8, 10, 12] \
  }
data modify storage catalog:registry pages."effect/saturation/lingering".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [0.5, 1, 1.5, 2, 2.5, 3] \
  }
data modify storage catalog:registry pages."effect/saturation/lingering".lines[1].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 2, 3, 4, 5, 6] \
  }
data modify storage catalog:registry pages."effect/speed".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [20, 40, 60, 80, 100, 120] \
  }
data modify storage catalog:registry pages."effect/strength".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [3, 6, 9, 12, 15, 18] \
  }
data modify storage catalog:registry pages."effect/unluck".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [1, 2, 3, 4, 5, 6] \
  }
data modify storage catalog:registry pages."effect/weakness".lines[0].with_override[0] \
  merge value { \
    type: "lookup", \
    values: [4, 8, 12, 16, 20, 24] \
  }
