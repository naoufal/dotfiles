// CONFIGS
// ============================================================================
S.configAll({
  'defaultToCurrentScreen' : true,
  'orderScreensLeftToRight': true
});

// OPERATIONS
// ============================================================================
var fullscreen = S.operation('move', {
  'x'     : 'screenOriginX',
  'y'     : 'screenOriginY',
  'width' : 'screenSizeX',
  'height': 'screenSizeY'
});

// LEFT OPERATORS
var leftThird = S.operation('move', {
  'x'     : 'screenOriginX',
  'y'     : 'screenOriginY',
  'width' : 'screenSizeX/3',
  'height': 'screenSizeY'
});

var leftHalf = S.operation('move', {
  'x'     : 'screenOriginX',
  'y'     : 'screenOriginY',
  'width' : 'screenSizeX/2',
  'height': 'screenSizeY'
});

var leftTwoThird = S.operation('move', {
  'x'     : 'screenOriginX',
  'y'     : 'screenOriginY',
  'width' : 'screenSizeX/1.5',
  'height': 'screenSizeY'
});

// RIGHT OPERATORS
var rightThird = S.operation('move', {
  'x'     : 'screenOriginX+screenSizeX/1.5',
  'y'     : 'screenOriginY',
  'width' : 'screenSizeX/3',
  'height': 'screenSizeY'
});

var rightHalf = S.operation('move', {
  'x'     : 'screenOriginX+screenSizeX/2',
  'y'     : 'screenOriginY',
  'width' : 'screenSizeX/2',
  'height': 'screenSizeY'
});

var rightTwoThird = S.operation('move', {
  'x'     : 'screenOriginX+screenSizeX/3',
  'y'     : 'screenOriginY',
  'width' : 'screenSizeX/1.5',
  'height': 'screenSizeY'
});

// WINDOW HINT
var windowHint = S.operation('hint', {
  'characters' : 'HJKLGFDSA'
});

// APP SWITCHER
// var appSwitch = S.operation('switch');


// BINDINGS
// ============================================================================
S.bindAll({
  'f:ctrl'     : fullscreen,
  '1:ctrl,h'   : leftThird,
  '2:ctrl,h'   : leftHalf,
  '3:ctrl,h'   : leftTwoThird,
  '1:ctrl,l'   : rightThird,
  '2:ctrl,l'   : rightHalf,
  '3:ctrl,l'   : rightTwoThird,
  'space:ctrl' : windowHint
});

