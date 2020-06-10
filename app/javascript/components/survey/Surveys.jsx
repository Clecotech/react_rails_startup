import React from 'react';
import { Link } from 'react-router-dom';

class Surveys extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      surveys: []
    };
  }

  componentDidMount() {
    const url = 'api/v1/surveys/index';
    fetch(url)
      .then(response => {
        if (response.ok) {
          return response.json()
        }
        throw new Error('Network response not OK.');
    })
    .then(response => this.setState({ surveys: response }))
    .catch(() => this.props.history.push('/'));
  }

  render() {
    const { surveys } = this.state;
    const allRecipes = surveys.map((survey, index) => (
      <div key={index} className="col-md-6 col-lg-4">
        <div className="card mb-4">
          <div className="card-body">
            <h5 className="card-title">{survey.name}</h5>
            <Link to={`/survey/${survey.id}`} className="btn custom-button">
              View Survey
            </Link>
          </div>
        </div>
      </div>
    ));
    const noRecipe = (
      <div className="vw-100 vh-50 d-flex align-items-center justify-content-center">
        <h4>
          No recipes yet. Why not <Link to="/new_recipe">create one</Link>
        </h4>
      </div>
    );

    return (
      <>
        <section className="jumbotron jumbotron-fluid text-center">
          <div className="container py-5">
            <h1 className="display-4">Surveys List</h1>
            <p className="lead text-muted">
            
            </p>
          </div>
        </section>
        <div className="py-5">
          <main className="container">
            <div className="text-right mb-3">
              <Link to="/survey" className="btn custom-button">
                Create New survey
              </Link>
            </div>
            <div className="row">
              {surveys.length > 0 ? allRecipes : noRecipe}
            </div>
            <Link to="/" className="btn btn-link">
              Home
            </Link>
          </main>
        </div>
      </>
    );
  }
};

export default Surveys;
