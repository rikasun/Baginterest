import { connect } from 'react-redux';
import BoardIndexItem from './board_index_item';
import { fetchAllBoards, fetchBoard } from '../../actions/board_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    board: Object.values(state.entities.boards[ownProps.match.params.id]),
    pins: Object.values(state.entities.pins),
  }
}

const mapDispatchToProps = dispatch => ({
  fetchBoard: (id) => dispatch(fetchBoard(id)),
})

export default connect(mapStateToProps, mapDispatchToProps)(BoardIndexItem);
