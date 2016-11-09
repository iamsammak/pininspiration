import { applyMiddleware } from 'redux';

import SessionMiddleware from '../middleware/session_middleware';
import PinMiddleware from './pin_middleware';
import BoardMiddleware from './board_middleware';

import createLogger from 'redux-logger';

const logger = createLogger();

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  PinMiddleware,
  BoardMiddleware,
  logger
);

export default RootMiddleware;
