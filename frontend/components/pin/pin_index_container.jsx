import { connect } from 'react-redux';
import PinIndex from './pin_index';
import { fetchUserPins } from '../../actions/pin_actions';
import { fetchUserBoards } from '../../actions/board_actions';
import { createPinBoard } from '../../actions/pinboard_actions';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    pins: Object.values(state.entities.pins).filter(pin => pin.authorId == ownProps.match.params.id),
    boards: Object.values(state.entities.boards).filter(board => board.authorId == state.session.id),
    currentuserId: state.session.id
  }
}

const mapDispatchToProps = dispatch => ({
  fetchUserPins: (userId) => dispatch(fetchUserPins(userId)),
  fetchUserBoards: (userId) => dispatch(fetchUserBoards(userId)),
  addPinToBoard: (boardId, pinId) => dispatch(createPinBoard({boardId,pinId})),
  openModal: (modal) => dispatch(openModal(modal)),
  closeModal: () => dispatch(closeModal())
})

export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);
