import merge from 'lodash/merge';

import {
  RECEIVE_PINS,
  RECEIVE_PIN,
  REMOVE_PIN
} from '../actions/pin_actions';



const pinsReducer = (state={}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_PINS:
      return merge({}, state, action.pins);
    case RECEIVE_PIN:
      return merge({}, state, {[action.pin.id]: action.pin})
    case REMOVE_PIN:
      let newState = merge({}, state)
      delete newState[action.pinId]
      return newState;
    default:
      return state;
  }
};

export default pinsReducer;
