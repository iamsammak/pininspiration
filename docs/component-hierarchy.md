## Component Hierarchy

# App
    - REMEMBER to remove own (comments) before final push

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
