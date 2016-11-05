export const FETCH_ALL_PINS = "FETCH_ALL_PINS";
export const FETCH_BOARD_PINS = "FETCH_BOARD_PINS";
export const FETCH_SEARCH_PINS = "FETCH_SEARCH_PINS";
export const FETCH_PIN = "FETCH_PIN";

export const RECEIVE_ALL_PINS = "RECEIVE_ALL_PINS";
export const RECEIVE_BOARD_PINS = "RECEIVE_BOARD_PINS";

export const FETCH_USER_PINS = "FETCH_USER_PINS";

export const RECEIVE_PIN_WITH_CREATE = "RECEIVE_PIN_WITH_CREATE";
export const RECEIVE_PIN_WITH_EDIT = "RECEIVE_PIN_WITH_EDIT";
export const RECEIVE_PIN_WITH_DELETE = "RECEIVE_PIN_WITH_DELETE";

export const RECEIVE_PIN = "RECEIVE_PIN";

export const CREATE_PIN = "CREATE_PIN";
export const UPDATE_PIN = "UPDATE_PIN";
export const DELETE_PIN = "DELETE_PIN";

export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const fetchAllPins = page => ({
  type: FETCH_ALL_PINS,
  page
});

export const fetchBoardPins = boardId => ({
  type: FETCH_BOARD_PINS,
  boardId
});

export const fetchSearchPins = keyword => ({
  type: FETCH_SEARCH_PINS,
  keyword
});

export const fetchUserPins = userId => ({
  type: FETCH_USER_PINS,
  userId
});

export const fetchPin = id => ({
  type: FETCH_PIN,
  id
});

export const receiveAllPins = pins => ({
  type: RECEIVE_ALL_PINS,
  pins
});

export const receiveBoardPins = pins => ({
  type: RECEIVE_BOARD_PINS,
  pins
});

export const receivePin = pin => ({
  type: RECEIVE_PIN,
  pin
});

export const receivePinWithCreate = pin => ({
  type: RECEIVE_PIN_WITH_CREATE,
  pin
});

export const receivePinWithEdit = pin => ({
  type: RECEIVE_PIN_WITH_EDIT,
  pin
});

export const receivePinWithDelete = id => ({
  type: RECEIVE_PIN_WITH_DELETE,
  id
});

export const createPin = pin => ({
  type: CREATE_PIN,
  pin
});

export const updatePin = pin => ({
  type: UPDATE_PIN,
  pin
});

export const deletePin = id => ({
  type: DELETE_PIN,
  id
});

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});
