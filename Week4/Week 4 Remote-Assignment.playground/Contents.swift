import UIKit

//MARK: -1 Table view implementation

//Hey~ Nick the table view app is this wrapped in the week 4 folder.


//MARK: -2 Data Source method
//When reloadData() was called. Then few methods below are called sequentailly.

//First. reloadData
//Normally when we call reloadData() means we have cell position/content altered.
//And we're probably too lazy to use insert or delete method to achieve the same result; But we should use those method though.
//Because by calling reloadData, the tableView will remove/discard all of it's original cells and headers, and starts from the begining. Which may cause performance issue when reloading data from a huge data base.


//Second. numberOfSection is called. //Third. numberOfRowInSection is called
//Before the table knows how many rows exist in one section, it needs to know how many sections exist first.
//Now the table view will reconstruct everything from the begining.
//In order to arrange cell properly according to the new set of sections and rows. The app has to call these two function and retrieve the corresponding data.
//Section and row will be merged and assign to indexPath property, which also serve as an arguement in cellForRowAt method.


//Fourth. cellForRowAt is called.
//So in order to reload and update every cell, cellForRowAt will be called.
//This is a method that allows tableView to know the position for each cell. And place them according to the indexPaths properties.
//It's also a place where we can "provide" cells to tableView. Notice that the method is asking for a UITableViewCell in the end of function.


//Fifth. dequeueReusableCell is called by use if we choose to define cell in this way.
//for cellForRowAt need us to provide a cell. We can use dequeueReusableCell to provide and customize one for it.
//And dequeueReusableCell can dequeue these new set of cells properly.
//Let'say the cell(any cell) is being scrolled out of screen, it'll not just be deleted. But instead, serve as a new vessel for the new cell.

//This is also this place where we can customize the cell like adding text or color...etc.
//The method is basically saying - here's your cell and it's indexPath, customize it however you want, and return it when you are done.
//The method will then assign informations according to indexPath for each cell.



//MARK: -3 URLSession Practice

//The URLSession demo app is placed in the week 4 folder.


//MARK: -4 Pyramid printer
func printTriangle(_ layers: inout Int) {
    
    var orgIter = layers
    layers += (layers - 1)
    
    for i in 1 ... layers {
        if i % 2 != 0 {
            
            orgIter -= 1
            print(String(repeating: " ", count: orgIter) + String(repeating: "*", count: i))
            print("")
        }
    }
}

var layers = 5

//Result
printTriangle(&layers)

//The layers is being overriden to 9, because by using `inout` syntax we are essentially allow the function to override it's input argument value.
print(layers)




//MARK: -5

//I'd like a develop an app with simple 3D items displayed in the app.
//3D chart, or product displaying are both intriguing ideas.

//I'm pretty amazed by vision pro and it's AR potential.
//Imagine your note or you calender can be displayed three dimensionaly. That'll be quite a view.

//There's one more.
//Node-base note taking app.
//With visible reference link, anyone can organize their notes in their own way.



