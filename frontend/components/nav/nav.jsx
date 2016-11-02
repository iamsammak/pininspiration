import React from 'react';
import { Link, withRouter } from 'react-router';

class Nav extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchWord: ""
    };
    this.logEmOut = this.logEmOut.bind(this);
    this.currentUser = this.props.currentUser;
  }
  // 
  // shouldComponentUpdate(nextProps) {
  //   if (!nextProps.currentUser) {
  //     return false;
  //   }
  //   return true;
  // }

  // might cause an error
  componentWillReceiveProps(nextProps) {
    if (!nextProps.currentUser) {
      this.props.router.push("/login");
    }
  }

  logEmOut (e) {
    this.props.logout(0);
  }

  render() {
    let userUrlPath = `/${this.currentUser.username}`;

    return (
      <section className="nav_container">
        <div className="logo-container all-containers">
          <Link to="/">
            <i class="fa fa-thumb-tack logo" aria-hidden="true" alt="logo" id="logo"></i>
          </Link>
        </div>

        <div className="search-container all-containers">
          <input className="search-bar"
            type="text"
            placeholder='Search' />
        </div>

        <div className="profile-container all-containers">
          <i class="fa fa-bars catalog-link" aria-hidden="true"></i>
          <Link to={userUrlPath}>
            <i class="fa fa-user profile-link" aria-hidden="true" alt='profile'></i>
          </Link>
          <button className="logout-button" onClick={(e) => this.logEmOut(e)}>Logout</button>
        </div>
      </section>
    );
  }
}
