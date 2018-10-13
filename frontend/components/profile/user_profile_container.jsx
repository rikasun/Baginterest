import { connect } from 'react-redux';
import UserProfile from './user_profile';

const mapStateToProps = ({ session, entities: { users }, ui }) => {
    if (session.id) {
      return {
        currentUsername: users[session.id].username ||
        users[session.id].email.split("@")[0]
      }

    }


}

const mapDispatchToProps = dispatch => ({

})


export default connect(mapStateToProps, mapDispatchToProps)(UserProfile);
