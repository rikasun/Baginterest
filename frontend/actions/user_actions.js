import * as UserAPIUtil from '../util/user_api_util';

export const RECEIVE_USER = 'RECEIVE_USER';

export const fetchUser = id => {
  return dispatch => {
    return UserAPIUtil.fetchUser(id).then( res => dispatch({
      type: RECEIVE_USER,
      user: res.user
    })
   )
  }
}
