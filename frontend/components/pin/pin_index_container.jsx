import { connect } from 'react-redux';
import PinIndex from './pin_index';
import { fetchUserPins } from '../../actions/pin_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    pins: Object.values(state.entities.pins)
  }
}

const mapDispatchToProps = dispatch => ({
  // fetchUser: (id) => dispatch(fetchUser(id)),
  fetchUserPins: (userId) => dispatch(fetchUserPins(userId))
})


export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);
