import merge from 'lodash/merge';

import { RECEIVE_PINBOARD,
         RECEIVE_PINBOARDS,
         REMOVE_PINBOARD
       } from '../actions/pinboard_actions';




const pinBoardsReducer = (state={}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_PINBOARD:
      return merge({}, state, {[action.pinBoard.id]: action.pinBoard});
    case RECEIVE_PINBOARDS:
      return action.pinBoards;
    case REMOVE_PINBOARD:
      let newState = merge({}, state)
      delete newState[action.pinBoard.id]
      return newState;
    default:
      return state;
  }

};

export default pinBoardsReducer;
