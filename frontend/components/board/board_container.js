import { connect } from 'react-redux';
import { fetchBoard,
         updateBoard,
         deleteBoard } from '../../actions/board_actions';

import { updatePin, deletePin } from '../../actions/pin_actions';

import Board from './board';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  user: state.user,
  board: state.boards.board,
  pins: state.pins.pins,
  pin: state.pins.pin
});

const mapDispatchToProps = dispatch => ({
  fetchBoard: (boardId) => dispatch(fetchBoard(boardId)),
  updateBoard: board => dispatch(updateBoard(board)),
  deleteBoard: id => dispatch(deleteBoard(id)),
  updatePin: (pin) => dispatch(updatePin(pin)),
  deletePin: (id) => dispatch(deletePin(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Board);
