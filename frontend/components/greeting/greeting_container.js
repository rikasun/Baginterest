import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { openModal } from '../../actions/modal_actions';
import { withRouter } from 'react-router-dom';
import Greeting from './greeting';

const mapStateToProps = ({ session, entities: { users }, ui }) => {
  return {
    currentUser: users[session.id],
    modal: ui.modal
  };
};

const mapDispatchToProps = dispatch => ({
  logout: (modal) => {
    return dispatch(logout());
  },
  openModal: modal => dispatch(openModal(modal))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(withRouter(Greeting));
