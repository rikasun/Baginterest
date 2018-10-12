import { connect } from 'react-redux';
import React from 'react';
import { signup, receiveErrors } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import SessionForm from './session_form';

const mapStateToProps = ({ errors }) => {
  return {
    user: { email:'', password:'', age:''},
    errors: errors.session,
    formType: 'signup',
  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: (user) => dispatch(signup(user)),
   closeModal: () => dispatch(closeModal()),
   receiveErrors: (errors) => dispatch(receiveErrors(errors))

  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
