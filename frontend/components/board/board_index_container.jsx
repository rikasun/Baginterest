import { connect } from 'react-redux';
import BoardIndex from './board_index';
import { fetchUserBoards } from '../../actions/board_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    boards: state.entities.boards[ownProps.match.params.userId]
  }
}

const mapDispatchToProps = dispatch => ({
  fetchUserBoards: (userId) => dispatch(fetchUserBoards(userId))
})


export default connect(mapStateToProps, mapDispatchToProps)(BoardIndex);
