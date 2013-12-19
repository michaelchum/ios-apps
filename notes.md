Lecture 1

MVC

Model <= Controller <=> View

Never Model <=> View

Controller => View via Outlet

View => Controller via Action

delegate = should, did, will (View <=> Controller)

datasource = special delegate which provides data to View from Models via Controller

model doesn't communicate to Controller directly, it is UI independent instead it uses "radio" (notification and KVO)
controller checks when there's an update

MVC can be a minion to another MVC > layers of MVC

Each controller is mapped to a view or no view

Controller can communicate with other controllers but never another view

Objective-C

.h file is the public API, every method and property for public access

pointers property can be strong or weak, Automatic Reference Counting keeps track of strong pointers
if there are no more strong pointers (but only weak), the memory location is erased by ARC and sets pointer to nil
Better than Garbage Collection that comes later like in Java!

nonatomic = not thread safe, the property cannot be used by more than one thread at once

@synthetize > specify the name of the property to an instance variable name instead of always using self.propertyName

Put (nonatomic) for all properties!

No need (strong) or (weak) for primitive types like BOOL

We use the . notation to call properties and [] notation to call methods