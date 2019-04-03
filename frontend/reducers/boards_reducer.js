import merge from 'lodash/merge';

import {
  RECEIVE_BOARDS,
  RECEIVE_BOARD,
  REMOVE_BOARD,
  RECEIVE_BOARD_SHOW
} from '../actions/board_actions';

const boardsReducer = (state={}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_BOARDS:
      return merge({}, action.boards.boards);
    case RECEIVE_BOARD:
      return merge({}, state, {[action.board.board.id]:action.board.board});
    case RECEIVE_BOARD_SHOW:
      return action.board;
    case REMOVE_BOARD:
      let newState = merge({}, state)
      delete newState[action.boardId]
      return newState;
    default:
      return state;
  }
};

export default boardsReducer;
