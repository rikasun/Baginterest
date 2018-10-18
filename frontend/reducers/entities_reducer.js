import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import boardsReducer from './boards_reducer';
import pinsReducer from './pins_reducer';
import pinBoardsReducer from './pin_boards_reducer';

const entitiesReducer = combineReducers({
  users: usersReducer,
  boards: boardsReducer,
  pins: pinsReducer,
  pinBoards: pinBoardsReducer
});

export default entitiesReducer;
