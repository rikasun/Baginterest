import * as PinboardAPIUtil from '../util/pinboard_api_util';

export const RECEIVE_PINBOARD = 'RECEIVE_PINBOARD';
export const RECEIVE_PINBOARDS = 'RECEIVE_PINBOARDS';

export const receivePinboard = pinBoard => ({
  type: RECEIVE_PINBOARD,
  pinBoard
});

export const receivePinboards = pinBoards => ({
  type: RECEIVE_PINBOARDS,
  pinBoards
});

export const createPinBoard = (pinBoard) => (dispatch) => {
  return PinboardAPIUtil.createPinBoard(pinBoard).then(
    response => {
      return dispatch(receivePinboard(response));}
  );
};
