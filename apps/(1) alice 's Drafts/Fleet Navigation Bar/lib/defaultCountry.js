return [
  'wes.kania@finn.com',
  'immanuel.klaiber@finn.com',
  'laura.engelland@finn.com',
  'andrew.pearce@finn.com',
  'alan.wisniewski@finn.com',
  'eric.wertenberger@finn.com',
  'campbell.wood@finn.com',
  'brett.federico@finn.com',
  'ayah.eltaher@finn.com',
  'brandon.shapiro@finn.com',
  'kerri.mcdonald@finn.com'
].includes({{ current_user.email }}) ? 'US' : 'GER'