import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import { withRouter } from 'react-router-dom';
import Nav from './nav';
// import SearchBar from './search_bar'

const mapStateToProps = ({ session, entities: { users }, ui }) => {
  return {
    currentUser: users[session.id],
    modal: ui.modal
  };
};

const mapDispatchToProps = dispatch => ({
  logout: () => {
    return dispatch(logout());
  },
  openModal: modal => dispatch(openModal(modal)),
  closeModal: () => dispatch(closeModal())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(withRouter(Nav));
