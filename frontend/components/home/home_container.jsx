import { connect } from 'react-redux';
import Home from './home';
import { fetchAllPins } from '../../actions/pin_actions';
import { fetchUserBoards } from '../../actions/board_actions';
import { createPinBoard } from '../../actions/pinboard_actions';
import { createBoard } from "../../actions/board_actions";
import { openModal, closeModal } from "../../actions/modal_actions";

const mapStateToProps = (state, ownProps) => {
  return {
    pins: Object.values(state.entities.pins),
    boards: Object.values(state.entities.boards).filter(board => board.authorId == state.session.id),
    currentuserId: state.session.id
  }
}

const mapDispatchToProps = dispatch => ({
  fetchAllPins: () => dispatch(fetchAllPins()),
  fetchUserBoards: currentuserId => dispatch(fetchUserBoards(currentuserId)),
  addPinToBoard: (boardId, pinId) =>
    dispatch(createPinBoard({ boardId, pinId })),
  createBoard: board => dispatch(createBoard(board)),
  closeModal: () => dispatch(closeModal()),
  openModal: modal => dispatch(openModal(modal))
});


export default connect(mapStateToProps, mapDispatchToProps)(Home);
