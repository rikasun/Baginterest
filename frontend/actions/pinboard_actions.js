import * as PinboardAPIUtil from '../util/pinboard_api_util';

export const RECEIVE_PINBOARD = 'RECEIVE_PINBOARD';
export const RECEIVE_PINBOARDS = 'RECEIVE_PINBOARDS';
export const REMOVE_PINBOARD = 'REMOVE_PINBOARD';

export const receivePinboard = pinBoard => ({
  type: RECEIVE_PINBOARD,
  pinBoard
});

export const receivePinboards = pinBoards => ({
  type: RECEIVE_PINBOARDS,
  pinBoards
});

export const removePinboard = pinBoard => ({
  type: REMOVE_PINBOARD,
  pinBoard
});


export const fetchPinBoards = () => (dispatch) => {

  return PinboardAPIUtil.fetchPinBoards().then(
    res => {
      return dispatch(receivePinboards(res))
    }
  );
};

export const createPinBoard = (pinBoard) => (dispatch) => {
  return PinboardAPIUtil.createPinBoard(pinBoard).then(
    response => {
      return dispatch(receivePinboard(response));}
  );
};

export const deletePinBoard = (id) => (dispatch) => {
  return PinboardAPIUtil.deletePinBoard(id).then(
    response => {
      debugger
      return dispatch(removePinboard(response));}
  );
};
