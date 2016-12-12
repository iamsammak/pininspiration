import React from 'react';
import { Link, withRouter } from 'react-router';

import { IndexLink, hashHistory } from 'react-router';


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

  componentWillReceiveProps(nextProps) {
    if (!nextProps.currentUser) {
      this.props.router.push("/login");
    }
  }

  componentDidMount() {
    $('.search-bar').on('keyup', e => this.onKeyUp(e));
  }

  onKeyUp(e) {
    e.preventDefault();
    if (e.key !== "Enter") {
      this.setState({searchWord: e.currentTarget.value});
      this.props.fetchSearchPins(this.state.searchWord);
      this.props.router.push('/search');
    } else {
      $('.search-bar').val('');
      this.setState({searchWord: ""});
    }
  }

  update(e) {
    this.setState({searchWord: e.currentTarget.value});
  }

  logEmOut (e) {
    this.props.logout(0);
  }

  displayCatalog() {
    return (
      <div className="catalog-menu">
        <i className="fa fa-bars fa-2x catalog-link" aria-hidden="true"></i>
        <div className="catalog-content">
          <span className="catalogCaret"></span>
          <div className="homefeed-button">
            <IndexLink to="/" className="homefeed-link">
              <i className="fa fa-chevron-right"></i>
              <span className="homefeed-title">Home Feed</span>
            </IndexLink>
          </div>
          <div className="catalog-boards">
            <i className="fa fa-chevron-right"></i>
            <span>My Boards</span>
            {
              this.currentUser.boards.map(board => {
                const boardLink = `/boards/${board.id}`;
                return (
                  <div className="catalog-board catalog-item" key={board.id}>
                    <Link key={board.id} to={boardLink} className="catalog-board-link">{board.title}</Link>
                  </div>
                );
              })
            }
          </div>
        </div>
      </div>
    );
  }

  render() {
    let userUrlPath = `/${this.currentUser.username}`;

    return (
      <section className="nav-bar">
        <div className="logo-container all-containers">
          <Link to="/">
            <i className="fa fa-thumb-tack fa-2x logo"
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
        <div className="catalog-container all-containers">
          { this.displayCatalog() }
        </div>
        <div className="profileAndLogout-container all-containers">
          <Link to={userUrlPath}>
            <i className="fa fa-user fa-2x profile-link"
              title="User Profile"
              aria-hidden="true"
              alt='profile'></i>
          </Link>
          <i className="fa fa-sign-out fa-2x logout-button"
            title="Sign out"
            onClick={(e) => this.logEmOut(e)}
            aria-hidden="true"></i>
        </div>
      </section>
    );

  }
}

export default withRouter(Nav);
