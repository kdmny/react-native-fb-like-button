const React = require('react-native');
const {
  requireNativeComponent,
  Component,
  View
} = React;

class FbLikeButtonView extends Component {
  render() {
    return <NativeFbLikeButtonView {...this.props} />;
  }
}

FbLikeButtonView.propTypes = {
	  objectID: React.PropTypes.string,
};

const NativeFbLikeButtonView = requireNativeComponent('FbLikeButtonView', FbLikeButtonView);

module.exports = FbLikeButtonView;
