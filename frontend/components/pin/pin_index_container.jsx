import { connect } from 'react-redux';
import PinIndex from './pin_index';
import { fetchUserPins } from '../../actions/pin_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    pins: state.entities.pins[ownProps.match.params.userId]
  }
}

const mapDispatchToProps = dispatch => ({
  fetchUserPins: (userId) => dispatch(fetchUserPins(userId))
})


export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);
