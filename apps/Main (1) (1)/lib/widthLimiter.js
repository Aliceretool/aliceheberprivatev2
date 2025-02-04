const viewport = {{ viewport }};

const WIDTH = 1920;
const DEFAULT_PAGE_HORIZONTAL_PADDING = 24;

const diff = WIDTH - viewport.width;
const paddingRight =
  diff < 0 ? Math.abs(diff) : DEFAULT_PAGE_HORIZONTAL_PADDING;

return paddingRight;
