import { connect } from 'react-redux';
import React from 'react';
import { receiveBoard, createBoard, receiveBoardErrors } from '../../actions/board_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import CreateBoard from './create_board';

const mapStateToProps = (state) => {
  return {
    board: {boardName: ''}
  };
};

const mapDispatchToProps = dispatch => {
  return {
  createBoard: (board) => dispatch(createBoard(board)),
  closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(CreateBoard);