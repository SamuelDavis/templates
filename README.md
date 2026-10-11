# SolidJS Template

Personal starting point for SolidJS SPAs.

[solidlib](https://github.com/SamuelDavis/solidlib) should track latest; update it when bootstrapping.

## Rationale

- Rendering into `document.body` lets Pico's classless `body > header/main/footer` styles apply.
- `src/pico.css` stays outside Tailwind's pipeline: Tailwind inlines imports into layers, where Pico's `@charset` is invalid.
- `icons` is the lowest layer because Vite hoists the remote icon `@import` above the layer-order statement.
- `[data-icon]` squares HTMLIcon and sizes it to the surrounding line height, including under Pico's `role="button"` styles.
