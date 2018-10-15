import { connect } from 'react-redux';
import BoardIndex from './board_index';
import { fetchUserBoards } from '../../actions/board_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    boards: Object.values(state.entities.boards)
  }
}

const mapDispatchToProps = dispatch => ({
  fetchUser: (id) => dispatch(fetchUser(id)),
  fetchUserBoards: (authorId) => dispatch(fetchUserBoards(authorId))
})


export default connect(mapStateToProps, mapDispatchToProps)(BoardIndex);
