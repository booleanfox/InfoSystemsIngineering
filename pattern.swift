class AnyPhoneTemplate {
 
    func takePhoneCase() {
        print("Take a phone case.")
    }
    
    func takeCamera() {
        print("Take a camera.")
    }
 
    func takeMicrophone() {
        print("Take a microphone.")
    }
    
    func assembly() {
        print("Put it all together!")
    }
    
    func makePhone() {
        takePhoneCase()
        takeCamera()
        takeMicrophone()
        assembly()
    }
}

class IPhoneMaker: AnyPhoneTemplate {
    
    func design() {
        print("Stick an apple + \"designed in California\".")
    }

    override func takePhoneCase() {
        super.takePhoneCase()
        design()
    }
}

class AndroidMaker: AnyPhoneTemplate {
    
    func addRAM() {
        print("Add a little bit of RAM so it's always lacking.")      
    }
    
    func addCPU() {
       print("Put inside more CPU. And one more.") 
    }
    
    override func assembly() {
        addCPU()
        addRAM()
        super.assembly()
    }
}

class BlackBerryMaker: AnyPhoneTemplate {

    func addStore(){
        print("Make our own store in which there are no normal applications.")
    }

    override func assembly() {
        addStore()
        super.assembly()
    }
}

func test(){
    let android = AndroidMaker()
    let iPhone = IPhoneMaker()
    let blackberry = BlackBerryMaker()
    
    print("Creating Android...")
    android.makePhone()
    print("\nCreating iPhone...")
    iPhone.makePhone()
    print("\nCreating BlackBerry...")
    blackberry.makePhone()
}

test()
