import * as PinboardAPIUtil from '../util/pinboard_api_util';

export const RECEIVE_PINBOARD = 'RECEIVE_PINBOARD';

export const receivePinboard = pinBoard => ({
  type: RECEIVE_PINBOARD,
  pinBoard
});

export const createPinBoard = (pinBoard) => (dispatch) => {
  return PinboardAPIUtil.createPinBoard(pinBoard).then(
    response => {
      return dispatch(receivePinboard(response));}
  );
};
