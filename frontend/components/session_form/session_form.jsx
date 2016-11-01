import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidUpdate() {
    this.redirectIfLoggedIn();
  }

  redirectIfLoggedIn() {
    if (this.props.loggedIn) {
      this.props.router.push("/");
    }
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    this.props.processForm({user});
    // login or signup
  }

  navLink() {
		if (this.props.formType === "login") {
			return <Link to="/signup">sign up instead</Link>;
		} else {
			return <Link to="/login">log in instead</Link>;
		}
	}

// work on styling the errors
	renderErrors() {
		return(
			<ul className="form-errors">
				{this.props.errors.map((error, i) => (
					<li key={`error-${i}`}>
						{error}
					</li>
				))}
			</ul>
		);
	}

  render() {
    return (
      <main className="session-form">
        <div className="login-form-container">
          <form onSubmit={this.handleSubmit} className="login-form-box">
            <h1 id="app-name">Pinspiration</h1>
            <p id='slogan'>I n s p i r a t i o n</p>
            <br/>

            <div className="login-form">
              <br/>
              <label> Username:
                <input type="text"
                  value={this.state.username}
                  onChange={this.update("username")}
                  className="login-input username" />
              </label>
              <br/>
              <label> Password:
                <input type="password"
                  value={this.state.password}
                  onChange={this.update("password")}
                  className="login-input password" />
              </label>
              <br/>
              <div>
                {this.renderErrors()}
              </div>

              <div className="switch-button">
                Please {this.props.formType} or {this.navLink()}
              </div>

              <input type="submit" value="Submit" />
            </div>
          </form>
        </div>
      </main>
    );
  }

}

export default withRouter(SessionForm);
