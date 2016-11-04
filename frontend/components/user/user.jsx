import React from 'react';
import { Link, withRouter } from 'react-router';

class User extends React.Component {
  constructor(props) {
    super(props);

    this.user = this.props.user;
    this.props.fetchUser(this.props.params.username);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.params.username !== undefined && nextProps.params.username !== undefined && this.props.params.username !== nextProps.params.username && nextProps.params.username !== 'boards') {
      this.props.fetchUser(nextProps.params.username);
    }
    this.user = nextProps.user;
    $('.detail-titles').children().children().each((idx, ul) => {

      if (nextProps.location.pathname === `/${nextProps.params.username}` || nextProps.location.pathname === `/${nextProps.params.username}/boards` ) {
        if (idx === 0) {
          $(ul).attr('class', 'text-container checked');
        } else {
          $(ul).attr('class', 'text-container unchecked');
        }
      } else if (nextProps.location.pathname === `/${nextProps.params.username}/pins` ) {
        if (idx === 1) {
          $(ul).attr('class', 'text-container checked');
        } else {
          $(ul).attr('class', 'text-container unchecked');
        }
      } else if (nextProps.location.pathname === `/${nextProps.params.username}/followers` ) {
        if (idx === 2) {
          $(ul).attr('class', 'text-container checked');
        } else {
          $(ul).attr('class', 'text-container unchecked');
        }
      } else if (nextProps.location.pathname === `/${nextProps.params.username}/following` ) {
        if (idx === 3) {
          $(ul).attr('class', 'text-container checked');
        } else {
          $(ul).attr('class', 'text-container unchecked');
        }
      }
      $(ul).on("click", (e2) => {
        $('.detail-titles').children().children().each((idx2, ul2) => {
          $(ul2).attr('class', 'text-container unchecked');
        }).bind(this);
        $(ul).attr('class', 'text-container checked');
      }).bind(this);
    });
  }

  // toggleFollowing

  render() {

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
    // TODO change this when creating Follows
    let followersUrl = `${this.user.username}/followers`;
    let followingUrl = `${this.user.username}/following`;

    let pinCount = this.props.currentUser.pins.length;
    // REVIEW change 404 to the actual count when you code followers
    let followerCount = "404";
    let followeeCount = "404";
    let followText = "Unfollowed";

    let followButton = null;
    // Follow Button Logic - Other user detail logic
    if (this.user !== undefined && this.user.id !== undefined && this.user.id !== this.props.currentUser.id) {
      let followButtonClass = "unfollowed follow-button";
      // this will also contain the logic for displaying other user's detail that isn't currentUser

      // To be implemented later
      followButton = (<div className={followButtonClass}>{followText}</div>);
    }

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
              <ul className="text-container checked">
                <li className="number">{this.props.boards.length}</li>
                <li>Boards</li>
              </ul>
            </Link>
            <Link to={pinsUrl}>
              <ul className="text-container unchecked">
                <li className="number">{pinCount}</li>
                <li>Pins</li>
              </ul>
            </Link>
            <Link to={followersUrl}>
              <ul className="text-container unchecked">
                <li className="number">{followerCount}</li>
                <li>Followers</li>
              </ul>
            </Link>
            <Link to={followingUrl}>
              <ul className="text-container unchecked">
                <li className="number">{followeeCount}</li>
                <li>Following</li>
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
