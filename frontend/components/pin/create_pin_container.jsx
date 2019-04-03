import { connect } from 'react-redux';
import { createPin } from '../../actions/pin_actions';
import { closeModal } from '../../actions/modal_actions';
import CreatePin from './create_pin';

const mapStateToProps = (state) => {
  return {
    pin: {
      url: '', description: '',
      photoUrl: null, photo: null
    }
  };
};

const mapDispatchToProps = dispatch => {
  return {
  createPin: (pin) => dispatch(createPin(pin)),
  closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(CreatePin);
