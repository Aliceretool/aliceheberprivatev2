<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Image
      id="image1"
      heightType="fixed"
      horizontalAlign="center"
      retoolStorageDynamicInput={true}
      retoolStorageFileId="{{ getNameFromId.data}}"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolStorageFileId"
    />
    <Image
      id="image2"
      heightType="fixed"
      horizontalAlign="center"
      retoolStorageFileId="d903316c-8c3b-41fb-8b5c-0a23b1052033"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolStorageFileId"
    />
    <JSONEditor
      id="jsonEditor1"
      value="image1.retoolStorageFileId: {{image1.retoolStorageFileId}}"
    />
  </Frame>
</Screen>
