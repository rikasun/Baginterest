import { connect } from 'react-redux';
import { createBoard } from '../../actions/board_actions';
import { closeModal } from '../../actions/modal_actions';
import CreateBoard from './create_board';
import { fetchUserBoards } from '../../actions/board_actions';

const mapStateToProps = (state) => {
  return {
    board: {boardName: ''}
  };
};

const mapDispatchToProps = dispatch => {
  return {
  fetchUserBoards: (authorId) => dispatch(fetchUserBoards(authorId)),
  createBoard: (board) => dispatch(createBoard(board)),
  closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(CreateBoard);
