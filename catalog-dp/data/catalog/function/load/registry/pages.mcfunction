# no syntax check
# to avoid lagging Spyglass

data modify storage catalog:registry pages."catalog/ouroboros" set value { \
  title: { \
    translate: "catalog.fmt.wrap", fallback: "%2$s", \
    with: [ \
      {text: "\ud83d\udc31", font: "catalog:icon", shadow_color: 0}, \
      {text: ":learned:", color: "#88ff88"} \
    ] \
  }, \
  lines: [ \
    {content: {translate: "catalog.book", fallback: "Book of the Universe Cat"}}, \
    {content: {translate: "catalog.book.desc.1", fallback: "Subtitle: The Reinvented Wheel"}} \
  ], \
  button_color: 5635925 \
}

data modify storage catalog:registry pages."enchantment/binding_curse" set value { \
  title: {translate: "enchantment.minecraft.binding_curse", color: "red"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.armor", color: "gray"}}, \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.binding_curse.1", fallback: "Cannot be taken off"}} \
  ], \
  button_color: 14680064 \
}
data modify storage catalog:registry pages."enchantment/vanishing_curse" set value { \
  title: {translate: "enchantment.minecraft.vanishing_curse", color: "red"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.vanishing_curse.1", fallback: "The item vanishes when dropped on death"}} \
  ], \
  button_color: 14680064 \
}
data modify storage catalog:registry pages."enchantment/riptide" set value { \
  title: {translate: "enchantment.minecraft.riptide", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.riptide.1", fallback: "Can only be thrown in water or rain"}}, \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.riptide.2", fallback: "When thrown:", color: "#ccb17a"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.enchantment.riptide.3", fallback: "Launches user with the trident"}}, \
    {prefix: "ca+d", content: {translate: "catalog.desc.enchantment.riptide.4", fallback: "Propulsion increases with level"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.enchantment.riptide.5", fallback: "Attacks collided mob"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/channeling" set value { \
  title: {translate: "enchantment.minecraft.channeling", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.channeling.1", fallback: "When thrown at mob or lightning rod:", color: "#ccb17a"}}, \
    {prefix: "c+c", content: {translate: "catalog.desc.enchantment.channeling.2", fallback: "If the target is in thunderstorm:", color: "#ccb17a"}}, \
    {prefix: "cc+a", content: {translate: "catalog.desc.enchantment.channeling.3", fallback: "Creates a lightning bolt"}} \
  ], \
  button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/wind_burst" set value { \
  title: {translate: "enchantment.minecraft.wind_burst", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.wind_burst.1", fallback: "When performing falling attack:", color: "#ccb17a"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.enchantment.wind_burst.2", fallback: "Launches user up"}}, \
    {prefix: "ca+d", content: {translate: "catalog.desc.enchantment.wind_burst.3", fallback: "Propulsion increases with level"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/frost_walker" set value { \
  title: {translate: "enchantment.minecraft.frost_walker", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.feet", color: "gray"}}, \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.frost_walker.1", fallback: "Immune to damage from:"}}, \
    {prefix: "d+d", content: {translate: "catalog.desc.enchantment.frost_walker.2", fallback: "Magma Block, Campfires"}}, \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.frost_walker.3", fallback: "While walking:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.enchantment.frost_walker.4", fallback: "Frosts water surface within %s blocks"}, \
      with_override: [{ \
        type: "lookup", values: ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12"], \
        generic: {translate: "catalog.desc.enchantment.frost_walker.4.1_g", fallback: "[2 + lvl]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/lunge" set value { \
  title: {translate: "enchantment.minecraft.lunge", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.lunge.1", fallback: "When performing jab attack:", color: "#ccb17a"}}, \
    {prefix: "c+c", content: {translate: "catalog.desc.enchantment.lunge.2", fallback: "If food point ≥ 6:", color: "#ccb17a"}}, \
    {prefix: "cc+a", content: {translate: "catalog.desc.enchantment.lunge.3", fallback: "Launches user forward"}}, \
    {prefix: "cca+d", content: {translate: "catalog.desc.enchantment.lunge.4", fallback: "Propulsion increases with level"}}, \
    { \
      prefix: "cc+a", \
      content: {translate: "catalog.desc.enchantment.lunge.5", fallback: "Consumes %s food point%s"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"], \
          generic: {translate: "catalog.desc.enchantment.lunge.5.1_g", fallback: "[lvl]"}, \
          base_style: {color: "#ff88ff"} \
        }, \
        { \
          type: "lookup", values: [""], \
          generic: {translate: "catalog.desc.enchantment.lunge.5.pl.2", fallback: "s"} \
        } \
      ] \
    }, \
    {prefix: "cc+a", content: {translate: "catalog.desc.enchantment.lunge.6", fallback: "Loses 1 durability point"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/sharpness" set value { \
  title: {translate: "enchantment.minecraft.sharpness", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.enchantment.sharpness.1", fallback: "+%s %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["1", "1.5", "2", "2.5", "3", "3.5", "4", "4.5", "5", "5.5"], \
          generic: {translate: "catalog.desc.enchantment.sharpness.1.1_g", fallback: "[0.5 + (0.5 * lvl)]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.sharpness.1.2", fallback: "Damage dealt", color: "#f0f0f0"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/smite" set value { \
  title: {translate: "enchantment.minecraft.smite", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.smite.1", fallback: "When attacking undead mobs:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.enchantment.smite.2", fallback: "+%s %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["2.5", "5", "7.5", "10", "12.5", "15", "17.5", "20", "22.5", "25"], \
          generic: {translate: "catalog.desc.enchantment.smite.2.1_g", fallback: "[2.5 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.smite.2.2", fallback: "Damage dealt", color: "#f0f0f0"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/bane_of_arthropods" set value { \
  title: {translate: "enchantment.minecraft.bane_of_arthropods", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.bane_of_arthropods.1", fallback: "When attacking arthropods:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.enchantment.bane_of_arthropods.2", fallback: "+%s %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["2.5", "5", "7.5", "10", "12.5", "15", "17.5", "20", "22.5", "25"], \
          generic: {translate: "catalog.desc.enchantment.bane_of_arthropods.2.1_g", fallback: "[2.5 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.bane_of_arthropods.2.2", fallback: "Damage dealt", color: "#f0f0f0"}} \
      ] \
    }, \
    { \
      prefix: "c+a", \
      content: { \
        translate: "catalog.desc.enchantment.bane_of_arthropods.3", fallback: "Inflicts %s", \
        with: [{translate: "potion.withAmplifier", with: [{translate: "effect.minecraft.slowness"}, {translate: "potion.potency.3"}], color: "#ff8888"}] \
      } \
    }, \
    { \
      prefix: "ca+d", \
      content: {translate: "catalog.desc.enchantment.bane_of_arthropods.4", fallback: "Random duration up to %s"}, \
      with_override: [{ \
        type: "lookup", values: ["00:01.5", "00:02", "00:02.5", "00:03", "00:03.5", "00:04", "00:04.5", "00:05", "00:05.5", "00:06"], \
        generic: {translate: "catalog.desc.enchantment.bane_of_arthropods.4.1_g", fallback: "[1 + (0.5 * lvl)] seconds"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/impaling" set value { \
  title: {translate: "enchantment.minecraft.impaling", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.impaling.1", fallback: "When attacking aquatic mobs:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.enchantment.impaling.2", fallback: "+%s %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["2.5", "5", "7.5", "10", "12.5", "15", "17.5", "20", "22.5", "25"], \
          generic: {translate: "catalog.desc.enchantment.impaling.2.1_g", fallback: "[2.5 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.impaling.2.2", fallback: "Damage dealt", color: "#f0f0f0"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/power" set value { \
  title: {translate: "enchantment.minecraft.power", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.power.1", fallback: "Applies to arrows shot:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "catalog.desc.enchantment.power.2", fallback: "+%s%% %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["50", "75", "100", "125", "150", "175", "200", "225", "250", "275"], \
          generic: {translate: "catalog.desc.enchantment.power.2.1_g", fallback: "[25 + (25 * lvl)]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.power.2.2", fallback: "Damage dealt", color: "#f0f0f0"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/density" set value { \
  title: {translate: "enchantment.minecraft.density", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.density.1", fallback: "When performing smash attack:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.enchantment.density.2", fallback: "+%s %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["0.5", "1", "1.5", "2", "2.5", "3", "3.5", "4", "4.5", "5"], \
          generic: {translate: "catalog.desc.enchantment.density.2.1_g", fallback: "[0.5 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.density.2.2", fallback: "Damage dealt per block fallen", color: "#f0f0f0"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/breach" set value { \
  title: {translate: "enchantment.minecraft.breach", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.enchantment.breach.1", fallback: "Bypasses %s armor effectiveness"}, \
      with_override: [{ \
        type: "lookup", values: ["15%", "30%", "45%", "60%", "75%"], \
        fallback: "80%", \
        generic: {translate: "catalog.desc.enchantment.breach.1.1_g", fallback: "[15 * lvl]%%"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/piercing" set value { \
  title: {translate: "enchantment.minecraft.piercing", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.piercing.1", fallback: "Applies to arrows shot:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "catalog.desc.enchantment.piercing.2", fallback: "+%s %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"], \
          generic: {translate: "catalog.desc.enchantment.piercing.2.1_g", fallback: "[lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.piercing.2.2", fallback: "Piercing level", color: "#f0f0f0"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/sweeping_edge" set value { \
  title: {translate: "enchantment.minecraft.sweeping_edge", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.mainhand", color: "gray"}}, \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["0.5", "0.67", "0.75", "0.8", "0.83", "0.86", "0.88", "0.89", "0.9", "0.91"], \
          generic: {translate: "catalog.desc.enchantment.sweeping_edge.1.1_g", fallback: "[lvl / (1 + lvl)]"} \
        }, \
        {value: {translate: "attribute.name.sweeping_damage_ratio", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/multishot" set value { \
  title: {translate: "enchantment.minecraft.multishot", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.enchantment.multishot.1", fallback: "+%s %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["2", "4", "6", "8", "10", "12", "14", "16", "18", "20"], \
          generic: {translate: "catalog.desc.enchantment.multishot.1.1_g", fallback: "[2 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.multishot.1.2", fallback: "Projectiles shot", color: "#f0f0f0"}} \
      ] \
    } \
  ], \
  context_type: "enchantment_lv1", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/fire_aspect" set value { \
  title: {translate: "enchantment.minecraft.fire_aspect", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.fire_aspect.1", fallback: "When attacking:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.enchantment.fire_aspect.2", fallback: "Ignites targets (%s)"}, \
      with_override: [{ \
        type: "lookup", values: ["00:04", "00:08", "00:12", "00:16", "00:20", "00:24", "00:28", "00:32", "00:36", "00:40"], \
        generic: {translate: "catalog.desc.enchantment.fire_aspect.2.1_g", fallback: "[4 * lvl] seconds"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/flame" set value { \
  title: {translate: "enchantment.minecraft.flame", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.flame.1", fallback: "Applies to arrows shot:"}}, \
    {prefix: "d+d", content: {translate: "catalog.desc.enchantment.flame.2", fallback: "Ignites the arrow (01:40)"}} \
  ], \
  button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/knockback" set value { \
  title: {translate: "enchantment.minecraft.knockback", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.enchantment.knockback.1", fallback: "+%s %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"], \
          generic: {translate: "catalog.desc.enchantment.knockback.1.1_g", fallback: "[lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.knockback.1.2", fallback: "Knockback dealt", color: "#f0f0f0"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/punch" set value { \
  title: {translate: "enchantment.minecraft.punch", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.punch.1", fallback: "Applies to arrows shot:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "catalog.desc.enchantment.punch.2", fallback: "+%s %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"], \
          generic: {translate: "catalog.desc.enchantment.punch.2.1_g", fallback: "[lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.punch.2.2", fallback: "Knockback dealt", color: "#f0f0f0"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/protection" set value { \
  title: {translate: "enchantment.minecraft.protection", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.armor", color: "gray"}}, \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.enchantment.protection.1", fallback: "-%s%% %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["4", "8", "12", "16", "20", "24", "28", "32", "36", "40", "44", "48", "52", "56", "60", "64", "68", "72", "76"], \
          fallback: "80", \
          generic: {translate: "catalog.desc.enchantment.protection.1.1_g", fallback: "[4 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.protection.1.2", fallback: "Damage taken", color: "#f0f0f0"}} \
      ] \
    }, \
    {prefix: "d+d", content: {translate: "catalog.desc.enchantment.protection.2", fallback: "Capped at -80%%"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/blast_protection" set value { \
  title: {translate: "enchantment.minecraft.blast_protection", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.armor", color: "gray"}}, \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["0.15", "0.3", "0.45", "0.6", "0.75", "0.9"], \
          fallback: "1", \
          generic: {translate: "catalog.desc.enchantment.blast_protection.1.1_g", fallback: "[0.15 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.explosion_knockback_resistance", color: "#ccccff"}} \
      ] \
    }, \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.blast_protection.2", fallback: "When taking explosion damage:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.enchantment.blast_protection.3", fallback: "-%s%% %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["8", "16", "24", "32", "40", "48", "56", "64", "72"], \
          fallback: "80", \
          generic: {translate: "catalog.desc.enchantment.blast_protection.3.1_g", fallback: "[8 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.blast_protection.3.2", fallback: "Damage taken", color: "#f0f0f0"}} \
      ] \
    }, \
    {prefix: "ca+d", content: {translate: "catalog.desc.enchantment.blast_protection.4", fallback: "Capped at -80%%"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/fire_protection" set value { \
  title: {translate: "enchantment.minecraft.fire_protection", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.armor", color: "gray"}}, \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.take.1", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["15", "30", "45", "60", "75", "90"], \
          fallback: "100", \
          generic: {translate: "catalog.desc.enchantment.fire_protection.1.1_g", fallback: "[15 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.burning_time", color: "#ccccff"}} \
      ] \
    }, \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.fire_protection.2", fallback: "When taking fire damage:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.enchantment.fire_protection.3", fallback: "-%s%% %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["8", "16", "24", "32", "40", "48", "56", "64", "72"], \
          fallback: "80", \
          generic: {translate: "catalog.desc.enchantment.fire_protection.3.1_g", fallback: "[8 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.fire_protection.3.2", fallback: "Damage taken", color: "#f0f0f0"}} \
      ] \
    }, \
    {prefix: "ca+d", content: {translate: "catalog.desc.enchantment.fire_protection.4", fallback: "Capped at -80%%"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/projectile_protection" set value { \
  title: {translate: "enchantment.minecraft.projectile_protection", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.armor", color: "gray"}}, \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.projectile_protection.1", fallback: "When taking projectile damage:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.enchantment.projectile_protection.2", fallback: "-%s%% %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["8", "16", "24", "32", "40", "48", "56", "64", "72"], \
          fallback: "80", \
          generic: {translate: "catalog.desc.enchantment.projectile_protection.2.1_g", fallback: "[8 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.projectile_protection.2.2", fallback: "Damage taken", color: "#f0f0f0"}} \
      ] \
    }, \
    {prefix: "ca+d", content: {translate: "catalog.desc.enchantment.projectile_protection.3", fallback: "Capped at -80%%"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/feather_falling" set value { \
  title: {translate: "enchantment.minecraft.feather_falling", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.armor", color: "gray"}}, \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.feather_falling.1", fallback: "When taking fall damage:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.enchantment.feather_falling.2", fallback: "-%s%% %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["12", "24", "36", "48", "60", "72"], \
          fallback: "80", \
          generic: {translate: "catalog.desc.enchantment.feather_falling.2.1_g", fallback: "[12 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.feather_falling.2.2", fallback: "Damage taken", color: "#f0f0f0"}} \
      ] \
    }, \
    {prefix: "ca+d", content: {translate: "catalog.desc.enchantment.feather_falling.3", fallback: "Capped at -80%%"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/fortune" set value { \
  title: {translate: "enchantment.minecraft.fortune", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.fortune.1", fallback: "Raises amount of some block drops"}}, \
    {prefix: "d+d", content: {translate: "catalog.desc.enchantment.fortune.2", fallback: "Amount increases with level"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/looting" set value { \
  title: {translate: "enchantment.minecraft.looting", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.looting.1", fallback: "Raises amount of some mob drops"}}, \
    {prefix: "d+d", content: {translate: "catalog.desc.enchantment.looting.2", fallback: "Amount increases with level"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/silk_touch" set value { \
  title: {translate: "enchantment.minecraft.silk_touch", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.silk_touch.1", fallback: "Changes block drops to themselves"}} \
  ], \
  button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/luck_of_the_sea" set value { \
  title: {translate: "enchantment.minecraft.luck_of_the_sea", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.luck_of_the_sea.1", fallback: "Applies to fishing result drawing:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"], \
          generic: {translate: "catalog.desc.enchantment.luck_of_the_sea.2.1_g", fallback: "[lvl]"} \
        }, \
        {value: {translate: "attribute.name.luck", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/efficiency" set value { \
  title: {translate: "enchantment.minecraft.efficiency", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.mainhand", color: "gray"}}, \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["2", "5", "10", "17", "26", "37", "50", "65", "82", "101"], \
          generic: {translate: "catalog.desc.enchantment.efficiency.1.1_g", fallback: "[1 + (lvl)²]"} \
        }, \
        {value: {translate: "attribute.name.mining_efficiency", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/quick_charge" set value { \
  title: {translate: "enchantment.minecraft.quick_charge", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.enchantment.quick_charge.1", fallback: "-%ss %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["0.25", "0.5", "0.75", "1"], \
          fallback: "1.25", \
          generic: {translate: "catalog.desc.enchantment.quick_charge.1.1_g", fallback: "[0.25 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.enchantment.quick_charge.1.2", fallback: "Crossbow charging time", color: "#f0f0f0"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
# so janky bruh
data modify storage catalog:registry pages."enchantment/lure" set value { \
  title: {translate: "enchantment.minecraft.lure", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "catalog.fmt.wrap", fallback: "%s", color: "#8888ff"}, \
      with_override: [{ \
        type: "branch", threshold: 5, \
        on_le: { \
          type: "wrapped", base: {translate: "catalog.desc.enchantment.lure.1", fallback: "-%ss %s"}, \
          with_override: [ \
            { \
              type: "lookup", values: ["5", "10", "15", "20", "25"], \
              generic: "<never>" \
            }, \
            {value: {translate: "catalog.desc.enchantment.lure.1.2", fallback: "Fish bite time", color: "#f0f0f0"}} \
          ] \
        }, \
        on_gt: {value: { \
          translate: "catalog.desc.enchantment.lure.1_inf", fallback: "+∞ %s", \
          with: [{translate: "catalog.desc.enchantment.lure.1.2", fallback: "Fish bite time", color: "#f0f0f0"}], \
          color: "#ff8888" \
        }}, \
        generic: { \
          translate: "catalog.desc.enchantment.lure.1", fallback: "-%ss %s", \
          with: [ \
            {translate: "catalog.desc.enchantment.lure.1.1_g", fallback: "[5 * lvl]"}, \
            {translate: "catalog.desc.enchantment.lure.1.2", fallback: "Fish bite time", color: "#f0f0f0"} \
          ] \
        } \
      }] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/respiration" set value { \
  title: {translate: "enchantment.minecraft.respiration", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.head", color: "gray"}}, \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"], \
          generic: {translate: "catalog.desc.enchantment.respiration.1.1_g", fallback: "[lvl]"} \
        }, \
        {value: {translate: "attribute.name.oxygen_bonus", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/aqua_affinity" set value { \
  title: {translate: "enchantment.minecraft.aqua_affinity", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.head", color: "gray"}}, \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.2", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["400", "800", "1200", "1600", "2000", "2400", "2800", "3200", "3600", "4000"], \
          generic: {translate: "catalog.desc.enchantment.aqua_affinity.1.1_g", fallback: "[400 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.submerged_mining_speed", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "enchantment_lv1", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/soul_speed" set value { \
  title: {translate: "enchantment.minecraft.soul_speed", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.feet", color: "gray"}}, \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.soul_speed.1", fallback: "Negates slowdown effect of Soul Sand"}}, \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.soul_speed.2", fallback: "While walking on Soul Sand or Soul Soil:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "attribute.modifier.plus.1", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["40.5", "51", "61.5", "72", "82.5", "93", "103.5", "114", "124.5", "135"], \
          generic: {translate: "catalog.desc.enchantment.soul_speed.3.1_g", fallback: "[30 + (10.5 * lvl)]"} \
        }, \
        {value: {translate: "attribute.name.movement_speed", color: "#ccccff"}} \
      ] \
    }, \
    {prefix: "c+a", content: {translate: "catalog.desc.enchantment.soul_speed.4", fallback: "Randomly loses durability"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/swift_sneak" set value { \
  title: {translate: "enchantment.minecraft.swift_sneak", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.legs", color: "gray"}}, \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["0.15", "0.3", "0.45", "0.6"], \
          fallback: "0.7", \
          generic: {translate: "catalog.desc.enchantment.swift_sneak.1.1_g", fallback: "[0.15 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.sneaking_speed", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/depth_strider" set value { \
  title: {translate: "enchantment.minecraft.depth_strider", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.feet", color: "gray"}}, \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["0.33", "0.67"], \
          fallback: "1", \
          generic: {translate: "catalog.desc.enchantment.depth_strider.1.1_g", fallback: "[lvl / 3]"} \
        }, \
        {value: {translate: "attribute.name.water_movement_efficiency", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/thorns" set value { \
  title: {translate: "enchantment.minecraft.thorns", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.any", color: "gray"}}, \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.thorns.1", fallback: "While attacked:", color: "#ccb17a"}}, \
    { \
      prefix: "c+c", \
      content: {translate: "catalog.desc.enchantment.thorns.2", fallback: "%s chance:", color: "#ccb17a"}, \
      with_override: [{ \
        type: "lookup", values: ["15%", "30%", "45%", "60%", "75%", "90%"], \
        fallback: "100", \
        generic: {translate: "catalog.desc.enchantment.thorns.2.1_g", fallback: "[15 * lvl]%%"}, \
        base_style: {color: "#ffff88"} \
      }] \
    }, \
    {prefix: "cc+a", content: {translate: "catalog.desc.enchantment.thorns.3", fallback: "Inflicts damage back to the attacker"}}, \
    {prefix: "cca+d", content: {translate: "catalog.desc.enchantment.thorns.4", fallback: "Random damage amount up to 5"}}, \
    {prefix: "cc+a", content: {translate: "catalog.desc.enchantment.thorns.5", fallback: "Loses 2 durability points"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/loyalty" set value { \
  title: {translate: "enchantment.minecraft.loyalty", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.loyalty.1", fallback: "When thrown:", color: "#ccb17a"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.enchantment.loyalty.2", fallback: "The trident returns after hit"}}, \
    {prefix: "ca+d", content: {translate: "catalog.desc.enchantment.loyalty.3", fallback: "Speed increases with level"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/unbreaking" set value { \
  title: {translate: "enchantment.minecraft.unbreaking", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.unbreaking.1", fallback: "When losing durability:", color: "#ccb17a"}}, \
    { \
      prefix: "c+c", \
      content: {translate: "catalog.desc.enchantment.unbreaking.2", fallback: "%s chance:", color: "#ccb17a"}, \
      with_override: [{ \
        type: "lookup", values: ["50%", "66.67%", "75%", "80%", "83.33%", "85.71%", "87.5%", "88.89%", "90%", "90.91%"], \
        generic: {translate: "catalog.desc.enchantment.unbreaking.2.1_g", fallback: "[lvl / (1 + lvl)]"}, \
        base_style: {color: "#ffff88"} \
      }] \
    }, \
    {prefix: "cc+a", content: {translate: "catalog.desc.enchantment.unbreaking.3", fallback: "Negates the durability loss"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/unbreaking/armor" set value { \
  title: {translate: "enchantment.minecraft.unbreaking", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.unbreaking.1", fallback: "When losing durability:", color: "#ccb17a"}}, \
    { \
      prefix: "c+c", \
      content: {translate: "catalog.desc.enchantment.unbreaking.2", fallback: "%s chance:", color: "#ccb17a"}, \
      with_override: [{ \
        type: "lookup", values: ["20%", "26.67%", "30%", "32%", "33.33%", "34.29%", "35%", "35.56%", "36%", "36.36%"], \
        generic: {translate: "catalog.desc.enchantment.unbreaking.2.1_g_armor", fallback: "[(2 * lvl) / (5 + (5 * lvl))]"}, \
        base_style: {color: "#ffff88"} \
      }] \
    }, \
    {prefix: "cc+a", content: {translate: "catalog.desc.enchantment.unbreaking.3", fallback: "Negates the durability loss"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/unbreaking/on_book" set value { \
  title: {translate: "enchantment.minecraft.unbreaking", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.enchantment.unbreaking.1", fallback: "When losing durability:", color: "#ccb17a"}}, \
    {prefix: "c+c", content: {translate: "catalog.desc.enchantment.unbreaking.2_g", fallback: "Randomly:", color: "#ccb17a"}}, \
    {prefix: "cc+d", content: {translate: "catalog.desc.enchantment.unbreaking.on_book.1", fallback: "Chances:", color: "#c0c0c0"}}, \
    { \
      prefix: "ccd+d", \
      content: {translate: "catalog.desc.enchantment.unbreaking.on_book.2", fallback: "On armor: %s", color: "#c0c0c0"}, \
      with_override: [{ \
        type: "lookup", values: ["20%", "26.67%", "30%", "32%", "33.33%", "34.29%", "35%", "35.56%", "36%", "36.36%"], \
        generic: {translate: "catalog.desc.enchantment.unbreaking.2.1_g_armor", fallback: "[(2 * lvl) / (5 + (5 * lvl))]"}, \
        base_style: {color: "#cc6ccc"} \
      }] \
    }, \
    { \
      prefix: "ccd+d", \
      content: {translate: "catalog.desc.enchantment.unbreaking.on_book.3", fallback: "On other items: %s", color: "#c0c0c0"}, \
      with_override: [{ \
        type: "lookup", values: ["50%", "66.67%", "75%", "80%", "83.33%", "85.71%", "87.5%", "88.89%", "90%", "90.91%"], \
        generic: {translate: "catalog.desc.enchantment.unbreaking.2.1_g", fallback: "[lvl / (1 + lvl)]"}, \
        base_style: {color: "#cc6ccc"} \
      }] \
    }, \
    {prefix: "cc+a", content: {translate: "catalog.desc.enchantment.unbreaking.3", fallback: "Negates the durability loss"}} \
  ], \
  context_type: "enchantment", button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/infinity" set value { \
  title: {translate: "enchantment.minecraft.infinity", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.infinity.1", fallback: "Does not consume regular arrows"}} \
  ], \
  button_color: 11141375 \
}
data modify storage catalog:registry pages."enchantment/mending" set value { \
  title: {translate: "enchantment.minecraft.mending", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.any", color: "gray"}}, \
    {prefix: "d", content: {translate: "catalog.desc.enchantment.mending.1", fallback: "Repairs the item with collected XP"}} \
  ], \
  button_color: 11141375 \
}

data modify storage catalog:registry pages."effect/absorption" set value { \
  title: {translate: "effect.minecraft.absorption", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["4", "8", "12", "16", "20", "24"], \
          generic: {translate: "catalog.desc.effect.absorption.1.1_g", fallback: "[4 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.max_absorption", color: "#ccccff"}} \
      ] \
    }, \
    {prefix: "c", content: {translate: "catalog.desc.effect.absorption.2", fallback: "Upon applied:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.effect.absorption.3", fallback: "Restores absorption amount to %s"}, \
      with_override: [{ \
        type: "lookup", values: ["4", "8", "12", "16", "20", "24"], \
        generic: {translate: "catalog.desc.effect.absorption.3.1_g", fallback: "[4 * lvl]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "effect", button_color: 2445989 \
}
data modify storage catalog:registry pages."effect/bad_omen" set value { \
  title: {translate: "effect.minecraft.bad_omen", color: "red"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.effect.bad_omen.1", fallback: "When entering a village:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.effect.bad_omen.2", fallback: "Transforms into %s"}, \
      with_override: [{ \
        type: "wrapped", base: {translate: "potion.withDuration", color: "#ff8888"}, \
        with_override: [ \
          { \
            type: "branch", threshold: 0, \
            on_le: {value: {translate: "effect.minecraft.raid_omen"}}, \
            on_gt: { \
              type: "wrapped", base: {translate: "potion.withAmplifier"}, \
              with_override: [ \
                {value: {translate: "effect.minecraft.raid_omen"}}, \
                {type: "effect_amplifier"} \
              ] \
            }, \
            generic: {translate: "potion.withAmplifier", with: [{translate: "effect.minecraft.raid_omen"}, {translate: "catalog.desc.effect.bad_omen.2.1.g_amp", fallback: "[lvl]"}]} \
          }, \
          {value: "00:30"} \
        ] \
      }] \
    }, \
    {prefix: "c", content: {translate: "catalog.desc.effect.bad_omen.3", fallback: "When seen by a regular trial spawner:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.effect.bad_omen.4", fallback: "Transforms into %s"}, \
      with_override: [{ \
        type: "wrapped", base: {translate: "potion.withDuration", color: "#ff8888"}, \
        with_override: [ \
          {value: {translate: "effect.minecraft.trial_omen"}}, \
          { \
            type: "lookup", values: ["15:00", "30:00", "45:00", "60:00", "75:00", "90:00"], \
            generic: {translate: "catalog.desc.effect.bad_omen.4.1.g_dur", fallback: "[15 * lvl] minutes"} \
          } \
        ] \
      }] \
    } \
  ], \
  context_type: "effect", button_color: 745784 \
}
data modify storage catalog:registry pages."effect/blindness" set value { \
  title: {translate: "effect.minecraft.blindness", color: "red"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.blindness.1", fallback: "Impairs vision"}}, \
    {prefix: "d", content: {translate: "catalog.desc.effect.blindness.2", fallback: "Disables sprinting"}}, \
    {prefix: "d", content: {translate: "catalog.desc.effect.blindness.3", fallback: "Disables critical attack"}} \
  ], \
  button_color: 2039587 \
}
data modify storage catalog:registry pages."effect/breath_of_the_nautilus" set value { \
  title: {translate: "effect.minecraft.breath_of_the_nautilus", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.effect.breath_of_the_nautilus.1", fallback: "When in water:", color: "#ccb17a"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.effect.breath_of_the_nautilus.2", fallback: "Stops air depletion"}} \
  ], \
  button_color: 65518 \
}
data modify storage catalog:registry pages."effect/conduit_power" set value { \
  title: {translate: "effect.minecraft.conduit_power", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.1", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["20", "40", "60", "80", "100", "120"], \
          generic: {translate: "catalog.desc.effect.conduit_power.1.1_g", fallback: "[20 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.block_break_speed", color: "#ccccff"}} \
      ] \
    }, \
    { \
      prefix: "d+d", \
      content: { \
        translate: "catalog.desc.effect.conduit_power.2", fallback: "Does not stack with %s", \
        with: [{translate: "effect.minecraft.haste", color: "#8888ff"}] \
      } \
    }, \
    {prefix: "c", content: {translate: "catalog.desc.effect.conduit_power.3", fallback: "When in water:", color: "#ccb17a"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.effect.conduit_power.4", fallback: "Replenishes air"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.effect.conduit_power.5", fallback: "Brightens vision"}} \
  ], \
  context_type: "effect", button_color: 1950417 \
}
data modify storage catalog:registry pages."effect/darkness" set value { \
  title: {translate: "effect.minecraft.darkness", color: "red"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.darkness.1", fallback: "Dims vision"}} \
  ], \
  button_color: 2696993 \
}
data modify storage catalog:registry pages."effect/dolphins_grace" set value { \
  title: {translate: "effect.minecraft.dolphins_grace", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.dolphins_grace.1", fallback: "Decreases underwater movement resistance"}} \
  ], \
  button_color: 8954814 \
}
data modify storage catalog:registry pages."effect/fire_resistance" set value { \
  title: {translate: "effect.minecraft.fire_resistance", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.fire_resistance.1", fallback: "Immune to fire damage"}} \
  ], \
  button_color: 16750848 \
}
data modify storage catalog:registry pages."effect/glowing" set value { \
  title: {translate: "effect.minecraft.glowing", color: "red"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.glowing.1", fallback: "Creates a glowing outline"}} \
  ], \
  button_color: 9740385 \
}
data modify storage catalog:registry pages."effect/haste" set value { \
  title: {translate: "effect.minecraft.haste", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.2", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["10", "20", "30", "40", "50", "60"], \
          generic: {translate: "catalog.desc.effect.haste.1.1_g", fallback: "[10 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.attack_speed", color: "#ccccff"}} \
      ] \
    }, \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.1", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["20", "40", "60", "80", "100", "120"], \
          generic: {translate: "catalog.desc.effect.haste.2.1_g", fallback: "[20 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.block_break_speed", color: "#ccccff"}} \
      ] \
    }, \
    { \
      prefix: "d+d", \
      content: { \
        translate: "catalog.desc.effect.haste.3", fallback: "Does not stack with %s", \
        with: [{translate: "effect.minecraft.conduit_power", color: "#8888ff"}] \
      } \
    } \
  ], \
  context_type: "effect", button_color: 14270531 \
}
data modify storage catalog:registry pages."effect/health_boost" set value { \
  title: {translate: "effect.minecraft.health_boost", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["4", "8", "12", "16", "20", "24"], \
          generic: {translate: "catalog.desc.effect.health_boost.1.1_g", fallback: "[4 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.max_health", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "effect", button_color: 16284963 \
}
data modify storage catalog:registry pages."effect/hero_of_the_village" set value { \
  title: {translate: "effect.minecraft.hero_of_the_village", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.effect.hero_of_the_village.1", fallback: "Receives %s discount from villagers"}, \
      with_override: [{ \
        type: "lookup", values: ["30%", "36.25%", "42.5%", "48.75%", "55%", "61.25%"], \
        generic: {translate: "catalog.desc.effect.hero_of_the_village.1.1_g", fallback: "[23.75 + (6.25 * lvl)]%%"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "effect", button_color: 4521796 \
}
data modify storage catalog:registry pages."effect/hunger" set value { \
  title: {translate: "effect.minecraft.hunger", color: "red"}, \
  lines: [ \
    { \
      prefix: "c", \
      content: {translate: "catalog.desc.effect.hunger.1", fallback: "Every %s:", color: "#ccb17a"}, \
      with_override: [{ \
        type: "lookup", values: ["00:40", "00:20", "00:13.35", "00:10", "00:08", "00:06.7"], \
        generic: {translate: "catalog.desc.effect.hunger.1.1_g", fallback: "[40 / lvl] seconds"}, \
        base_style: {color: "#ffff88"} \
      }] \
    }, \
    {prefix: "c+a", content: {translate: "catalog.desc.effect.hunger.2", fallback: "Depletes 1 food point"}} \
  ], \
  context_type: "effect", button_color: 5797459 \
}
data modify storage catalog:registry pages."effect/infested" set value { \
  title: {translate: "effect.minecraft.infested", color: "red"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.effect.infested.1", fallback: "When hurt:", color: "#ccb17a"}}, \
    {prefix: "c+c", content: {translate: "catalog.desc.effect.infested.2", fallback: "10%% chance:", color: "#ccb17a"}}, \
    {prefix: "cc+a", content: {translate: "catalog.desc.effect.infested.3", fallback: "Spawns silverfish"}}, \
  ], \
  button_color: 9214860 \
}
data modify storage catalog:registry pages."effect/instant_damage" set value { \
  title: {translate: "effect.minecraft.instant_damage", color: "red"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.instant_damage.1", fallback: "Applies to regular creatures:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "catalog.desc.effect.instant_damage.2", fallback: "Inflicts %s magic damage"}, \
      with_override: [{ \
        type: "lookup", values: ["6", "12", "24", "48", "96", "192"], \
        generic: {translate: "catalog.desc.effect.instant_damage.2.1_g", fallback: "[3 * (2 ^ lvl)]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    }, \
    {prefix: "d", content: {translate: "catalog.desc.effect.instant_damage.3", fallback: "Applies to undead mobs:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "catalog.desc.effect.instant_damage.4", fallback: "Heals %s HP"}, \
      with_override: [{ \
        type: "lookup", values: ["4", "8", "16", "32", "64", "128"], \
        generic: {translate: "catalog.desc.effect.instant_damage.4.1_g", fallback: "[2 * (2 ^ lvl)]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "effect", button_color: 11101546 \
}
data modify storage catalog:registry pages."effect/instant_damage/lingering" set value { \
  title: {translate: "effect.minecraft.instant_damage", color: "red"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.instant_damage.1", fallback: "Applies to regular creatures:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "catalog.desc.effect.instant_damage.2", fallback: "Inflicts %s magic damage"}, \
      with_override: [{ \
        type: "lookup", values: ["3", "6", "12", "24", "48", "96"], \
        generic: {translate: "catalog.desc.effect.instant_damage.2.1_g_lingering", fallback: "[1.5 * (2 ^ lvl)]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    }, \
    {prefix: "d", content: {translate: "catalog.desc.effect.instant_damage.3", fallback: "Applies to undead mobs:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "catalog.desc.effect.instant_damage.4", fallback: "Heals %s HP"}, \
      with_override: [{ \
        type: "lookup", values: ["2", "4", "8", "16", "32", "64"], \
        generic: {translate: "catalog.desc.effect.instant_damage.4.1_g_lingering", fallback: "[2 ^ lvl]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "effect", button_color: 11101546 \
}
data modify storage catalog:registry pages."effect/instant_health" set value { \
  title: {translate: "effect.minecraft.instant_health", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.instant_health.1", fallback: "Applies to regular creatures:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "catalog.desc.effect.instant_health.2", fallback: "Heals %s HP"}, \
      with_override: [{ \
        type: "lookup", values: ["4", "8", "16", "32", "64", "128"], \
        generic: {translate: "catalog.desc.effect.instant_health.2.1_g", fallback: "[2 * (2 ^ lvl)]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    }, \
    {prefix: "d", content: {translate: "catalog.desc.effect.instant_health.3", fallback: "Applies to undead mobs:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "catalog.desc.effect.instant_health.4", fallback: "Inflicts %s magic damage"}, \
      with_override: [{ \
        type: "lookup", values: ["6", "12", "24", "48", "96", "192"], \
        generic: {translate: "catalog.desc.effect.instant_health.4.1_g", fallback: "[3 * (2 ^ lvl)]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "effect", button_color: 16262179 \
}
data modify storage catalog:registry pages."effect/instant_health/lingering" set value { \
  title: {translate: "effect.minecraft.instant_health", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.instant_health.1", fallback: "Applies to regular creatures:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "catalog.desc.effect.instant_health.2", fallback: "Heals %s HP"}, \
      with_override: [{ \
        type: "lookup", values: ["2", "4", "8", "16", "32", "64"], \
        generic: {translate: "catalog.desc.effect.instant_health.2.1_g_lingering", fallback: "[2 ^ lvl]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    }, \
    {prefix: "d", content: {translate: "catalog.desc.effect.instant_health.3", fallback: "Applies to undead mobs:"}}, \
    { \
      prefix: "d+d", \
      content: {translate: "catalog.desc.effect.instant_health.4", fallback: "Inflicts %s magic damage"}, \
      with_override: [{ \
        type: "lookup", values: ["3", "6", "12", "24", "48", "96"], \
        generic: {translate: "catalog.desc.effect.instant_health.4.1_g_lingering", fallback: "[1.5 * (2 ^ lvl)]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "effect", button_color: 16262179 \
}
data modify storage catalog:registry pages."effect/invisibility" set value { \
  title: {translate: "effect.minecraft.invisibility", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.invisibility.1", fallback: "Reduces mob provoking range:"}}, \
    {prefix: "d+d", content: {translate: "catalog.desc.effect.invisibility.2", fallback: "No equipment: -93%%"}}, \
    {prefix: "d+d", content: {translate: "catalog.desc.effect.invisibility.3", fallback: "1 armor piece: -82.5%%"}}, \
    {prefix: "d+d", content: {translate: "catalog.desc.effect.invisibility.4", fallback: "4 armor pieces: -30%%"}}, \
    { \
      prefix: "d", \
      content: { \
        translate: "attribute.modifier.take.2", \
        with: ["100", {translate: "attribute.name.waypoint_transmit_range"}], \
        color: "#cccccc" \
      } \
    } \
  ], \
  button_color: 16185078 \
}
data modify storage catalog:registry pages."effect/jump_boost" set value { \
  title: {translate: "effect.minecraft.jump_boost", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["0.1", "0.2", "0.3", "0.4", "0.5", "0.6"], \
          generic: {translate: "catalog.desc.effect.jump_boost.1.1_g", fallback: "[0.1 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.jump_strength", color: "#ccccff"}} \
      ] \
    }, \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["1", "2", "3", "4", "5", "6"], \
          generic: {translate: "catalog.desc.effect.jump_boost.2.1_g", fallback: "[lvl]"} \
        }, \
        {value: {translate: "attribute.name.safe_fall_distance", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "effect", button_color: 16646020 \
}
data modify storage catalog:registry pages."effect/levitation" set value { \
  title: {translate: "effect.minecraft.levitation", color: "red"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.levitation.1", fallback: "Floats upward"}}, \
    {prefix: "d+d", content: {translate: "catalog.desc.effect.levitation.2", fallback: "Speed increases with level"}} \
  ], \
  button_color: 13565951 \
}
data modify storage catalog:registry pages."effect/luck" set value { \
  title: {translate: "effect.minecraft.luck", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["1", "2", "3", "4", "5", "6"], \
          generic: {translate: "catalog.desc.effect.luck.1.1_g", fallback: "[lvl]"} \
        }, \
        {value: {translate: "attribute.name.luck", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "effect", button_color: 5882118 \
}
# Lookup table has reflected MC-279819
data modify storage catalog:registry pages."effect/mining_fatigue" set value { \
  title: {translate: "effect.minecraft.mining_fatigue", color: "red"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.take.2", color: "#ff8888"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["10", "20", "30", "40", "50", "60"], \
          generic: {translate: "catalog.desc.effect.mining_fatigue.1.1_g", fallback: "[10 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.attack_speed", color: "#ffcccc"}} \
      ] \
    }, \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.take.1", color: "#ff8888"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["70", "91", "99.73"], \
          fallback: "99.92", \
          generic: {translate: "catalog.desc.effect.mining_fatigue.2.1_g", fallback: "[(1 - (0.3 ^ lvl)) * 100]"} \
        }, \
        {value: {translate: "attribute.name.block_break_speed", color: "#ffcccc"}} \
      ] \
    } \
  ], \
  context_type: "effect", button_color: 4866583 \
}
data modify storage catalog:registry pages."effect/nausea" set value { \
  title: {translate: "effect.minecraft.nausea", color: "red"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.nausea.1", fallback: "Distorts vision"}} \
  ], \
  button_color: 5578058 \
}
data modify storage catalog:registry pages."effect/night_vision" set value { \
  title: {translate: "effect.minecraft.night_vision", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.night_vision.1", fallback: "Brightens vision"}} \
  ], \
  button_color: 12779366 \
}
data modify storage catalog:registry pages."effect/oozing" set value { \
  title: {translate: "effect.minecraft.oozing", color: "red"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.effect.oozing.1", fallback: "Upon death:", color: "#ccb17a"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.effect.oozing.2", fallback: "Spawns 2 slimes"}} \
  ], \
  button_color: 10092451 \
}
data modify storage catalog:registry pages."effect/poison" set value { \
  title: {translate: "effect.minecraft.poison", color: "red"}, \
  lines: [ \
    { \
      prefix: "c", \
      content: {translate: "catalog.desc.effect.poison.1", fallback: "Every %s:", color: "#ccb17a"}, \
      with_override: [{ \
        type: "lookup", values: ["00:01.25", "00:00.6", "00:00.6", "00:00.6"], \
        fallback: "00:00.5", \
        generic: {translate: "catalog.desc.effect.poison.1.1_g", fallback: "[2.5 * (0.5 ^ lvl)] seconds"}, \
        base_style: {color: "#ffff88"} \
      }] \
    }, \
    {prefix: "c+c", content: {translate: "catalog.desc.effect.poison.2", fallback: "If HP > 1:", color: "#ccb17a"}}, \
    {prefix: "cc+a", content: {translate: "catalog.desc.effect.poison.3", fallback: "Inflicts 1 magic damage"}} \
  ], \
  context_type: "effect", button_color: 8889187 \
}
data modify storage catalog:registry pages."effect/raid_omen" set value { \
  title: {translate: "effect.minecraft.raid_omen", color: "red"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.effect.raid_omen.1", fallback: "Upon expiring:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: {translate: "catalog.desc.effect.raid_omen.2", fallback: "Starts a raid (Level %s)"}, \
      with_override: [{ \
        type: "lookup", values: ["1", "2", "3", "4"], \
        fallback: "5", \
        generic: {translate: "catalog.desc.effect.raid_omen.2.1_g", fallback: "[lvl]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "effect", button_color: 14565464 \
}
data modify storage catalog:registry pages."effect/regeneration" set value { \
  title: {translate: "effect.minecraft.regeneration", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "c", \
      content: {translate: "catalog.desc.effect.regeneration.1", fallback: "Every %s:", color: "#ccb17a"}, \
      with_override: [{ \
        type: "lookup", values: ["00:02.5", "00:01.25", "00:00.6", "00:00.3", "00:00.15"], \
        fallback: "00:00.05", \
        generic: {translate: "catalog.desc.effect.regeneration.1.1_g", fallback: "[5 * (0.5 ^ lvl)] seconds"}, \
        base_style: {color: "#ffff88"} \
      }] \
    }, \
    {prefix: "c+a", content: {translate: "catalog.desc.effect.regeneration.2", fallback: "Heals 1 HP"}} \
  ], \
  context_type: "effect", button_color: 13458603 \
}
data modify storage catalog:registry pages."effect/resistance" set value { \
  title: {translate: "effect.minecraft.resistance", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.effect.resistance.1", fallback: "-%s%% %s", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["20", "40", "60", "80"], \
          fallback: "100", \
          generic: {translate: "catalog.desc.effect.resistance.1.1_g", fallback: "[20 * lvl]"} \
        }, \
        {value: {translate: "catalog.desc.effect.resistance.1.2", fallback: "Damage taken", color: "#f0f0f0"}} \
      ] \
    } \
  ], \
  context_type: "effect", button_color: 9520880 \
}
data modify storage catalog:registry pages."effect/saturation" set value { \
  title: {translate: "effect.minecraft.saturation", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.effect.saturation.1", fallback: "Replenishes %s food point"}, \
      with_override: [{ \
        type: "lookup", values: ["1", "2", "3", "4", "5", "6"], \
        generic: {translate: "catalog.desc.effect.saturation.1.1_g", fallback: "[lvl]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    }, \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.effect.saturation.2", fallback: "Replenishes %s food saturation"}, \
      with_override: [{ \
        type: "lookup", values: ["2", "4", "6", "8", "10", "12"], \
        generic: {translate: "catalog.desc.effect.saturation.2.1_g", fallback: "[2 * lvl]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "effect", button_color: 16262179 \
}
data modify storage catalog:registry pages."effect/saturation/lingering" set value { \
  title: {translate: "effect.minecraft.saturation", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.effect.saturation.1", fallback: "Replenishes %s food point"}, \
      with_override: [{ \
        type: "lookup", values: ["0.5", "1", "1.5", "2", "2.5", "3"], \
        generic: {translate: "catalog.desc.effect.saturation.1.1_g_lingering", fallback: "[0.5 * lvl]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    }, \
    { \
      prefix: "d", \
      content: {translate: "catalog.desc.effect.saturation.2", fallback: "Replenishes %s food saturation"}, \
      with_override: [{ \
        type: "lookup", values: ["1", "2", "3", "4", "5", "6"], \
        generic: {translate: "catalog.desc.effect.saturation.2.1_g_lingering", fallback: "[lvl]"}, \
        base_style: {color: "#ff88ff"} \
      }] \
    } \
  ], \
  context_type: "effect", button_color: 16262179 \
}
data modify storage catalog:registry pages."effect/slowness" set value { \
  title: {translate: "effect.minecraft.slowness", color: "red"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.take.2", color: "#ff8888"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["15", "30", "45", "60", "75", "90"], \
          fallback: "100", \
          generic: {translate: "catalog.desc.effect.slowness.1.1_g", fallback: "[15 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.movement_speed", color: "#ffcccc"}} \
      ] \
    } \
  ], \
  context_type: "effect", button_color: 9154528 \
}
data modify storage catalog:registry pages."effect/slow_falling" set value { \
  title: {translate: "effect.minecraft.slow_falling", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.slow_falling.1", fallback: "Decreases falling speed"}}, \
    {prefix: "d", content: {translate: "catalog.desc.effect.slow_falling.2", fallback: "Fix fall distance at 0"}} \
  ], \
  button_color: 15978425 \
}
data modify storage catalog:registry pages."effect/speed" set value { \
  title: {translate: "effect.minecraft.speed", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.2", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["20", "40", "60", "80", "100", "120"], \
          generic: {translate: "catalog.desc.effect.speed.1.1_g", fallback: "[20 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.movement_speed", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "effect", button_color: 3402751 \
}
data modify storage catalog:registry pages."effect/strength" set value { \
  title: {translate: "effect.minecraft.strength", color: "#cc88ff"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.plus.0", color: "#8888ff"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["3", "6", "9", "12", "15", "18"], \
          generic: {translate: "catalog.desc.effect.strength.1.1_g", fallback: "[3 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.attack_damage", color: "#ccccff"}} \
      ] \
    } \
  ], \
  context_type: "effect", button_color: 16762624 \
}
data modify storage catalog:registry pages."effect/trial_omen" set value { \
  title: {translate: "effect.minecraft.trial_omen", color: "red"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.effect.trial_omen.1", fallback: "Makes nearby trial spawners ominous"}} \
  ], \
  button_color: 1484454 \
}
data modify storage catalog:registry pages."effect/unluck" set value { \
  title: {translate: "effect.minecraft.unluck", color: "red"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.take.0", color: "#ff8888"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["1", "2", "3", "4", "5", "6"], \
          generic: {translate: "catalog.desc.effect.unluck.1.1_g", fallback: "[lvl]"} \
        }, \
        {value: {translate: "attribute.name.luck", color: "#ffcccc"}} \
      ] \
    } \
  ], \
  context_type: "effect", button_color: 12624973 \
}
data modify storage catalog:registry pages."effect/water_breathing" set value { \
  title: {translate: "effect.minecraft.water_breathing", color: "#cc88ff"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.effect.water_breathing.1", fallback: "When in water:", color: "#ccb17a"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.effect.water_breathing.2", fallback: "Replenishes air"}} \
  ], \
  button_color: 10017472 \
}
data modify storage catalog:registry pages."effect/weakness" set value { \
  title: {translate: "effect.minecraft.weakness", color: "red"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: {translate: "attribute.modifier.take.0", color: "#ff8888"}, \
      with_override: [ \
        { \
          type: "lookup", values: ["4", "8", "12", "16", "20", "24"], \
          generic: {translate: "catalog.desc.effect.weakness.1.1_g", fallback: "[4 * lvl]"} \
        }, \
        {value: {translate: "attribute.name.attack_damage", color: "#ffcccc"}} \
      ] \
    } \
  ], \
  context_type: "effect", button_color: 4738376 \
}
data modify storage catalog:registry pages."effect/weaving" set value { \
  title: {translate: "effect.minecraft.weaving", color: "red"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: { \
        translate: "catalog.desc.effect.weaving.1", fallback: "-%s%% %s", \
        with: [ \
          "50", \
          {translate: "catalog.desc.effect.weaving.1.2", fallback: "Slowdown effect of Cobweb", color: "#f0f0f0"} \
        ], \
        color: "#8888ff" \
      } \
    }, \
    {prefix: "c", content: {translate: "catalog.desc.effect.weaving.2", fallback: "Upon death:", color: "#ccb17a"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.effect.weaving.3", fallback: "Places Cobwebs"}} \
  ], \
  button_color: 7891290 \
}
data modify storage catalog:registry pages."effect/wind_charged" set value { \
  title: {translate: "effect.minecraft.wind_charged", color: "red"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.effect.wind_charged.1", fallback: "Upon death:", color: "#ccb17a"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.effect.wind_charged.2", fallback: "Releases a wind burst"}} \
  ], \
  button_color: 12438015 \
}
data modify storage catalog:registry pages."effect/wither" set value { \
  title: {translate: "effect.minecraft.wither", color: "red"}, \
  lines: [ \
    { \
      prefix: "c", \
      content: {translate: "catalog.desc.effect.wither.1", fallback: "Every %s:", color: "#ccb17a"}, \
      with_override: [{ \
        type: "lookup", values: ["00:02", "00:01"], \
        fallback: "00:00.5", \
        generic: {translate: "catalog.desc.effect.wither.1.1_g", fallback: "[4 * (0.5 ^ lvl)] seconds"}, \
        base_style: {color: "#ffff88"} \
      }] \
    }, \
    {prefix: "c+a", content: {translate: "catalog.desc.effect.wither.2", fallback: "Inflicts 1 wither damage"}} \
  ], \
  context_type: "effect", button_color: 7561558 \
}

data modify storage catalog:registry pages."keyword/curse" set value { \
  title: {translate: "catalog.desc.keyword.curse", fallback: "Curse Enchantment", color: "#ff8888"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.curse.1", fallback: "Cannot be removed by grindstones"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/piercing_level" set value { \
  title: {translate: "catalog.desc.keyword.piercing_level", fallback: "Piercing Level", color: "#ffff88"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.keyword.piercing_level.1", fallback: "When piercing level ≥ 1:", color: "#ccb17a"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.keyword.piercing_level.2", fallback: "The arrow penetrates shields"}}, \
    {prefix: "c+c", content: {translate: "catalog.desc.keyword.piercing_level.3", fallback: "When hitting mobs:", color: "#ccb17a"}}, \
    {prefix: "cc+a", content: {translate: "catalog.desc.keyword.piercing_level.4", fallback: "The arrow continues flying"}}, \
    {prefix: "cc+a", content: {translate: "catalog.desc.keyword.piercing_level.5", fallback: "-1 Piercing level"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/ignited_arrow" set value { \
  title: {translate: "catalog.desc.keyword.ignited_arrow", fallback: "Ignited Arrow", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.ignited_arrow.1", fallback: "Ignites:"}}, \
    {prefix: "d+d", content: {translate: "catalog.desc.keyword.ignited_arrow.2", fallback: "Mobs hit (00:05)"}}, \
    {prefix: "d+d", content: {translate: "catalog.desc.keyword.ignited_arrow.3", fallback: "Campfires, Candles, TNT"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/lingering_potion" set value { \
  title: {translate: "item.minecraft.lingering_potion", color: "#ffff88"}, \
  lines: [ \
    {prefix: "c", content: {translate: "catalog.desc.keyword.lingering_potion.1", fallback: "When applying instantaneous effects:", color: "#ccb17a"}}, \
    {prefix: "c+a", content: {translate: "catalog.desc.keyword.lingering_potion.2", fallback: "The effect potency is lower than usual"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/spectral_arrow" set value { \
  title: {translate: "item.minecraft.spectral_arrow", color: "#ffff88"}, \
  lines: [ \
    { \
      prefix: "d", \
      content: { \
        translate: "catalog.desc.keyword.spectral_arrow.1", fallback: "Inflicts %s", \
        with: [{translate: "potion.withDuration", with: [{translate: "effect.minecraft.glowing"}, "00:10"], color: "#ff8888"}] \
      } \
    } \
  ] \
}
data modify storage catalog:registry pages."keyword/tipped_arrow" set value { \
  title: {translate: "item.minecraft.tipped_arrow", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.tipped_arrow.1", fallback: "Inflicts stored potion effect"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/turtle_helmet" set value { \
  title: {translate: "item.minecraft.turtle_helmet", color: "#ffff88"}, \
  lines: [ \
    {prefix: "empty", content: {translate: "item.modifiers.any", color: "gray"}}, \
    {prefix: "c", content: {translate: "catalog.desc.keyword.turtle_helmet.1", fallback: "When exposed to air:", color: "#ccb17a"}}, \
    { \
      prefix: "c+a", \
      content: { \
        translate: "catalog.desc.keyword.turtle_helmet.2", fallback: "Applies %s", \
        with: [{translate: "potion.withDuration", with: [{translate: "effect.minecraft.water_breathing"}, "00:10"], color: "#8888ff"}] \
      } \
    } \
  ] \
}
data modify storage catalog:registry pages."keyword/suspicious_stew" set value { \
  title: {translate: "item.minecraft.suspicious_stew", color: "#ffff88"}, \
  lines: [ \
    {prefix: "empty", content: "sus"} \
  ] \
}

data modify storage catalog:registry pages."keyword/enchantable/armor" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.armor.1", fallback: "Armor"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/bow" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "item.minecraft.bow"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/chest_armor" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.chest_armor.1", fallback: "Chestplates"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/crossbow" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "item.minecraft.crossbow"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/durability" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.durability.1", fallback: "Items with durability"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/equippable" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.equippable.1", fallback: "Equippable items"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/fire_aspect" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.fire_aspect.1", fallback: "Swords, Spears, Mace"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/fishing" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "item.minecraft.fishing_rod"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/foot_armor" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.foot_armor.1", fallback: "Boots"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/head_armor" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.head_armor.1", fallback: "Helmets"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/melee_weapon" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.melee_weapon.1", fallback: "Swords, Spears"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/leg_armor" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.leg_armor.1", fallback: "Leggings"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/lunge" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.lunge.1", fallback: "Spears"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/mace" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "item.minecraft.mace"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/mining" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.mining.1", fallback: "Pickaxes, Shovels, Axes, Hoes"}}, \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.mining.2", fallback: "Shears"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/mining_loot" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.mining_loot.1", fallback: "Pickaxes, Shovels, Axes, Hoes"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/sharp_weapon" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.sharp_weapon.1", fallback: "Swords, Spears, Axes"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/sweeping" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.sweeping.1", fallback: "Swords"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/trident" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "item.minecraft.trident"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/vanishing" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.vanishing.1", fallback: "Enchantable items"}} \
  ] \
}
data modify storage catalog:registry pages."keyword/enchantable/weapon" set value { \
  title: {translate: "catalog.desc.keyword.enchantable", fallback: "Supported Items", color: "#ffff88"}, \
  lines: [ \
    {prefix: "d", content: {translate: "catalog.desc.keyword.enchantable.weapon.1", fallback: "Swords, Spears, Axes, Mace"}} \
  ] \
}
