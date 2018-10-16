import { connect } from 'react-redux';
import PinIndex from './pin_index';
import { fetchUserPins } from '../../actions/pin_actions';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    pins: Object.values(state.entities.pins)
  }
}

const mapDispatchToProps = dispatch => ({
  fetchUserPins: (userId) => dispatch(fetchUserPins(userId)),
  openModal: (modal) => dispatch(openModal(modal)),
  closeModal: () => dispatch(closeModal())
})


export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);
