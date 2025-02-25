const flags = {{ flags.value }};
const tokens = {{ theme.tokens }};

const primaryColor = tokens.colorsBrandPrimaryColorPrimary;
const redColor = tokens.colorsBaseRed5;
const grayColor = tokens.colorsNeutralBorderColorBorder;
const whiteColor = tokens.colorsNeutralColorBgBase;

const toggledFlags = Object.values(flags).filter(Boolean);
const isFlagsVisible = {{ isFlagsVisible.value }};
const isAlertsVisible = {{ isAlertsVisible.value }};

const flagsButton = {
  label: toggledFlags.length || "",
  bg: isFlagsVisible ? primaryColor : whiteColor,
  border: isFlagsVisible
    ? primaryColor
    : toggledFlags.length
    ? redColor
    : grayColor,
  text: isFlagsVisible
    ? whiteColor
    : toggledFlags.length
    ? redColor
    : primaryColor,
};

const alertsButton = {
  label: "",
  bg: isAlertsVisible ? primaryColor : whiteColor,
  border: isAlertsVisible ? primaryColor : grayColor,
  text: isAlertsVisible ? whiteColor : primaryColor,
};

return {
  flagsButton,
  alertsButton,
}
