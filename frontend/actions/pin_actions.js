import * as PinAPIUtil from '../util/pin_api_util';

export const RECEIVE_PINS = 'RECEIVE_PINS';
export const RECEIVE_PIN = 'RECEIVE_PIN';
export const REMOVE_PIN = 'REMOVE_PIN';
export const RECEIVE_PIN_ERRORS = "RECEIVE_PIN_ERRORS";



export const receivePins = pins => ({
  type: RECEIVE_PINS,
  pins
});

export const receivePin = pin => ({
  type: RECEIVE_PIN,
  pin
});

export const removePin = pin => ({
  type: REMOVE_PIN,
  pin
});

export const receivePinErrors = errors => ({
  type: RECEIVE_PIN_ERRORS,
  errors
});


export const fetchUserPins = (userId) => (dispatch) => {
  return PinAPIUtil.fetchPins(userId)
  .then(pins => dispatch(receivePins(pins)));
};

export const fetchPin = (id) => (dispatch) => {
  return PinAPIUtil.fetchPin(id)
  .then(pin => dispatch(receivePin(pin)));
};

export const createPin = (data) => (dispatch) => {
  return PinAPIUtil.createPin(data).then(
    pin => {
      return dispatch(receivePin(pin));},
    error => {
      return dispatch(receivePinErrors(error.responseJSON))}
  );
};

export const updatePin = (pin) => (dispatch) => {
  return PinAPIUtil.updatePin(pin).then(
    pin => {
      return dispatch(receivePin(pin));},
    error => {
      return dispatch(receivePinErrors(error.responseJSON))}
  );
};

export const deletePin = (pinId) => (dispatch) => {
  return PinAPIUtil.deletePin(pinId).then((pinId) => dispatch(removePin(pinId)));
};
