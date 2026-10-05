# Agent Gallery

Use the shared Agent Gallery whenever the user needs to review a generated or
edited image set. It provides one serialized, keyboard-driven queue for every
local agent.

## Submit a review set

```bash
agent-gallery submit "Short review title" /absolute/path/first.png /absolute/path/second.png
```

For a palette or half-screen comparison, request a tiled viewer:

```bash
agent-gallery submit --tile "Palette comparison" /absolute/path/first.png /absolute/path/second.png
```

- Supply only the images the user should compare, in the exact arrow-key order.
- The command validates each image and atomically queues the set; it does not
  overwrite an active set or another agent's submission.
- Do not open a private image viewer for a user review. Submit to this queue.
- Gallery assigns each item a stable, short reference ID in supplied order
  (for example, `amber-anchor`). The ID appears in the viewer overlay; the
  user can cite it to an agent. IDs live only in Gallery state and never change
  filenames, pixels, or source metadata.

## User controls

- `SUPER + G` opens the active review set.
- Left/right arrows (or `j`/`l`) browse the current set.
- `q` only closes the viewer; the current set remains available for reopening.
- A later agent submission advances the gallery. On the next `SUPER + G`, the
  current set is archived and the oldest newly submitted set opens.

Check the queue without opening it with `agent-gallery status`.
