<GlobalFunctions>
  <GraphQLQuery
    id="getReposServerSidePaginated"
    body={include("./lib/getReposServerSidePaginated.gql", "string")}
    headers={
      '[{"key":"first","value":"{{ table1.pagination.pageSize }}"},{"key":"after","value":"{{ table1.pagination.afterCursor }}"},{"key":"before","value":"{{ table1.pagination.beforeCursor }}"}]'
    }
    isMultiplayerEdited={false}
    resourceDisplayName="graphql test github"
    resourceName="c834996d-3660-49e4-bd92-305218403eeb"
  />
  <GraphQLQuery
    id="getReposAll"
    body={include("./lib/getReposAll.gql", "string")}
    headers="[]"
    isMultiplayerEdited={false}
    resourceDisplayName="graphql test github"
    resourceName="c834996d-3660-49e4-bd92-305218403eeb"
  />
  <GraphQLQuery
    id="getReposServerSidePaginated2"
    body={include("./lib/getReposServerSidePaginated2.gql", "string")}
    graphQLVariables={
      '[{"key":"first","value":"{{ table1.pagination.pageSize }}"},{"key":"after","value":"{{ table1.pagination.afterCursor }}"},{"key":"before","value":"{{ table1.pagination.beforeCursor }}"}]'
    }
    headers={'[{"key":"","value":""}]'}
    isMultiplayerEdited={false}
    resourceDisplayName="graphql test github"
    resourceName="c834996d-3660-49e4-bd92-305218403eeb"
  />
</GlobalFunctions>
