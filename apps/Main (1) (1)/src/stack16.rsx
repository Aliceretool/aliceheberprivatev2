<Container
  id="stack16"
  _align="center"
  _gap="0px"
  _justify="center"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fill"
  margin="0"
  overflowType="hidden"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <View id="c050c" viewKey="View 1">
    <Avatar
      id="avatar1"
      fallback={'{{ phases.value.open.isCompleted ? "✔️" : 1 }}'}
      imageSize={24}
      label=""
      margin="0"
      style={{
        ordered: [
          {
            background:
              "{{\n  phases.value.open.isCompleted\n    ? theme.tokens.colorsBaseGreen8\n    : phases.value.open.isCurrent\n      ? theme.tokens.colorsBrandPrimaryColorPrimary\n      : theme.tokens.componentsStepsGlobalColorFillContent\n}}",
          },
        ],
      }}
    />
    <Text
      id="text27"
      margin="4px 0px 4px 8px"
      style={{
        ordered: [
          { fontSize: "14px" },
          { fontWeight: "{{ phases.value.open.isCurrent ? 700 : 400 }}" },
          { fontFamily: "Inter" },
          {
            color:
              "{{ \n  phases.value.open.isCurrent\n    ? theme.tokens.colorsNeutralTextColorTextPrimary\n    : theme.tokens.componentsStepsGlobalColorTextDescription\n}}",
          },
        ],
      }}
      value="{{ phases.value.open.title }}"
      verticalAlign="center"
    />
    <Divider id="divider7" />
    <Divider id="divider8" />
    <Divider id="divider9" />
    <Divider id="divider11" />
    <Avatar
      id="avatar2"
      fallback={'{{ phases.value.qualify.isCompleted ? "✔️" : 2 }}'}
      imageSize={24}
      label=""
      margin="0"
      style={{
        ordered: [
          {
            background:
              "{{\n  phases.value.qualify.isCompleted\n    ? theme.tokens.colorsBaseGreen8\n    : phases.value.qualify.isCurrent\n      ? theme.tokens.colorsBrandPrimaryColorPrimary\n      : theme.tokens.componentsStepsGlobalColorFillContent\n}}",
          },
        ],
      }}
    />
    <Avatar
      id="avatar3"
      fallback={'{{ phases.value.solve.isCompleted ? "✔️" : 3 }}'}
      imageSize={24}
      label=""
      margin="0"
      style={{
        ordered: [
          {
            background:
              "{{\n  phases.value.solve.isCompleted\n    ? theme.tokens.colorsBaseGreen8\n    : phases.value.solve.isCurrent\n      ? theme.tokens.colorsBrandPrimaryColorPrimary\n      : theme.tokens.componentsStepsGlobalColorFillContent\n}}",
          },
        ],
      }}
    />
    <Avatar
      id="avatar4"
      fallback={'{{ phases.value.operationalClosure.isCompleted ? "✔️" : 4 }}'}
      imageSize={24}
      label=""
      margin="0"
      style={{
        ordered: [
          {
            background:
              "{{\n  phases.value.operationalClosure.isCompleted\n    ? theme.tokens.colorsBaseGreen8\n    : phases.value.operationalClosure.isCurrent\n      ? theme.tokens.colorsBrandPrimaryColorPrimary\n      : theme.tokens.componentsStepsGlobalColorFillContent\n}}",
          },
        ],
      }}
    />
    <Avatar
      id="avatar5"
      fallback={'{{ phases.value.financialClosure.isCompleted ? "✔️" : 5 }}'}
      imageSize={24}
      label=""
      margin="0"
      style={{
        ordered: [
          {
            background:
              "{{\n  phases.value.financialClosure.isCompleted\n    ? theme.tokens.colorsBaseGreen8\n    : phases.value.financialClosure.isCurrent\n      ? theme.tokens.colorsBrandPrimaryColorPrimary\n      : theme.tokens.componentsStepsGlobalColorFillContent\n}}",
          },
        ],
      }}
    />
    <Text
      id="text28"
      margin="4px 0px 4px 8px"
      style={{
        ordered: [
          { fontSize: "14px" },
          { fontWeight: "{{ phases.value.qualify.isCurrent ? 600 : 400 }}" },
          { fontFamily: "Inter" },
          {
            color:
              "{{ \n  phases.value.qualify.isCurrent\n    ? theme.tokens.colorsNeutralTextColorTextPrimary\n    : theme.tokens.componentsStepsGlobalColorTextDescription\n}}",
          },
        ],
      }}
      value="{{ phases.value.qualify.title }}"
      verticalAlign="center"
    />
    <Text
      id="text29"
      margin="4px 0px 4px 8px"
      style={{
        ordered: [
          { fontSize: "14px" },
          { fontWeight: "{{ phases.value.solve.isCurrent ? 600 : 400 }}" },
          { fontFamily: "Inter" },
          {
            color:
              "{{ \n  phases.value.solve.isCurrent\n    ? theme.tokens.colorsNeutralTextColorTextPrimary\n    : theme.tokens.componentsStepsGlobalColorTextDescription\n}}",
          },
        ],
      }}
      value="{{ phases.value.solve.title }}"
      verticalAlign="center"
    />
    <Text
      id="text30"
      margin="4px 0px 4px 8px"
      style={{
        ordered: [
          { fontSize: "14px" },
          {
            fontWeight:
              "{{ phases.value.operationalClosure.isCurrent ? 600 : 400 }}",
          },
          { fontFamily: "Inter" },
          {
            color:
              "{{ \n  phases.value.operationalClosure.isCurrent\n    ? theme.tokens.colorsNeutralTextColorTextPrimary\n    : theme.tokens.componentsStepsGlobalColorTextDescription\n}}",
          },
        ],
      }}
      value="{{ phases.value.operationalClosure.title }}"
      verticalAlign="center"
    />
    <Text
      id="text31"
      margin="4px 0px 4px 8px"
      style={{
        ordered: [
          { fontSize: "14px" },
          {
            fontWeight:
              "{{ phases.value.financialClosure.isCurrent ? 600 : 400 }}",
          },
          { fontFamily: "Inter" },
          {
            color:
              "{{ \n  phases.value.financialClosure.isCurrent\n    ? theme.tokens.colorsNeutralTextColorTextPrimary\n    : theme.tokens.componentsStepsGlobalColorTextDescription\n}}",
          },
        ],
      }}
      value="{{ phases.value.financialClosure.title }}"
      verticalAlign="center"
    />
  </View>
</Container>
