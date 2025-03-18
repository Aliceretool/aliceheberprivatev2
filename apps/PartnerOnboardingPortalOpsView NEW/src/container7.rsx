<Container
  id="container7"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  style={{ ordered: [{ background: "rgba(196, 196, 196, 0.2)" }] }}
>
  <View id="9c045" viewKey="View 1">
    <TextInput
      id="ficoTextInput5"
      label="FICO score"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ self.value !== '' && self.value !== GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0]?.ficoScore ? 'warning' : '#c4c4c4'}}",
          },
        ],
      }}
      value="{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0]?.ficoScore }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.principalList.length > 0  && !personalCreditCheckUpdates.value.hasOwnProperty(GetInstallerAppUsers.data.principalList[i].personalCreditChecks[0]?.id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0].id}}, "where", "id"]',
            },
            {
              value:
                "{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0]?.id }}",
            },
          ],
        }}
        pluginId="personalCreditCheckUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0].id}}, "data","ficoScore"]',
            },
            { value: "{{self.value === '' ? null : self.value}}" },
          ],
        }}
        pluginId="personalCreditCheckUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="bankruptcyPlusTextInput5"
      label="Bankruptcy Score"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ self.value !== '' && self.value !== GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0]?.bankruptcyPlusScore ? 'warning' : '#c4c4c4'}}",
          },
        ],
      }}
      value="{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0]?.bankruptcyPlusScore }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.principalList.length > 0  && !personalCreditCheckUpdates.value.hasOwnProperty(GetInstallerAppUsers.data.principalList[i].personalCreditChecks[0]?.id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0].id}}, "where", "id"]',
            },
            {
              value:
                "{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0]?.id }}",
            },
          ],
        }}
        pluginId="personalCreditCheckUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0].id}}, "data","bankruptcyPlusScore"]',
            },
            { value: "{{self.value === '' ? null : self.value}}" },
          ],
        }}
        pluginId="personalCreditCheckUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Date
      id="personalCreditPulledDate5"
      dateFormat="MM/dd/yyyy"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Personal Credit Pulled"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{\n    !self.value || !GetInstallerAppUsers.data.principalList?.[i]?.personalCreditChecks?.[0]?.personalCreditPulled\n        ? '#c4c4c4'\n        : moment(self.value).format('YYYY-MM-DD') !== moment(GetInstallerAppUsers.data.principalList?.[i]?.personalCreditChecks?.[0]?.personalCreditPulled).format('YYYY-MM-DD')\n            ? 'warning' // If dates do not match, show warning color\n            : '#c4c4c4' // If dates match, use default color\n}}\n",
          },
        ],
      }}
      value="{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0]?.personalCreditPulled }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.principalList.length > 0  && !personalCreditCheckUpdates.value.hasOwnProperty(GetInstallerAppUsers.data.principalList[i].personalCreditChecks[0]?.id) }}
"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0].id}}, "where", "id"]',
            },
            {
              value:
                "{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0]?.id }}",
            },
          ],
        }}
        pluginId="personalCreditCheckUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{ GetInstallerAppUsers.data?.principalList?.[i]?.personalCreditChecks?.[0].id}}, "data","personalCreditPulled"]',
            },
            {
              value:
                "{{self.value === '' ? null : self.value+moment().format('THH:mm:ssZ')}}",
            },
          ],
        }}
        pluginId="personalCreditCheckUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Date
      id="backgroundCheckCompleteDate5"
      dateFormat="MM/dd/yyyy"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Background Check Complete"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{\n    !self.value || !GetInstallerAppUsers.data.principalList?.[i]?.backgroundCheckComplete\n        ? '#c4c4c4'\n        : moment(self.value).format('YYYY-MM-DD') !== moment(GetInstallerAppUsers.data.principalList?.[i]?.backgroundCheckComplete).format('YYYY-MM-DD')\n            ? 'warning'\n            : '#c4c4c4'\n}}\n",
          },
        ],
      }}
      value="{{ GetInstallerAppUsers.data?.principalList?.[i]?.backgroundCheckComplete }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.principalList.length > 0  && !personalCreditCheckUpdates.value.hasOwnProperty(GetInstallerAppUsers.data.principalList?.[i]?.id) }}

"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{ GetInstallerAppUsers.data?.principalList?.[i]?.id}}, "where", "id"]',
            },
            {
              value: "{{ GetInstallerAppUsers.data?.principalList?.[i]?.id }}",
            },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{ GetInstallerAppUsers.data?.principalList?.[i]?.id}}, "data","backgroundCheckComplete"]',
            },
            {
              value:
                "{{self.value === '' ? null : self.value+moment().format('THH:mm:ssZ')}}",
            },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
  </View>
</Container>
