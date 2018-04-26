# GenericViewControllerKit

This is a small utility for simplifying UI code. 

The goal of GenericViewControllerKit is to leverage Swift generics with `UIViewController`s to clearly express
the relationship between a model and a controller.

`GenericViewController` is the main class.

It provides a `model` property and a `render` method. The `model` properties type is configurable through Swift generics, and it should be made a type that contains the data required to inflate the UI. `render` should be the new location where code to update your UI is written. 

