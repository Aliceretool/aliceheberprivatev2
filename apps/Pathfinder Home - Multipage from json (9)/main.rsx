<App>
  <Include src="./functions.rsx" />
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "10px" }}
    h1Font={{ size: "34px" }}
    h2Font={{ size: "26px" }}
    h3Font={{ size: "22px" }}
    h4Font={{ size: "16px" }}
    h5Font={{ size: "14px" }}
    h6Font={{ size: "12px" }}
    highlight="#fde68a"
    info="#3170f9"
    labelEmphasizedFont={{ size: "12px", fontWeight: "600" }}
    labelFont={{ size: "12px", fontWeight: "500" }}
    primary="#3170f9"
    secondary="#12a522"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./src/Pathfinder_home.rsx" />
  <Include src="./src/CAPA_Home.rsx" />
  <CustomAppTheme
    id="$appTheme2"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <UrlFragments
    id="$urlFragments"
    value={{ ordered: [{ issueid: "{{.value}}" }] }}
  />
  <Include src="./src/CAPA_Specific.rsx" />
  <CustomAppTheme
    id="$appTheme3"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#e6ebef"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <DocumentTitle
    id="$customDocumentTitle"
    value="{{ getIssue2.data.issue_index[0]}}"
  />
  <UrlFragments
    id="$urlFragments2"
    value={{ ordered: [{ issueid: "{{urlparams.hash.IssueID}}" }] }}
  />
  <Include src="./src/DEVIATION_Home.rsx" />
  <CustomAppTheme
    id="$appTheme4"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f8fafc"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <UrlFragments
    id="$urlFragments3"
    value={{ ordered: [{ issueid: "{{.value}}" }] }}
  />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./src/DEVIATION_Specific.rsx" />
  <CustomAppTheme
    id="$appTheme5"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#e6ebef"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <DocumentTitle
    id="$customDocumentTitle2"
    value="{{ getIssue4.data.issueIndex[0] }}"
  />
  <AppStyles
    id="$appStyles2"
    css={include("./lib/$appStyles2.css", "string")}
  />
  <UrlFragments
    id="$urlFragments4"
    value={{ ordered: [{ issueid: "{{urlparams.hash.IssueID}}" }] }}
  />
  <Include src="./src/CRF_Home.rsx" />
  <CustomAppTheme
    id="$appTheme6"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <UrlFragments
    id="$urlFragments5"
    value={{ ordered: [{ issueid: "{{.value}}" }] }}
  />
  <Include src="./src/CRF_Issue.rsx" />
  <CustomAppTheme
    id="$appTheme7"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#e6ebef"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <DocumentTitle
    id="$customDocumentTitle3"
    value="{{ getIssue6.data.issue_index[0]}}"
  />
  <UrlFragments
    id="$urlFragments6"
    value={{ ordered: [{ issueid: "{{urlparams.hash.IssueID}}" }] }}
  />
  <Include src="./src/QPRegister_Home.rsx" />
  <CustomAppTheme
    id="$appTheme8"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <UrlFragments
    id="$urlFragments7"
    value={{ ordered: [{ issueid: "{{.value}}" }] }}
  />
  <Include src="./src/QPRegister_Issue.rsx" />
  <UrlFragments
    id="$urlFragments8"
    value={{ ordered: [{ issueid: "{{urlparams.hash.IssueID}}" }] }}
  />
  <DocumentTitle
    id="$customDocumentTitle4"
    value="{{ getIssue9.data.issue_index[0]}}"
  />
  <CustomAppTheme
    id="$appTheme9"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#e6ebef"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./src/AINV_Home.rsx" />
  <UrlFragments
    id="$urlFragments9"
    value={{ ordered: [{ issueid: "{{.value}}" }] }}
  />
  <CustomAppTheme
    id="$appTheme10"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./src/AINV_Issue.rsx" />
  <CustomAppTheme
    id="$appTheme11"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#e6ebef"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <DocumentTitle
    id="$customDocumentTitle5"
    value="{{ getIssue11.data.issue_index[0]}}"
  />
  <UrlFragments
    id="$urlFragments10"
    value={{ ordered: [{ issueid: "{{urlparams.hash.IssueID}}" }] }}
  />
  <Include src="./src/RSN_Home.rsx" />
  <CustomAppTheme
    id="$appTheme12"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <UrlFragments
    id="$urlFragments11"
    value={{ ordered: [{ issueid: "{{.value}}" }] }}
  />
  <Include src="./src/RSN_Details.rsx" />
  <DocumentTitle
    id="$customDocumentTitle6"
    value="{{ getIssue13.data.issue_index[0]}}"
  />
  <CustomAppTheme
    id="$appTheme13"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#e6ebef"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <UrlFragments
    id="$urlFragments12"
    value={{ ordered: [{ issueid: "{{urlparams.hash.IssueID}}" }] }}
  />
  <Include src="./src/SPL_Home.rsx" />
  <CustomAppTheme
    id="$appTheme14"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <UrlFragments
    id="$urlFragments13"
    value={{ ordered: [{ issueid: "{{.value}}" }] }}
  />
  <Include src="./src/SPL_Detail.rsx" />
  <Include src="./src/SPL_TEST.rsx" />
  <DocumentTitle
    id="$customDocumentTitle7"
    value="{{ getIssue15.data.issue_index[0]}}"
  />
  <CustomAppTheme
    id="$appTheme15"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#e6ebef"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <UrlFragments
    id="$urlFragments14"
    value={{ ordered: [{ issueid: "{{urlparams.hash.IssueID}}" }] }}
  />
  <Include src="./src/System_Configuration.rsx" />
  <CustomAppTheme
    id="$appTheme16"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#e6ebef"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <UrlFragments
    id="$urlFragments15"
    value={{ ordered: [{ issueid: "{{.value}}" }] }}
  />
  <Include src="./src/CRM.rsx" />
  <CustomAppTheme
    id="$appTheme17"
    _migrated={true}
    automatic={[
      "#ea8034",
      "#f5c10a",
      "#2fa772",
      "#3c92dc",
      "#a385db",
      "#ea62ad",
      "#ea4f2d",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#ea4f2d"
    defaultFont={{}}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#f6e5c4"
    info="#3c92dc"
    primary="#3170f9"
    secondary="#12a522"
    success="#2fa772"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#ea8034"
  />
  <AppStyles id="$appStyles3" css="" />
  <Include src="./src/Enquiries.rsx" />
  <CustomAppTheme
    id="$appTheme18"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#12a522"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./src/Products.rsx" />
  <CustomAppTheme
    id="$appTheme19"
    _migrated={true}
    automatic={[
      "#ea8034",
      "#f5c10a",
      "#2fa772",
      "#3c92dc",
      "#a385db",
      "#ea62ad",
      "#ea4f2d",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#ea4f2d"
    defaultFont={{}}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#f6e5c4"
    info="#3c92dc"
    primary="#3170f9"
    secondary="#12a522"
    success="#2fa772"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#ea8034"
  />
  <Include src="./src/TTCodes.rsx" />
  <CustomAppTheme
    id="$appTheme20"
    _migrated={true}
    automatic={[
      "#ea8034",
      "#f5c10a",
      "#2fa772",
      "#3c92dc",
      "#a385db",
      "#ea62ad",
      "#ea4f2d",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#ea4f2d"
    defaultFont={{}}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#f6e5c4"
    info="#3c92dc"
    primary="#3170f9"
    secondary="#12a522"
    success="#2fa772"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#ea8034"
  />
  <Include src="./src/CRF_Task.rsx" />
  <CustomAppTheme
    id="$appTheme21"
    _migrated={true}
    automatic={[
      "#ea8034",
      "#f5c10a",
      "#2fa772",
      "#3c92dc",
      "#a385db",
      "#ea62ad",
      "#ea4f2d",
    ]}
    borderRadius="4px"
    canvas="#e6ebef"
    danger="#ea4f2d"
    defaultFont={{}}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#f6e5c4"
    info="#3c92dc"
    primary="#3170f9"
    secondary="#3b9900"
    success="#2fa772"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary="#6789ef"
    textDark="#FFFFFF"
    textLight="#242F3D"
    warning="#ea8034"
  />
  <UrlFragments
    id="$urlFragments16"
    value={{ ordered: [{ issueid: "{{urlparams.hash.IssueID}}" }] }}
  />
  <CustomAppTheme
    id="$appTheme22"
    _migrated={true}
    automatic={[
      "#ea8034",
      "#f5c10a",
      "#2fa772",
      "#3c92dc",
      "#a385db",
      "#ea62ad",
      "#ea4f2d",
    ]}
    borderRadius="4px"
    canvas="#e6ebef"
    danger="#ea4f2d"
    defaultFont={{}}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#f6e5c4"
    info="#3c92dc"
    primary="#3170f9"
    secondary="#3b9900"
    success="#2fa772"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary="#6789ef"
    textDark="#FFFFFF"
    textLight="#242F3D"
    warning="#ea8034"
  />
  <UrlFragments
    id="$urlFragments17"
    value={{ ordered: [{ issueid: "{{urlparams.hash.IssueID}}" }] }}
  />
  <Include src="./src/page1.rsx" />
  <Include src="./header.rsx" />
  <Include src="./src/modal_myProfile.rsx" />
  <Include src="./src/modalAIChat.rsx" />
  <Include src="./src/modalFrame1.rsx" />
  <Include src="./src/modalFrame10.rsx" />
  <Include src="./src/modalFrame3.rsx" />
  <Include src="./sidebar.rsx" />
</App>
