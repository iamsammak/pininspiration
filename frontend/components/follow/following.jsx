import React from 'react';
import { Link, withRouter } from 'react-router';
import PinCard from '../pin/pin_card'; //remove if unneccessary

class Following extends React.Component {
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
    let followees = "";
    let followerArr = [];
    if (this.props.user === undefined) {
      return (<div></div>);
    } else {

      followerArr = $.map(this.props.user.followees, (value, index) => {
        return [value];
      });
    }

    String.prototype.capitalize = function() {
      return this.charAt(0).toUpperCase() + this.slice(1);
    };

    if (!this.isEmpty(this.props.user.followees)) {
      followees = followerArr.map((follower) => (
        <Link key={follower.id+follower.username} to={follower.username}>
          <img className='user-picture' src={follower.image_url} />
          <span className="user-name">{follower.username.capitalize()}</span>
        </Link>

      ));
    }

    return (
      <section className="followers-container">
        <div className='all-followers-container'>{followees}</div>
      </section>
    );
  }
}

export default withRouter(Following);
