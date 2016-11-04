import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: "",
      description: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);

    this.phantomLogin = this.phantomLogin.bind(this);
		this.beMyGuest = this.beMyGuest.bind(this);
    this.beMyGuestQuick = this.beMyGuestQuick.bind(this);
  }

  componentDidUpdate() {
    this.redirectIfLoggedIn();
    // REVIEW;
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
    let newUsername = this.state.username.toLowerCase();
		this.state.username = newUsername;
		const user = this.state;
		if (this.props.formType === "login") {
			this.setState({description: ""});
		}
    this.props.processForm({user});
    // login or signup
  }

  navLink() {
		if (this.props.formType === "login") {
			return (
        <div>Want to create an account?
          <Link to="/signup"> sign up</Link>
        </div>
      );
		} else {
			return (
        <div>Already have an account?
          <Link to="/login"> log in</Link>
        </div>
      );
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

  // Demo User
  phantomLogin($el, word, callback){

		var typing = setInterval(function(){
			$el.val( $el.val() + word.slice(0,1) );
			word = word.substr(1);

			if (!word){
				clearInterval(typing);
				callback();
			}
		}, 50);
	}

	beMyGuest(e, username, password) {
		e.preventDefault();
		let $username = $('.username');
		let $password = $('.password');
		let $submitButton = $('.submit-button');
		let that = this;
		this.phantomLogin($username, username, () => {
			this.phantomLogin($password, password, ()=> {
				that.setState({username, password });
				$submitButton.click();
			});
		});
	}

  beMyGuestQuick() {
    this.setState({username: "emily"});
    this.setState({password: "password"});
  }

  render() {
    let loginFromClass = (this.props.formType === "login") ? "login-form-box login" : "login-form-box signup";
    let passwordPlaceholder = (this.props.formType === "login") ? "Password" : "Create a password ";
    let submitText = (this.props.formType === "login") ? "Log In" : "Sign Up ";
    let demoClass = (this.props.formType === "login") ? "login-buttons demo-button demo-show" : "login-buttons demo-button demo-hide";


    return (
      <main className="session-form">
        <div className="login-form-container">
          <form
            onSubmit={this.handleSubmit}
            className={loginFromClass}>
            <h1 id="app-name">Pinspiration</h1>
            <s id='slogan'>I n s p i r a t i o n</s>
            <br/>

            <div className="login-form">
              <br/>
              <label>
                <input type="text"
                  value={this.state.username}
                  placeholder="Username"
                  onChange={this.update("username")}
                  className="login-input username" />
              </label>
              <br/>
              <label>
                <input type="password"
                  value={this.state.password}
                  placeholder={passwordPlaceholder}
                  onChange={this.update("password")}
                  className="login-input password" />
              </label>
              <br/>
              <div>
                {this.renderErrors()}
              </div>

              <div className="switch-button">{this.navLink()}</div>

              <div className="submit-buttons-box">
                <input type="submit"
                  className="submit-button"
                  value={submitText} />
                <input type="submit"
                    className={demoClass}
                    onClick={e => this.beMyGuest(e, "emily", "password")}
                    value="Demo" />
              </div>
            </div>
          </form>
        </div>
      </main>
    );
  }

}

export default withRouter(SessionForm);
