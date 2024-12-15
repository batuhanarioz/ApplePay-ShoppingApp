import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            
            if cartManager.paymentSuccess {
                Text("Satın alımınız için teşekkürler. Güzel günlerinizde kullanın!")
                    .padding()
            } else {
                if cartManager.products.count > 0 {
                    ForEach(cartManager.products, id: \.id) { product in
                        ProductRow(product: product)
                    }
                    
                    HStack {
                        Text("Sepetinizin toplam fiyatı")
                        Spacer()
                        Text("$\(cartManager.total).00")
                            .bold()
                    }
                    .padding()
                    
                    PaymentButton(action: cartManager.pay)
                        .padding()
                    
                } else {
                    Text("Sepetiniz şu anda boş.")
                }
            }
            

        }
        .navigationTitle(Text("Sepetim"))
        .padding(.top)
        .onDisappear {
            if cartManager.paymentSuccess {
                cartManager.paymentSuccess = false
            }
        }
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
