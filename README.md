monad-optimize
==============

<img src='https://raw.github.com/sugoi/reinforce/master/reinforce.jpg'/>

Monad Transformer for Fact Acquisition, Prediction and Optimization



what it does
------------

- Track the context.

The context starts from a given initial state, and is updated
by the updater function each time an action take place.

You can also manually update the context.

- Action

-- Gen action



- Feature

You can also present certain features.
Features may include
-- The optimization target (cost, score);
-- The side-effect values that may hint the optimization.
-- Debug values.

