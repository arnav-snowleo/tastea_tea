
# tastea_tea

tea app ui + google auth + firestore data fetch

[Firestore data image1 :](https://ibb.co/KGtfb7R)

[Firestore data image2 :](https://ibb.co/196HcvH)

## Vsync 

*vsync is the property that represents the TickerProvider (i.e., Tick is similar to clock's tick which means that at every certain duration TickerProvider will render the class state and redraw the object.)

*vsync property is required only on that constructor which requires to render its class state at every certain off-set time when we need to render our components or widgets to redraw and reflect the UI.

*vsync can be used with the classes which require certain transition or animation to re-render to draw different objects.


## Ticker Class
*Calls its callback once per animation frame.

## SingleTickerProviderStateMixin
*Provides a single Ticker 

*To create the AnimationController in a State that only uses a single AnimationController, mix in this class, then pass **vsync: this** to the animation controller constructor.

*This mixin only supports vending a single ticker. If you might have multiple AnimationController objects over the lifetime of the State, use a full TickerProviderStateMixin instead.

## [Mixins](https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3)
