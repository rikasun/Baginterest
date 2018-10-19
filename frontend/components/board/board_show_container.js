import { connect } from 'react-redux';
import BoardShow from './board_show';
import { fetchAllBoards, fetchBoardShow } from '../../actions/board_actions';
import { selectPinsByBoardId } from '../../reducers/selector';

const mapStateToProps = (state, ownProps) => {
  return {
    board: state.entities.boards,
    pins: Object.values(state.entities.pins),
  }
}

const mapDispatchToProps = dispatch => ({
  fetchBoard: (id) => dispatch(fetchBoardShow(id)),

})


export default connect(mapStateToProps, mapDispatchToProps)(BoardShow);
