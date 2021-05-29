import SwiftUI

struct ChallengeDetailViewYoko: View {
    @State  var challenge =
        fruitRouge
        //legumeJaune
        //legumeVert
        //courge
        //mure
    //ces ça les parametre;;;;;
            var body: some View {
            VStack{                
//            Text("eatSafe")
//    NavigationView{
        VStack{
            Image("\(challenge.imageDuChallenge)").resizable().cornerRadius(100)
                .scaledToFill()
                .scaledToFit()
                //.frame(width:200, height:70)
    
            //Spacer()
            //Spacer()
            Text (challenge.nomDuChallenge)
                .font(.headline)
                .fontWeight(.bold)
                .padding()
                //.frame(width: 300.0, height:80.0)

/*
            HStack{
    NavigationLink(
        destination: //IngredientDetailView(),
            Text("test"),
        label: {
            Text("Click Me!!!")
                .padding(1)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(Color.yellow)
                .cornerRadius(30)
               
        })
        }
*/
        } // Vstack end
        //.navigationTitle(challenge.nomDuChallenge)
    //} // ??? Navigation View end?
        Text("ingredient proposes:")
        HStack{
            /* yoko made 12/11/2020
            ForEach(TableauDetailIngredient) { item in
                if challenge.listIngredients.contains(item .nomIngredient) == true
                {
                        ingredientList(ingredient: item.imageIngredient)
                }
            }*/ //Yoko made end
            ForEach(challenge.listIngredients){ monIngredient in
                NavigationLink(
                    destination: IngredientDetailView(ingredient: monIngredient),
                    label: {
                        ingredientCellView(ingredient: monIngredient.nomIngredient)
                    })
            }
            }
            
           
            Text("Recette faites du Challenge:   ")

 /* inserted by yoko 12/11/2020 */
                 
                DetailChallengeListRecettes() //ScrollView end
 
  // insert by yoko end
                
                
                
                
/* saqueto
    ScrollView{
        
            
        HStack {
            
            recetteFaites(imageRecetteFaites: "plate1")
            recetteFaites(imageRecetteFaites: "plate2")
            recetteFaites(imageRecetteFaites: "plate3")
            recetteFaites(imageRecetteFaites: "plate4")
            }
                
        HStack {

            recetteFaites(imageRecetteFaites: "plate5")
            recetteFaites(imageRecetteFaites: "plate6")
            recetteFaites(imageRecetteFaites: "plate7")
            recetteFaites(imageRecetteFaites: "plate8")
        }
        HStack {

            recetteFaites(imageRecetteFaites: "plate9")
            recetteFaites(imageRecetteFaites: "plate10")
            recetteFaites(imageRecetteFaites: "plate11")
            recetteFaites(imageRecetteFaites: "plate12")
        }
        HStack {

            recetteFaites(imageRecetteFaites: "plate9")
            recetteFaites(imageRecetteFaites: "plate10")
            recetteFaites(imageRecetteFaites: "plate11")
            recetteFaites(imageRecetteFaites: "plate12")
            
        }
        
    } //Scrollview end
 */ //saquero end
   
} //Navigation View end
            
//------------------------------------------
    }
}


struct ChallengeDetailViewYoko_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeDetailViewYoko()
            
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}
    

/* comment out by Yoko 10/11/2020 *******


struct recetteFaites: View {
    
    var imageRecetteFaites:String = "banana"
    
    var body: some View {
        
        HStack {
            Image(imageRecetteFaites)
                
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .cornerRadius(20)
                .padding()
        }
    }
}
*/ //comment out by Yoko

struct ingredientList: View {
    var ingredient: String
    var body: some View {
        
        HStack {
            
            Image(ingredient)
                .resizable()
                .scaledToFit()
                .frame(width: 40.0, height: 40.0,alignment:.leading)
                .padding(0)
        }
    }
}



