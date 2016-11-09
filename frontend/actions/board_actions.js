export const FETCH_BOARDS = "FETCH_BOARDS";
export const FETCH_BOARD = "FETCH_BOARD";

export const RECEIVE_BOARDS = "RECEIVE_BOARDS";
export const RECEIVE_BOARD = "RECEIVE_BOARD";
export const RECEIVE_BOARD_WITH_CREATE = "RECEIVE_BOARD_WITH_CREATE";
export const RECEIVE_BOARD_WITH_EDIT = "RECEIVE_BOARD_WITH_EDIT";
export const RECEIVE_BOARD_WITH_DELETE = "RECEIVE_BOARD_WITH_DELETE";

export const CREATE_BOARD = "CREATE_BOARD";
export const UPDATE_BOARD = "UPDATE_BOARD";
export const DELETE_BOARD = "DELETE_BOARD";

export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const fetchBoards = userId => ({
  type: FETCH_BOARDS,
  userId
});

export const fetchBoard = id => ({
  type: FETCH_BOARD,
  id
});

export const receiveBoards = boards => ({
  type: RECEIVE_BOARDS,
  boards
});

export const receiveBoard = board => ({
  type: RECEIVE_BOARD,
  board
});

export const receiveBoardWithCreate = board => ({
  type: RECEIVE_BOARD_WITH_CREATE,
  board
});

export const receiveBoardWithEdit = board => ({
  type: RECEIVE_BOARD_WITH_EDIT,
  board
});

export const receiveBoardWithDelete = id => ({
  type: RECEIVE_BOARD_WITH_DELETE,
  id
});

export const createBoard = board => ({
  type: CREATE_BOARD,
  board
});

export const updateBoard = board => ({
  type: UPDATE_BOARD,
  board
});

export const deleteBoard = id => ({
  type: DELETE_BOARD,
  id
});

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});
