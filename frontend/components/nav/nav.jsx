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
    // update
  }

  // REVIEW testing
  // shouldComponentUpdate(nextProps) {
  //   if (!nextProps.currentUser) {
  //     return false;
  //   }
  //   return true;
  // }

  // might cause an error would I need shouldComponentUpdate
  componentWillReceiveProps(nextProps) {
    if (!nextProps.currentUser) {
      this.props.router.push("/login");
    }
  }

// update, onKeyUp, componentDidMount

  logEmOut (e) {
    this.props.logout(0);
  }

  render() {
    let userUrlPath = `/${this.currentUser.username}`;

    return (
      <section className="nav-bar">
        <div className="logo-container all-containers">
          <Link to="/">
            <i className="fa fa-thumb-tack fa-3x logo"
              aria-hidden="true"
              alt="logo" id="logo"></i>
          </Link>
        </div>

        <div className="search-container all-containers">
          <input className="search-bar"
            type="text"
            placeholder='Search' />
        </div>

        <div className="profile-container all-containers">
          <i className="fa fa-bars fa-3x catalog-link" aria-hidden="true"></i>
          <Link to={userUrlPath}>
            <i className="fa fa-user fa-3x profile-link"
              aria-hidden="true"
              alt='profile'></i>
          </Link>
          <button className="logout-button"
            onClick={(e) => this.logEmOut(e)}>Logout</button>
        </div>
      </section>
    );
  }
}

export default withRouter(Nav);
