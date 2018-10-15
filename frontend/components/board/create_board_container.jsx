import { connect } from 'react-redux';
import React from 'react';
import { receiveBoard, receiveBoardErrors } from '../../actions/board_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import CreateBoard from './create_board';

const mapStateToProps = (state) => {
  return {

  };
};

const mapDispatchToProps = dispatch => {
  return {
  closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(CreateBoard);
