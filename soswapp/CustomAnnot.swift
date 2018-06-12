import MapKit

class CustomAnnot:NSObject,MKAnnotation{
    let title:String?
    let locationName:String
    let discipline:String
    let telefono:String
    let distancia:String
    let direccion:String
    let coordinate:CLLocationCoordinate2D
    init(title:String,locationName:String,discipline:String,telefono:String,coordinate:CLLocationCoordinate2D,direccion:String,distancia:String){
        self.title=title
        self.locationName=locationName
        self.discipline=discipline
        self.coordinate=coordinate
        self.telefono=telefono
        self.distancia=distancia
        self.direccion=direccion
        
        super.init()
    }
    
    var subtitle:String?{
        return discipline
    }
    
}