## Component Hierarchy

# App
    - REMEMBER to remove own (comments) before final push
    - REVIEW: Hierarchy looks a bit cluttered

**AuthFormContainer**
  - LoginForm ("/login")
  - SignupForm ("signup")

**HomeContainer** (IndexRoute and path "/")
  - CreateButton (anchor float button to bottom right corner)
    + NewBoard
    + NewPin

  - **NavBarContainer** (nested in home container)
    + Logo
    + Logout

  - **SearchContainer** (bonus, "/search")
    + Search

  - **PinsContainer** ("/pins")
    + NewPin
    + PinDetail
      + will need params.pinId

  - **BoardsContainer** ("/boards")
    + BoardDetail
      + will need params.boardId
    + NewBoard
      + will need params.boardId
      Ken: When creating a board, you don't have an ID to start.
    + EditBoard
      + will need params.boardId

  - **UserContainer**
    + UserDetail
      + will need params.userId
    + Logout
    - **BoardsContainer** (will also be nested)
      + BoardDetail
        + will need params.boardId
      + NewBoard
        + will need params.boardId
      Ken: When creating a board, you don't have an ID to start.
      + EditBoard
        + will need params.boardId
    - **PinsContainer** (will also be nested)
      + NewPin
      + PinDetail
        + will need params.pinId
    - **FollowsContainer** (will also be nested)
      + followers
        + will need /users/:userId/followers
      + followings
        + will need /users/:userId/followings


## Routes

|Path                         | Component           |
|-----------------------------|---------------------|
| "/new"                      | "AuthFormContainer" |
| "/login"                    | "AuthFormContainer" |
| "/"                         | "HomeContainer"     |
| "/search/"                  | "SearchContainer"   |
| "/pins/"                    | "PinsContainer"     |
| "/pins/:pinId"              | "PinDetail"         |
| "/pins/new"                 | "NewPin"            |
| "/boards/"                  | "BoardsContainer"   |
| "/boards/:boardId"          | "BoardDetail"       |
| "/boards/:boardId/new"      | "NewBoard"          |
| "/boards/:boardId/edit"     | "EditBoard"         |
| "/users/:id"                | "UserContainer"     |
| "/users/:userId/followers"  | "FollowsContainer"  |
| "/users/:userId/followings" | "FollowsContainer"  |
