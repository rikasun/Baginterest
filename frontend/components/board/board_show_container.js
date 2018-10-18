import { connect } from 'react-redux';
import BoardShow from './board_show';
import { fetchAllBoards, fetchBoard } from '../../actions/board_actions';
import { selectPinsByBoardId } from '../../reducers/selector';

const mapStateToProps = (state, ownProps) => {
  return {
    board: Object.values(state.entities.boards),
    pins: Object.values(state.entities.pins),
    user: state.entities.users
  }
}

const mapDispatchToProps = dispatch => ({
  fetchBoard: (id) => dispatch(fetchBoard(id)),

})


export default connect(mapStateToProps, mapDispatchToProps)(BoardShow);
