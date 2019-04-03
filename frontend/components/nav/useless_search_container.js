import { connect } from 'react-redux';
import Search from './search';
import { fetchAllPins } from "../../actions/pin_actions";

const mapStateToProps = (state) => {
  return {
    pins: Object.values(state.entities.pins),
  };
};

const mapDispatchToProps = dispatch => ({
  fetchAllPins: () => dispatch(fetchAllPins()),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Search);