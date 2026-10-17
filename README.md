# [[NAME]]

Personal starting point for SolidJS SPAs.

[solidlib](https://github.com/SamuelDavis/solidlib) should track latest; update it when bootstrapping.

## Rationale

- `icons` is the lowest layer because Vite hoists the remote icon `@import` above the layer-order statement.
- `[data-icon]` squares HTMLIcon and sizes it to the surrounding line height.
