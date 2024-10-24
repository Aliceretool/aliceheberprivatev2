<Screen id="myProfileScreen" title="My Profile">
  <Container
    id="container1"
    align="flex-start"
    cornerType="square"
    gap={8}
    justify="flex-start"
    layout="row"
    padding={{
      ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
    }}
    showBody={true}
    style={{ ordered: [] }}
    widthGrowFactor={1}
  >
    <Container
      id="container2"
      align="flex-start"
      cornerType="square"
      gap={8}
      hidden="{{!current_user.profilePhotoUrl}}"
      justify="flex-start"
      layout="column"
      padding={{
        ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
      }}
      showBody={true}
      style={{ ordered: [] }}
      widthGrowFactor={1}
    >
      <Image
        id="image2"
        mode="center"
        ratio={1.3333333333333333}
        src="{{current_user.profilePhotoUrl}}"
        style={{ ordered: [] }}
      />
    </Container>
    <Container
      id="container3"
      align="flex-start"
      cornerType="square"
      gap={8}
      justify="flex-start"
      layout="column"
      padding={{
        ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
      }}
      showBody={true}
      style={{ ordered: [] }}
      widthGrowFactor={2}
    >
      <Heading
        id="heading1"
        size="h1"
        style={{ ordered: [] }}
        value="{{ current_user.firstName || 'User' }}"
      />
      <Text
        id="text1"
        size="medium"
        style={{ ordered: [] }}
        value="{{ current_user.email }}"
        weight="semibold"
      />
    </Container>
  </Container>
</Screen>
