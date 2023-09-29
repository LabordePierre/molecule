Now that we've created our first component, we will need to create another one by following the same instructions (see [Create a new Molecule Component](https://github.com/OpenSmock/Molecule/wiki/Tutorial-:-Create-a-new-Molecule-Component)).
In reality, having only one component isn't useful at all since components are meant to be connected between each other and communicate through data.
The idea of having two components is that one will send data (through events and services), and the other will listen to the first component in order to receive and treat this data.
To do that, we need to specify each component's contract in order to achieve exactly that.

In the first component's contract, you will need to specify which events and services are respectively produced and provided.
For Events, it's done in `producedComponentEvents`
For Services, it's done in `providedComponentServices`
For Parameters, it's done in `providedComponentParameters`

In the second component's contract, you will need to specify which events and services are respectively consumed and used.
For Events, it's done in `consumedComponentEvents`
For Services, it's done in `usedComponentServices`
For Parameters, it's done in `usedComponentParameters`

For listening to a component for events, see the last part of [Creating Events]() tutorial.

A component can receive events/services and emit other events/services by specifying them for a component without any conflict, since they're different parts of its contract.

**add img**
