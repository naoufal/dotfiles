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

// BINDINGS
// ============================================================================
S.bindAll({
  'f:cmd;shift' : fullscreen,
  'h:ctrl;shift': leftThird,
  'h:alt;shift' : leftHalf,
  'h:cmd;shift' : leftTwoThird,
  'l:ctrl;shift': rightThird,
  'l:alt;shift' : rightHalf,
  'l:cmd;shift' : rightTwoThird,
});

