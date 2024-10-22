<App>
  <GlobalWidgetProp id="files" defaultValue="[]" />
  <SyncFunction
    id="formatBytes"
    body={
      "const FORMATS = ['bytes', 'KB', 'MB', 'GB', 'TB', 'PB'];\n\nlet temp = fileSize;\nlet i = 0;\nwhile (1023 < temp) {\n  temp /= 1024;\n  ++i;\n}\n\nreturn [(i ? temp.toFixed(2) : temp), FORMATS[i]].join(\" \");\n"
    }
    parameters={{
      ordered: [
        {
          fileSize: {
            ordered: [{ name: "fileSize" }, { sampleValue: "49898000" }],
          },
        },
      ],
    }}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      files=""
      isGlobalWidgetContainer={true}
      margin="0"
    >
      <Table
        id="fileTable"
        cellSelection="none"
        clearChangesetOnSave={true}
        data="{{ files.value }}"
        defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
        emptyMessage="添付されているファイルはありません"
        enableSaveActions={true}
        heightType="auto"
        hidden=""
        margin="0 0 12px "
        primaryKeyColumnId="674cd"
        rowSelection="none"
        showBorder={true}
        showFooter={true}
        showHeader={true}
        showInEditor={true}
        style={{ map: { headerBackground: "rgb(238, 238, 238)" } }}
        toolbarPosition="bottom"
      >
        <Column
          id="674cd"
          alignment="left"
          editable="false"
          format="string"
          groupAggregationMode="none"
          hidden="true"
          key="fileId"
          label="File ID"
          placeholder="Enter value"
          position="center"
          size={100}
          summaryAggregationMode="none"
        />
        <Column
          id="c5cd4"
          alignment="left"
          format="string"
          formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
          groupAggregationMode="none"
          key="name"
          label="ファイル名"
          placeholder="Enter value"
          position="center"
          size={607}
          summaryAggregationMode="none"
        />
        <Column
          id="c10a7"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="contentType"
          label="種類"
          placeholder="Enter value"
          position="right"
          size={109}
          summaryAggregationMode="none"
        />
        <Column
          id="27313"
          alignment="left"
          editableOptions={{ map: { showStepper: true } }}
          format="string"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="fileSize"
          label="サイズ"
          placeholder="Enter value"
          position="right"
          size={88}
          summaryAggregationMode="none"
          valueOverride="{{ formatBytes({ fileSize: item }) }}"
        />
        <Column
          id="8c5ce"
          alignment="left"
          format="button"
          formatOptions={{ variant: "solid", buttonColor: "" }}
          groupAggregationMode="none"
          label="操作"
          placeholder="Enter value"
          position="right"
          referenceId="remove"
          size={117}
          summaryAggregationMode="none"
          valueOverride="ダウンロード"
        >
          <Event
            event="clickCell"
            method="run"
            params={{
              ordered: [
                {
                  src: 'parent.postMessage(\n  {\n    type: "download",\n    payload: { files: [currentSourceRow] }\n  },\n  urlparams.href,\n);',
                },
              ],
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Column>
      </Table>
    </ModuleContainerWidget>
  </Frame>
</App>
