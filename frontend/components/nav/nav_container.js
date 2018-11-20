import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import { withRouter } from 'react-router-dom';
import Nav from './nav';
import { fetchAllPins } from "../../actions/pin_actions";

const mapStateToProps = ({ session, entities: { users }, ui, entities }) => {
  return { 
    currentUser: users[session.id], 
    modal: ui.modal, 
    pins: Object.values(entities.pins)}
};

const mapDispatchToProps = dispatch => ({
  logout: () => {
    return dispatch(logout());
  },
  openModal: modal => dispatch(openModal(modal)),
  closeModal: () => dispatch(closeModal()),
  fetchAllPins: () => dispatch(fetchAllPins())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(withRouter(Nav));
