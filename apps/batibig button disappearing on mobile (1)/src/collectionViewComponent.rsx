<Screen id="collectionViewComponent" title="People List">
  <CustomCollectionView
    id="collectionPhotos"
    data={
      '[{\n        "id": 1,\n        "name": "Hanson Deck",\n        "email": "hanson@deck.com",\n        "image": "https://picsum.photos/id/1003/200/200",\n        "sales": 37\n      }, {\n        "id": 2,\n        "name": "Sue Shei",\n        "email": "sueshei@example.com",\n        "image": "https://picsum.photos/id/1016/200/200",\n        "sales": 550\n      }, {\n        "id": 3,\n        "name": "Jason Response",\n        "email": "jason@response.com",\n        "image": "https://picsum.photos/id/1018/200/200",\n        "sales": 55\n      }, {\n        "id": 4,\n        "name": "Cher Actor",\n        "email": "cher@example.com",\n        "image": "https://picsum.photos/id/1022/200/200",\n        "sales": 424\n      }, {\n        "id": 5,\n        "name": "Erica Widget",\n        "email": "erica@widget.org",\n        "image": "https://picsum.photos/id/1025/200/200",\n        "sales": 243\n      }]'
    }
    instances={5}
    numRows={5}
    padding={{
      ordered: [{ left: 4 }, { right: 4 }, { top: 8 }, { bottom: 8 }],
    }}
    pageSize={5}
  >
    <Container
      id="containerGlobal3"
      align="center"
      cornerType="square"
      gap={4}
      justify="flex-start"
      layout="row"
      padding={{
        ordered: [{ left: 4 }, { right: 4 }, { top: 0 }, { bottom: 0 }],
      }}
      widthGrowFactor={1}
    >
      <Container
        id="container196"
        align="flex-start"
        cornerType="square"
        gap={8}
        justify="flex-start"
        layout="column"
        padding={{
          ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
        }}
        widthGrowFactor={1}
      >
        <Image id="image3" ratio={1} src="{{ item.image }}" />
      </Container>
      <Container
        id="container194"
        align="flex-start"
        cornerType="square"
        gap={8}
        justify="space-between"
        layout="row"
        padding={{
          ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
        }}
        width="fixed"
        widthGrowFactor={3}
      >
        <Button id="button44" size="large" text="zButton" />
      </Container>
      <Container
        id="container197"
        align="flex-start"
        cornerType="square"
        gap={8}
        justify="flex-start"
        layout="column"
        padding={{
          ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
        }}
        widthGrowFactor={1}
      >
        <TextArea
          id="descriptionPhoto"
          minLines={4}
          placeholder="Enter value"
        />
      </Container>
    </Container>
  </CustomCollectionView>
</Screen>
