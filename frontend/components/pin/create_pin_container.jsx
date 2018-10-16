import { connect } from 'react-redux';
import React from 'react';
import { receivePin, createPin, receivePinErrors } from '../../actions/pin_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import CreatePin from './create_pin';

const mapStateToProps = (state) => {
  return {
    pin: {url: '', description: ''}
  };
};

const mapDispatchToProps = dispatch => {
  return {
  createPin: (pin) => dispatch(createPin(pin)),
  closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(CreatePin);
