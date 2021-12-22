

import SwiftUI

struct AlbumCover: View {
    
    @State var renkDegiskeni : Bool = true
    
    var body: some View {
        VStack{
            Image("ati")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 30)
            
            VStack(spacing: 5){
                HStack{
                    Text("Kime Sorsan")
                        .font(.system(size: 20, weight: .semibold, design: .default))
                        .padding(.horizontal, 30)
                    Spacer()
                    Image(systemName: "heart.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.red)
                        .padding(.horizontal, 30)
                    
                }
                .padding(.top, 15)
                
                HStack{
                    VStack{
                        Text("ATI 242")
                            .font(.system(size: 15, weight: .regular, design: .default))
                            .padding(.horizontal, 30)
    
                    }
                    Spacer()
                }
                
            }
            
            HStack{
                Button {
                    // Müziği başlat, renk değiştir
                    
                    muzikOynatici(dosyaAdi: "kimesorsan", dosyaUzantisi: "mp3", var: 1)
                    renkDegiskeni.toggle()
                    
                    
                } label: {
                    Image(systemName: "play.circle.fill")
                        .font(.system(size: 65))
                        .foregroundColor(renkDegiskeni ? .red : .gray)
                        .padding()
                }

                Button {
                    // Müziği durdur, renk değiştir
                    
                    muzikOynatici(dosyaAdi: "kimesorsan", dosyaUzantisi: "mp3", var: 0)
                    renkDegiskeni.toggle()
                    
                    
                } label: {
                    Image(systemName: "stop.circle.fill")
                        .font(.system(size: 65))
                        .foregroundColor(renkDegiskeni ? .gray : .red)
                        .padding()
                }

            }         .padding(.top, 50)
            
        }
        
    }
}

struct AlbumCover_Previews: PreviewProvider {
    static var previews: some View {
        AlbumCover()
    }
}
