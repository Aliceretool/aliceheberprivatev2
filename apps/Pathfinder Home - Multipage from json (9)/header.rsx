<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  paddingType="normal"
  sticky={true}
  type="header"
>
  <Image
    id="image4"
    altText="Pathfinder"
    fit="contain"
    heightType="fixed"
    retoolStorageFileId="f8d90ae5-8900-4d29-9b69-a5e6197260b7"
    src="https://picsum.photos/id/1025/800/600"
    srcType="retoolStorageFileId"
  >
    <Event
      event="click"
      method="openPage"
      params={{ ordered: [{ pageName: "Pathfinder_home" }] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Image>
  <Icon
    id="icon22"
    horizontalAlign="center"
    icon="line/interface-search"
    style={{ ordered: [] }}
    tooltipText="{{ i18n.t('Search') }}"
  >
    <Event
      event="click"
      method="show"
      params={{ ordered: [] }}
      pluginId="modalFrame1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Icon>
  <Text
    id="text88"
    horizontalAlign="right"
    style={{ ordered: [{ fontSize: "h6Font" }] }}
    value="{{ i18n.t('Search') }}"
    verticalAlign="center"
  />
</Frame>
