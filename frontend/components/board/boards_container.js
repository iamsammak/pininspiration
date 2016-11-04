import { connect } from 'react-redux';
import { fetchBoards,
         fetchBoard,
         createBoard,
         updateBoard,
         deleteBoard } from '../../actions/board_actions';

import Boards from './boards';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  user: state.session.user,
  boards: state.boards.boards,
  pins: state.pins.pins,
  pin: state.pins.pin
});

const mapDispatchToProps = dispatch => ({
  fetchBoards: (userId) => dispatch(fetchBoards(userId)),
  fetchBoard: (id) => dispatch(fetchBoard(id)),
  createBoard: board => dispatch(createBoard(board)),
  updateBoard: (board) => dispatch(updateBoard(board)),
  deleteBoard: (id) => dispatch(deleteBoard(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Boards);
