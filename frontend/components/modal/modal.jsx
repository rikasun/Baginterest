import React from 'react';
import { closeModal, openModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import LoginFormContainer from '../session_form/login_form_container';
import SignupFormContainer from '../session_form/signup_form_container';

class Modal extends React.Component {
  constructor(props){
    super(props);
  }
  componentDidMount() {
    if (this.props.location) {
      this.props.openModal(this.props.location.pathname.slice(1))
    }
  }
  componentDidUpdate(){
    if (this.props.location) {
      this.props.openModal(this.props.location.pathname.slice(1))
    }
  }

  showform(){
    let component;
    switch (this.props.modal) {
      case 'login':
      component = <LoginFormContainer />;
      break;
      case 'signup':
      component = <SignupFormContainer />;
      break;
      default:
      return null;
    }
    return component;
  }

  render(){
    if (!this.props.modal) {
      return null;
    }
    return (
      <div className="modal-background" onClick={this.props.closeModal}>
        <div className="modal-child" onClick={e => e.stopPropagation()}>
          { this.showform() }
        </div>
      </div>
    );
  }
}

const mapStateToProps = (state, ownProps) => {
  // debugger
  return {
    modal: state.ui.modal
  };
};

const mapDispatchToProps = dispatch => {
  return {
    closeModal: () => dispatch(closeModal()),
    openModal: (modal) => dispatch(openModal(modal))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Modal);
