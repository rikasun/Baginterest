import * as BoardAPIUtil from '../util/board_api_util';
import {receivePins} from './pin_actions';
import {receivePinboards} from './pinboard_actions';

export const RECEIVE_BOARDS = 'RECEIVE_BOARDS';
export const RECEIVE_BOARD = 'RECEIVE_BOARD';
export const REMOVE_BOARD = 'REMOVE_BOARD';
export const RECEIVE_BOARD_ERRORS = "RECEIVE_BOARD_ERRORS";



export const receiveBoards = boards => ({
  type: RECEIVE_BOARDS,
  boards
});

export const receiveBoard = board => ({
  type: RECEIVE_BOARD,
  board
});

export const removeBoard = board => ({
  type: REMOVE_BOARD,
  board
});

export const receiveBoardErrors = errors => ({
  type: RECEIVE_BOARD_ERRORS,
  errors
});


export const fetchUserBoards = (userId) => (dispatch) => {
  return BoardAPIUtil.fetchBoards(userId)
  .then(boards => dispatch(receiveBoards(boards)));
};

export const fetchBoard = (id) => (dispatch) => {
  return BoardAPIUtil.fetchBoard(id)
  .then(response =>{
    dispatch(receiveBoard(response.board));
    dispatch(receivePins(response.pins));
    dispatch(receivePinboards(response.pinboards));
  }
 );
};

export const createBoard = (board) => (dispatch) => {
  return BoardAPIUtil.createBoard(board).then(
    board => {
      return dispatch(receiveBoard(board));},
    error => {
      return dispatch(receiveBoardErrors(error.responseJSON))}
  );
};

export const updateBoard = (board) => (dispatch) => {
  return BoardAPIUtil.updateBoard(board).then(
    board => {
      return dispatch(receiveBoard(board));},
    error => {
      return dispatch(receiveBoardErrors(error.responseJSON))}
  );
};

export const deleteBoard = (boardId) => (dispatch) => {
  return BoardAPIUtil.deleteBoard(boardId).then((boardId) => dispatch(removeBoard(boardId)));
};
