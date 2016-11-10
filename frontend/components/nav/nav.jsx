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
    this.update = this.update.bind(this);
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

  componentDidMount() {
    $('.search-bar').on('keyup', e => this.onKeyUp(e));
  }

  onKeyUp(e) {
    e.preventDefault();
    if (e.key !== "Enter") {
      this.setState({searchWord: e.currentTarget.value});

      // Realtime search part. If don't want that, comment out these 4 lines and comment back the rest in else statement.
      console.log(this.state.searchWord);
      this.props.fetchSearchPins(this.state.searchWord);
      this.props.router.push('/search');
    } else {

      $('.search-bar').val('');
      // console.log(this.state.searchWord);
      // this.props.fetchSearchPins(this.state.searchWord);
      this.setState({searchWord: ""});
      // this.props.router.push('/search');
    }
  }

  update(e) {
    this.setState({searchWord: e.currentTarget.value});
  }



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
              title="Home Page"
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
              title="User Profile"
              aria-hidden="true"
              alt='profile'></i>
          </Link>
          <i className="fa fa-sign-out fa-3x logout-button"
            title="Sign out"
            onClick={(e) => this.logEmOut(e)}
            aria-hidden="true"></i>
        </div>
      </section>
    );
  }
}

export default withRouter(Nav);

// <button className="logout-button"
//   onClick={(e) => this.logEmOut(e)}>Logout</button>
