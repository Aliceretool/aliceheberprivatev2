<Container
  id="collapsibleContainer2"
  _gap="0px"
  footerPadding="4px 12px"
  headerPadding="2px"
  margin="4px"
  padding="4px"
  showBody="{{ (expandedNoteIds.value || []).map(String).includes(String(item.id)) }}"
  showHeader={true}
>
  <Header>
    <Icon
      id="copySingleNoteIcon"
      horizontalAlign="center"
      icon="line/interface-align-front"
      style={{ map: { background: "tokens/2c122679" } }}
      styleVariant="background"
      tooltipText="Click to copy the contents of this log"
    >
      <Event
        id="ed7c494a"
        event="click"
        method="run"
        params={{
          map: {
            src: '// Copies ONLY this list item ("item") to clipboard in a clean, LLM-friendly format.\n// Safe: scrubs UUIDs + normalizes tags.\n\n(() => {\n  const n = item; // current ListView row item\n  if (!n) {\n    utils.showNotification({ title: "Nothing to copy", notificationType: "warning" });\n    return;\n  }\n\n  // --- UUID scrubber (removes UUIDs anywhere in strings) ---\n  const UUID_RE =\n    /\\b[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}\\b/gi;\n\n  const scrub = (v) => {\n    if (v == null) return null;\n    if (Array.isArray(v)) return v.map(scrub).filter(Boolean);\n    if (typeof v === "string") {\n      const cleaned = v.replace(UUID_RE, "").replace(/\\s{2,}/g, " ").trim();\n      return cleaned || null;\n    }\n    return v;\n  };\n\n  // --- Safe date display ---\n  const created = scrub(n.created_at) || "";\n  const type = scrub(n.content_type) || "";\n\n  const authorName = (() => {\n    const a = n.author || {};\n    const name =\n      (a.preferred_name && a.preferred_name.trim()) ||\n      [a.first_name, a.last_name].filter(Boolean).join(" ").trim();\n    return scrub(name);\n  })();\n\n  const authorEmail = scrub(n.author?.email);\n\n  // --- Tags (support factors + intervention action/type) ---\n  const tags = [\n    ...(Array.isArray(n.support_factors) ? n.support_factors : []),\n    ...(n.intervention_action ? [n.intervention_action] : []),\n    ...(n.intervention_type ? [n.intervention_type] : []),\n  ]\n    .map(scrub)\n    .filter(Boolean);\n\n  // Prefer a display field if you have one (e.g. you added _displayContent); fallback to content\n  const content = scrub(n._displayContent ?? n.content) || "(empty)";\n\n  // --- Build nice Markdown output ---\n  const lines = [\n    `# Learner Note`,\n    created ? `- Date: ${created}` : null,\n    type ? `- Type: ${type}` : null,\n    tags.length ? `- Tags: ${[...new Set(tags)].join(", ")}` : `- Tags: (none)`,\n    n.intervention_action ? `- Intervention action: ${scrub(n.intervention_action)}` : null,\n    n.intervention_type ? `- Intervention type: ${scrub(n.intervention_type)}` : null,\n    (authorName || authorEmail)\n      ? `- Author: ${[authorName, authorEmail].filter(Boolean).join(" · ")}`\n      : null,\n    ``,\n    content,\n  ].filter(Boolean);\n\n  const output = lines.join("\\n");\n\n  utils.copyToClipboard(output);\n  utils.showNotification({\n    title: "Copied note",\n    description: "Copied this note only. Handle learner data with care.",\n    notificationType: "success",\n  });\n})();',
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Icon>
    <Text
      id="collapsibleTitle19"
      heightType="fixed"
      overflowType="hidden"
      value={
        '{{ (() => {\n  const TOTAL_MAX = 70; // total characters for the whole header (tune this)\n  const MIN_SNIPPET = 18; // don\'t go below this\n\n  const type = item.content_type;\n  const typeLabel =\n    ({ note: "Note", intervention: "Intervention", support_factor: "Support factor" }[type] || "Entry");\n\n  const subtype =\n    type === "intervention"\n      ? (item.intervention_type || item.intervention_action || "")\n      : type === "support_factor"\n        ? (item.support_factors?.[0] || "")\n        : "";\n\n  const rawContent = (item.content || "").replace(/\\s+/g, " ").trim();\n  const fallback =\n    type === "note" ? "(empty note)"\n    : type === "intervention" ? "(no note text)"\n    : "(no details)";\n\n  const text = rawContent || fallback;\n\n  const esc = (s) => (s || "").replace(/([\\\\`*_])/g, "\\\\$1");\n  const sep = " · ";\n  const left = `**${esc(typeLabel)}**` + (subtype ? `${sep}_${esc(subtype)}_` : "");\n  const prefix = `${left} — `;\n\n  // compute snippet budget based on prefix length, always reserving 3 chars for "..."\n  const maxSnippet = Math.max(MIN_SNIPPET, TOTAL_MAX - prefix.length - 3);\n\n  // Truncate nicely (avoid cutting mid-word when possible)\n  let base = text.slice(0, maxSnippet).trimEnd();\n  if (text.length > maxSnippet) {\n    const trimmed = base.replace(/\\s+\\S*$/, "").trimEnd();\n    if (trimmed.length >= Math.floor(maxSnippet * 0.6)) base = trimmed;\n  }\n\n  const snippet = `${base}...`;\n  return `${prefix}${esc(snippet)}`;\n})() }}'
      }
      verticalAlign="center"
    />
    <Text
      id="dateTimeSubmitted4"
      heightType="fixed"
      horizontalAlign="right"
      style={{ map: { color: "rgba(13, 13, 13, 0.65)" } }}
      value={'{{ moment(item.created_at).format("MMM D, YYYY h:mm A") }}'}
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle10"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ (expandedNoteIds.value || []).map(String).includes(String(item.id)) }}"
    >
      <Event
        id="9896b411"
        event="change"
        method="run"
        params={{
          map: {
            src: "const id = String(item.id);\nconst current = new Set((expandedNoteIds.value || []).map(String));\n\nif (current.has(id)) {\n  current.delete(id);   // collapse\n} else {\n  current.add(id);      // expand (reopen)\n}\n\nexpandedNoteIds.setValue([...current]);",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="00030" viewKey="View 1">
    <Text
      id="noteSubmittedBy3"
      horizontalAlign="center"
      style={{
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
        background: "canvas",
      }}
      value="**Author:** {{ item.author.first_name }} {{ item.author.last_name }}"
      verticalAlign="center"
    />
    <Divider id="titleMessageDivider5" />
    <Text
      id="noteTextContent3"
      value="{{ item.content}}"
      verticalAlign="center"
    />
    <Divider id="titleMessageDivider6" />
    <Text
      id="interventionTagsTitle5"
      hidden={
        '{{ \n  item.content_type !== "intervention" ||\n  !([item.intervention_action, item.intervention_type].filter(Boolean).length)\n}}'
      }
      value="**Intervention**"
      verticalAlign="center"
    />
    <Text
      id="interventionTagsTitle6"
      hidden={
        '{{ item.content_type !== "support_factor" || !(item.support_factors && item.support_factors.length) }}'
      }
      value="**Support factors**"
      verticalAlign="center"
    />
    <TagsWidget2
      id="interventionTags3"
      allowWrap={true}
      colorByIndex="{{ theme.automatic[3] }}"
      data="{{ [item.intervention_action, item.intervention_type].filter(Boolean) }}
"
      hidden={
        '{{ \n  item.content_type !== "intervention" ||\n  !([item.intervention_action, item.intervention_type].filter(Boolean).length)\n}}'
      }
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      labels=""
      textColorByIndex=""
      tooltipByIndex=""
      values=""
    />
    <TagsWidget2
      id="supportFactorTags3"
      allowWrap={true}
      colorByIndex="#FFDDC1"
      data="{{ item.support_factors }}"
      hidden={
        '{{ item.content_type !== "support_factor" || !(item.support_factors && item.support_factors.length) }}'
      }
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      labels=""
      style={{}}
      textColorByIndex=""
      tooltipByIndex=""
      values=""
    />
  </View>
</Container>
