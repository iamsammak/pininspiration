import { connect } from 'react-redux';
import { fetchAllPins,
         updatePin,
         deletePin} from '../../actions/pin_actions';

import Pins from './pins';

const mapStateToProps = state => {
  return ({
  currentUser: state.session.currentUser,
  pins: state.pins.pins,
  pin: state.pins.pin
});
};

const mapDispatchToProps = dispatch => ({
  fetchAllPins: page => dispatch(fetchAllPins(page)),
  updatePin: pin => dispatch(updatePin(pin)),
  deletePin: id => dispatch(deletePin(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Pins);
