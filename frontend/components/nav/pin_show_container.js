import { connect } from "react-redux";
import PinShow from "./pin_show";
import { fetchAllPins } from "../../actions/pin_actions";

const mapStateToProps = (state, ownProps) => {
  return {  
    pin: state.entities.pins[ownProps.match.params.id],
  };
};

const mapDispatchToProps = (dispatch) => ({
  fetchAllPins: ()=>dispatch(fetchAllPins())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PinShow);
