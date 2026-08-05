# CATalog

[![GitHub Release](https://img.shields.io/github/v/release/merak48763/mc-catalog?style=for-the-badge&logo=github&color=6e6)](https://github.com/merak48763/mc-catalog/releases/latest)

Adapted from the Lexica module of [pearuhdox/Cartographer-2.0](https://github.com/pearuhdox/Cartographer-2.0).  
Target Minecraft version: 1.21.11 ~ 26.2  
Check `v1.4.4` tag for legacy version.

# Get the Book

- The book is defined by `catalog:book` loot table.
- You can implement your own mechanism to make the book accessible to map players.
  - It's recommended to follow the convention of `/trigger lexica`.
- The book doesn't work on creative mode players.

# Mcdoc

Mcdoc is a feature of VSCode [Spyglass extension](https://marketplace.visualstudio.com/items?itemName=SPGoding.datapack-language-server).  
If you're using the extension, you can copy `types/` folder to the root of your workspace.  
It provides syntax highlighting and autocompletion of data structures provided by this pack.

# API

## Define descriptions

Descriptions are defined under the `pages` tag in command storage `catalog:registry`.

Data register should happen in `#catalog:register_data` function tag.

### Data Structure

- `<page name>`: A description.
  - `title` \[Text component\]: Title of the description.
  - `lines` \[List of **Line**s\]: Description contents. Like the `lore` component, `\n` is not treated as newline.
  - `base_style` \[Optional text style\]: The common style applied to every lines. Defaults to `{color: "#f0f0f0", italic: false}`.
  - `context_type` \[Optional string\]: Determines how to interpret **Context Value**. Defaults to `none`.
    - `"none"`: This description is constant.
    - `"enchantment"`: Title and contents may change based on a value starting from 1 (enchantment level).
    - `"enchantment_lv1"`: Similar to `enchantment`. Title reflects the behavior of enchantment with max level 1.
    - `"effect"`: Title and contents may change based on a value starting from 0 (effect amplifier).
  - `button_color` \[Optional int\]: The color of GUI element, which uses `filled_map` item model. Defaults to `0x46402e` (defined in the item model).

### Line Object

- `prefix` \[Optional string\]: The type of decorational prefix of the line. Defaults to `empty`.
- `content` \[Text component\]: Content of the line.
- `with_override` \[Optional list of **Insertion Generator**s\]: When present, generate a `with` list based on **Context Value**. The generated list overrides the `with` list in `content`.

### Insertion Generator

- `type` \[Optional string\]: The type of insertion generator. Defaults to `text`.

#### When `type: "text"`:

- `value` \[Text component\]: The text to insert.

#### When `type: "lookup"`:

- `values` \[List of text components\]: The lookup table. First entry is for enchantment level 1 / effect amplifier 0.
- `fallback` \[Optional text component\]: The text to insert if there is no matching value in `values`. When not present, `generic` is used instead.
- `generic` \[Text component\]: The text to insert if **Context Value** is not present.
- `base_style` \[Optional text style\]: The style to apply on the selected text.

#### When `type: "branch"`:

- `threshold` \[Int\]: The value to compare with **Context Value**.
- `on_le` \[Optional **Insertion Generator**\]: The insertion to use when **Context Value** ≤ `threshold`. When not present, `generic` is used instead.
- `on_gt` \[Optional **Insertion Generator**\]: The insertion to use when **Context Value** > `threshold`. When not present, `generic` is used instead.
- `generic` \[Text component\]: The text to insert if **Context Value** is not present.
- `base_style` \[Optional text style\]: The style to apply on the generated text.

#### When `type: "wrapped"`:

- `base` \[Translated text component\]: The base text to insert.
- `with_override` \[List of **Insertion Generator**s\]: Generate a `with` list based on **Context Value**. The generated list overrides the `with` list in `base`.

#### When `type: "enchantment_level"`:

Generates enchantment level text based on **Context Value**.

- `base_style` \[Optional text style\]: The style to apply on the generated text.

#### When `type: "effect_amplifier"`:

Generates effect amplifier text based on **Context Value**.

- `base_style` \[Optional text style\]: The style to apply on the generated text.

### Example

```mcfunction
# Defines the description of Smite enchantment
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
```

### Mcdoc

Description name exploits mcdoc dispatcher key feature.  
To make your custom description name exist in autocomplete suggestion list, dispatch the description name of `catalog:keys/page` to any type.  
For example:

```
dispatch catalog:keys/page["enchantment/binding_curse"] to ()
```

## Define Line Prefix

Descriptions are defined under the `prefixes` tag in command storage `catalog:registry`.

Data register should happen in `#catalog:register_data` function tag.

### Data Structure

- `<prefix name>` \[Text component\]: A prefix.

### Example

```
# Defines the "root leve dot" prefix
data modify storage catalog:registry prefixes.d set value {text: "◆ ", color: "#ffdd99"}
```

### Mcdoc

Prefix name exploits mcdoc dispatcher key feature.  
To make your custom prefix name exist in autocomplete suggestion list, dispatch the prefix name of `catalog:keys/prefix` to any type.  
For example:

```
dispatch catalog:keys/prefix[empty] to ()
```

## Show Descriptions

### Static Description

The `catalog/static_index` custom data on item can provide descriptions.  
`catalog/static_index` is a list of **Index**es.

### Dynamic Description

There are currently 4 function tags that can be hooked on:

- `#catalog:describe/generic`: Called when describing any item.
- `#catalog:describe/enchantments`: Called when describing an item which:
  - is enchanted, and
  - doesn't hide the enchantments tooltip text.
- `#catalog:describe/stored_enchantments`: Called when describing an enchanted book which:
  - stores enchantments, and
  - doesn't hide the stored enchantments tooltip text.
- `#catalog:describe/potion_contents`: Called when describing an item which:
  - has potion contents, and
  - doesn't hide the potion contents tooltip text.

In these functions, the following **read-only** contexts are provided:

- Entity `@s`:
  - An item display holding the item to be described.
  - You can test its `contents` slot with some conditions.
- The `value` tag under command storage `catalog:inspecting_item`:
  - The copy of the item to be described.
  - You can do tests that are only possible through NBT checks.
  - You can retrieve NBT data from this storage to avoid repeated entity NBT serialization.

To add description to the item, you can append **Index**es to the `value` list of command storage `catalog:index`.

### Index Object

- `id` \[String\]: Description name.
- `context` \[Optional int\]: **Context Value** used to generate dynamic text.
- `linked` \[Optional list of **Index**es\]: Related descriptions to show in the same page.

When both `context` and `linked` are not present, the **Index** can be reduced to a single string containing the description name.

#### Example

- `"keyword/curse"`
- `{id: "enchantment/smite", context: 5}`
- `{id: "enchantment/bane_of_arthropods", context: 5, linked: [{id: "effect/slowness", context: 3}]}`

# Palette

There are the colors used by the builtin descriptions.

- Title:
  - Enchantment:
    - Regular: `#cc88ff`
    - Curse: `red`
  - Effect:
    - Positive: `#cc88ff`
    - Neutral: `red`
    - Negative: `red`
  - Keyword: `#ffff88`
- Contents:
  - Equip condition: `gray`
  - Condition: `#ccb17a`
  - Regular text: `#f0f0f0`
  - Positive effect: `#8888ff`
  - Negative effect: `#ff8888`
  - Neutral attribute: `#cccccc`
- Dynamic values:
  - Positive:
    - Number: `#8888ff`
    - Attribute name: `#ccccff`
  - Negative:
    - Number: `#ff8888`
    - Attribute name: `#ffcccc`
  - In condition: `#ffff88`
  - Other numbers: `#ff88ff`

# Resource Pack

The data pack can work without the resource pack.

The resource pack provides additional features:

- Custom texture of the book.
- The ability to translate the contents.
- The ability to customize the GUI element textures.

## Translation

- All texts in this pack are translatable.
- You can find two translation categories:
  - `assets/catalog/lang/`: Core texts.
  - `assets/catalog.desc/lang`: Description texts.

## Customize Button Texture

- Regular buttons use `filled_map` item model.
  - The description name is passed into `custom_model_data.strings[0]`
- "Next page" button uses `feather` item model.
- "No information" button uses `barrier` item model.

All buttons have special custom data, which can be isolated by `custom_data` item subpredicate.  
The custom data test (in command form) is `custom_data~{"catalog/button": {}}`.
