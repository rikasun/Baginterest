import { connect } from 'react-redux';
import BoardShow from './board_show';
import { fetchBoardShow } from '../../actions/board_actions';
import { deletePinBoard, fetchPinBoards } from '../../actions/pinboard_actions';
import { selectPinsByBoardId } from '../../reducers/selector';

const mapStateToProps = (state, ownProps) => {
  return {
    board: state.entities.boards,
    pins: Object.values(state.entities.pins),
    pinBoards: state.entities.pinBoards
  }
}

const mapDispatchToProps = (dispatch, ownProps) => ({
  fetchBoard: (id) => dispatch(fetchBoardShow(id)),
  deletePinFromBoard: (id) => dispatch(deletePinBoard(id))
})


export default connect(mapStateToProps, mapDispatchToProps)(BoardShow);
