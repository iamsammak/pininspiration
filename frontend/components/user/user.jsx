import React from 'react';
import { Link, withRouter } from 'react-router';

class User extends React.Component {
  constructor(props) {
    super(props);

    this.user = this.props.user;
    this.props.fetchUser(this.props.params.username);
    this.toggleFollowing = this.toggleFollowing.bind(this);
  }

  componentWillMount() {
  }

  componentDidMount() {
  }

  componentWillReceiveProps(nextProps) {
    let { props: { params }} = this;
    if (this.props.params.username !== undefined && nextProps.params.username !== undefined && this.props.params.username !== nextProps.params.username && nextProps.params.username !== 'boards') {
      this.props.fetchUser(nextProps.params.username);
    }
    this.user = nextProps.user;
    $('.detail-titles').children().children().each((idx, ul) => {

      if (nextProps.location.pathname === `/${nextProps.params.username}` || nextProps.location.pathname === `/${nextProps.params.username}/boards` ) {
        if (idx === 0) {
          $(ul).attr('class', 'profile-detail-container checked');
        } else {
          $(ul).attr('class', 'profile-detail-container unchecked');
        }
      } else if (nextProps.location.pathname === `/${nextProps.params.username}/pins` ) {
        if (idx === 1) {
          $(ul).attr('class', 'profile-detail-container checked');
        } else {
          $(ul).attr('class', 'profile-detail-container unchecked');
        }
      } else if (nextProps.location.pathname === `/${nextProps.params.username}/followers` ) {
        if (idx === 2) {
          $(ul).attr('class', 'profile-detail-container checked');
        } else {
          $(ul).attr('class', 'profile-detail-container unchecked');
        }
      } else if (nextProps.location.pathname === `/${nextProps.params.username}/following` ) {
        if (idx === 3) {
          $(ul).attr('class', 'profile-detail-container checked');
        } else {
          $(ul).attr('class', 'profile-detail-container unchecked');
        }
      }
      $(ul).on("click", (e2) => {
        $('.detail-titles').children().children().each((idx2, ul2) => {
          $(ul2).attr('class', 'profile-detail-container unchecked');
        }).bind(this);
        $(ul).attr('class', 'profile-detail-container checked');
      }).bind(this);
    });
  }

  toggleFollowing(e, followButtonClass) {
    if (followButtonClass === "unfollowed follow-button") {
      this.props.followUser(this.user.id);
    } else {
      this.props.unfollowUser(this.user.id);
    }
  }


  render() {
    // this fixed the routing hard refresh error
    if(!this.user) {
      return (<div></div>);
    }

    let name = null;
    if (this.props.currentUser !== undefined) {
      name = this.props.currentUser.username.charAt(0).toUpperCase() + this.props.currentUser.username.slice(1);
    }
    let description = null;
    // let description;
    if (this.user.description !== undefined) {
      description = this.user.description;
    }

    let boardsUrl = `${this.user.username}/boards`;
    let pinsUrl = `${this.user.username}/pins`;
    let followersUrl = `${this.user.username}/followers`;
    let followingUrl = `${this.user.username}/following`;

    let pinCount = this.props.currentUser.pins.length;

    let followerCount = this.props.currentUser.followers.length;
    let followeeCount = this.props.currentUser.followees.length;
    let followText = "Follow";

    let followButton = null;
    if (this.user !== undefined && this.user.id !== undefined && this.user.id !== this.props.currentUser.id) {
      let followButtonClass = 'unfollowed follow-button';
      name = this.user.username.charAt(0).toUpperCase() + this.user.username.slice(1);
      pinCount = this.user.pins.length;
      followerCount = this.user.followers.length;
      followeeCount = this.user.followees.length;
      for (var i = 0; i < this.user.followers.length; i++) {
        if (this.user.followers[i].id === this.props.currentUser.id) {
            followButtonClass = 'following follow-button';
            followText = "Unfollow";
        }
      }

      followButton = (<div className={followButtonClass}
        onClick={(e) => this.toggleFollowing(e, followButtonClass)}>{followText}</div>);
    }

    // console.log("user:", this.props.children);

    return (
      <section className="user-container">
        <div className="user-profile">
          <p className="username">{name}</p>
          <div className="empty"></div>
          <p className="user-description">{description}</p>
        </div>
        <img className="profile-picture" src={this.user.image_url} />
          {followButton}
        <br />
        <div className="detail-title-container">
          <div className="detail-titles">
            <Link to={boardsUrl}>
              <ul className="profile-detail-container checked" id="boards-profile-detail-container">
                <li className="label">Boards</li>
                <li className="number">{this.props.boards.length}</li>
              </ul>
            </Link>
            <Link to={pinsUrl}>
              <ul className="profile-detail-container unchecked" id="pins-profile-detail-container">
                <li className="label">Pins</li>
                <li className="number">{pinCount}</li>
              </ul>
            </Link>
            <Link to={followersUrl}>
              <ul className="profile-detail-container unchecked">
                <li className="label">Followers</li>
                <li className="number">{followerCount}</li>
              </ul>
            </Link>
            <Link to={followingUrl}>
              <ul className="profile-detail-container unchecked">
                <li className="label">Following</li>
                <li className="number">{followeeCount}</li>
              </ul>
            </Link>
          </div>
        </div>
        <br/>
        <div className="detail-container">
          {this.props.children}
        </div>
      </section>
    );
  }
}

export default withRouter(User);
