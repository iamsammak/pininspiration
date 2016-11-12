import React from 'react';
import { Link, withRouter } from 'react-router';
import PinCard from '../pin/pin_card'; //remove if unneccessary

class Followers extends React.Component {
  constructor(props) {
    super(props);
  }

  isEmpty(obj) {
    for(var prop in obj) {
        if(obj.hasOwnProperty(prop))
            return false;
    }

    return true && JSON.stringify(obj) === JSON.stringify({});
  }

  render() {
    let followers = "";
    let followerArr = [];
    if (this.props.user === undefined) {
      return (<div></div>);
    } else {

      followerArr = $.map(this.props.user.followers, (value, index) => {
        return [value];
      });
    }

    String.prototype.capitalize = function() {
      return this.charAt(0).toUpperCase() + this.slice(1);
    };

    if (!this.isEmpty(this.props.user.followers)) {
      followers = followerArr.map((follower) => (
        <Link key={follower.id+follower.username} to={follower.username}>
          <img className='user-picture' src={follower.image_url} />
          <span className="user-name">{follower.username.capitalize()}</span>
        </Link>

      ));
    }

    return (
      <section className="followers-container">
        <div className='all-followers-container'>{followers}</div>
      </section>
    );
  }
}

export default withRouter(Followers);
