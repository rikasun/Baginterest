import React from 'react';
import { connect } from 'react-redux';
import { closeModal, openModal } from '../../actions/modal_actions';
import LoginFormContainer from '../session_form/login_form_container';
import SignupFormContainer from '../session_form/signup_form_container';
import CreateBoardContainer from '../board/create_board_container';
import CreatePinContainer from '../pin/create_pin_container';

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
        return (
          [<div className="modal-background" onClick={this.props.closeModal}>
          </div>,
          <div className="modal-child" onClick={e => e.stopPropagation()}>
            <LoginFormContainer />
          </div>
          ]
        );
      break;
      case 'signup':
        return (
          [<div className="modal-background" onClick={this.props.closeModal}>
        </div>,
          <div className="modal-child" onClick={e => e.stopPropagation()}>
            <SignupFormContainer />
          </div>]
        );
      break;
      case 'createBoard':
          return (
            <div className="board-modal-background" onClick={this.props.closeModal}>
              <div className="board-modal-child" onClick={e => e.stopPropagation()}>
                <CreateBoardContainer />
              </div>
            </div>
          );
      break;
      case 'createPin':
          return (
            <div className="pin-modal-background" onClick={this.props.closeModal}>
              <div className="pin-modal-child" onClick={e => e.stopPropagation()}>
                <CreatePinContainer />
              </div>
            </div>
          );
      break;
      case 'editBoard':
          return (
            <div className="board-modal-background" onClick={this.props.closeModal}>
              <div className="board-modal-child" onClick={e => e.stopPropagation()}>
                <CreateBoardContainer />
              </div>
            </div>
          );
      break;
    
      default:
       return component = <SignupFormContainer />;;
    }
  }

  render(){
    if (!this.props.modal) {
      return null;
    }

    return this.showform();
  }
}

const mapStateToProps = (state, ownProps) => {
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
