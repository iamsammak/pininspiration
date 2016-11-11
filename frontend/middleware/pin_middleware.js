import { receiveAllPins,
         receiveBoardPins,
         receivePinWithCreate,
         receivePinWithEdit,
         receivePinWithDelete,
         receivePin,
         receiveErrors,
         FETCH_ALL_PINS,
         FETCH_BOARD_PINS,
         FETCH_SEARCH_PINS,
         FETCH_USER_PINS,
         FETCH_PIN,
         CREATE_PIN,
         UPDATE_PIN,
         DELETE_PIN } from '../actions/pin_actions';

import { fetchBoard, fetchBoards } from '../actions/board_actions';

import { hashHistory } from 'react-router';

import { fetchAllPins,
  fetchBoardPins,
  fetchSearchPins,
  fetchUserPins,
  fetchPin,
  createPin,
  updatePin,
  deletePin } from '../util/pin_api_util';


const PinMiddleware = ({getState, dispatch}) => next => action => {
  const receiveAllPinsSuccess = pins => dispatch(receiveAllPins(pins));
  const receiveBoardPinsSuccess = pins => dispatch(receiveBoardPins(pins));
  const receivePinWithCreateSuccess = pin => {
    dispatch(receivePinWithCreate(pin));
    dispatch(fetchBoard(pin.board.id));
    dispatch(fetchBoards(pin.user.id));
    hashHistory.push(`boards/${pin.board.id}`);
  };

  const receivePinWithEditSuccess = pin => {
    dispatch(receivePinWithEdit(pin));
    dispatch(fetchBoard(pin.board.id));
    dispatch(fetchBoards(pin.user.id));
    hashHistory.push(`boards/${pin.board.id}`);
  };
  const receivePinWithDeleteSuccess = id => {
    dispatch(receivePinWithDelete(id));
    // dispatch(fetchBoard(pin.board.id));
    // dispatch(fetchBoards(pin.user.id));
    // hashHistory.push(`boards/${pin.board.id}`);
  };

  const receivePinSuccess = pin => dispatch(receivePin(pin));

  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    dispatch(receiveErrors(errors));
  };

  console.log(action);
  switch(action.type) {
    case FETCH_ALL_PINS:
      fetchAllPins(action.page, receiveAllPinsSuccess, errorCallback);
      return next(action);

    case FETCH_BOARD_PINS:
      fetchBoardPins(action.boardId, receiveBoardPinsSuccess, errorCallback);
      return next(action);

    case FETCH_SEARCH_PINS:
      fetchSearchPins(action.keyword, receiveBoardPinsSuccess, errorCallback);
      return next(action);

    case FETCH_USER_PINS:
      fetchUserPins(action.userId, receiveBoardPinsSuccess, errorCallback);
      return next(action);

    case FETCH_PIN:
      fetchPin(action.id, receivePinSuccess, errorCallback);
      return next(action);

    case CREATE_PIN:
      createPin(action.pin, receivePinWithCreateSuccess, errorCallback);
      break;

    case UPDATE_PIN:
      updatePin(action.pin, receivePinWithEditSuccess, errorCallback);
      break;

    case DELETE_PIN:
      deletePin(action.id, receivePinWithDeleteSuccess, errorCallback);
      break;

    default:
      return next(action);
  }
};

export default PinMiddleware;
