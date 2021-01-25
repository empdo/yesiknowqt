var component;
var sprite;

function createSpriteObjects(message) {
    component = Qt.createComponent("Sprite.qml");
    console.log(message)
    if (component.status === Component.Ready){
        finishCreation(message);
    }else{
        component.statusChanged.connect(finishCreation);
    }
}

function finishCreation(message) {
    if (component.status === Component.Ready) {
        sprite = component.createObject(listContainer);
        sprite.message = message;
        if (sprite === null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status === Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}
