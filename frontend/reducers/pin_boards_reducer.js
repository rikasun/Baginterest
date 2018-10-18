import merge from 'lodash/merge';

import { RECEIVE_PINBOARD } from '../actions/pinboard_actions';
import { RECEIVE_PINBOARDS } from '../actions/pinboard_actions';



const pinBoardsReducer = (state={}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_PINBOARD:
      return merge({}, state, {[action.pinBoard.id]: action.pinBoard});
    case RECEIVE_PINBOARDS:
      return action.pinBoards;
    default:
      return state;
  }

};

export default pinBoardsReducer;
