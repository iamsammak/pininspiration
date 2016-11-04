import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';

import { createBoard, fetchBoards } from '../../actions/board_actions';
import { createPin } from '../../actions/pin_actions';

import Home from './home';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  boards: state.boards.boards,
  board: state.boards.board,
  pins: state.pins.pins,
  pin: state.pins.pin
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  createBoard: board => dispatch(createBoard(board)),
  createPin: pin => dispatch(createPin(pin)),
  fetchBoards: userId => dispatch(fetchBoards(userId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);
