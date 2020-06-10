import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import Home from '../components/Home';
import Surveys from '../components/survey/Surveys';
import Survey from '../components/survey/Survey';
import NewSurvey from '../components/survey/NewSurvey';
import Header from '../components/Header';



export default (
  <Router>
    <Switch>
    <Header />
      <Route path="/" exact component={Home} />
      <Route path="/surveys" exact component={Surveys} />
      <Route path="/survey/:id" exact component={Survey} />
      <Route path="/survey" exact component={NewSurvey} />
    </Switch>
  </Router>
);
