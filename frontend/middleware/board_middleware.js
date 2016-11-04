import { receiveBoards,
         receiveBoard,
         receiveBoardWithCreate,
         receiveBoardWithEdit,
         receiveBoardWithDelete,
         receiveErrors,
         FETCH_BOARDS,
         FETCH_BOARD,
         CREATE_BOARD,
         UPDATE_BOARD,
         DELETE_BOARD
} from '../actions/board_actions';

import { fetchBoards,
         fetchBoard,
         createBoard,
         updateBoard,
         deleteBoard } from '../util/board_api_util';

export default ({getState, dispatch}) => next => action => {
  const receiveBoardsSuccess = boards => dispatch(receiveBoards(boards));
  const receiveBoardSuccess = board => dispatch(receiveBoard(board));
  const receiveBoardWithCreateSuccess = board => dispatch(receiveBoardWithCreate(board));
  const receiveBoardWithEditSuccess = board => dispatch(receiveBoardWithEdit(board));
  const receiveBoardWithDeleteSuccess = id => dispatch(receiveBoardWithDelete(id));
  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    dispatch(receiveErrors(errors));
  };

  switch(action.type){
    case FETCH_BOARDS:
      fetchBoards(action.userId, receiveBoardsSuccess, errorCallback);
      return next(action);

    case FETCH_BOARD:
      fetchBoard(action.id, receiveBoardSuccess, errorCallback);
      return next(action);

    case CREATE_BOARD:
      createBoard(action.board, receiveBoardWithCreateSuccess, errorCallback);
      break;

    case UPDATE_BOARD:
      updateBoard(action.board, receiveBoardWithEditSuccess, errorCallback);
      break;

    case DELETE_BOARD:
      deleteBoard(action.id, receiveBoardWithDeleteSuccess, errorCallback);
      break;

    default:
      return next(action);

  }
};
