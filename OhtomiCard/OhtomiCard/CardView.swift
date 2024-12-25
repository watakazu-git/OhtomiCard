import SwiftUI

struct CardView: View {
    let dataList: [Data] = [
        Data(carID: "12345", frontTemperature: "20°C", backTemperature: "18°C", date: "2024/12/18"),
        Data(carID: "67890", frontTemperature: "22°C", backTemperature: "19°C", date: "2024/12/17"),
        Data(carID: "11223", frontTemperature: "21°C", backTemperature: "20°C", date: "2024/12/16")
    ]

    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Car ID")
                        .foregroundStyle(.secondary)
                        .font(.caption)

                    Text("\(dataList[0].carID)")
                }

                Spacer()

                Image(systemName: "ellipsis.circle")
                    .foregroundStyle(.gray)
            }

            Divider()
                .padding(.bottom)

            HStack {
                VStack {
                    Text("Front")
                        .font(.caption)
                        .foregroundStyle(.secondary)

                    Text("\(dataList[0].frontTemperature)")
                        .font(.title2)
                        .fontWeight(.bold)
                }

                Spacer()

                VStack {
                    Text("Back")
                        .font(.caption)
                        .foregroundStyle(.secondary)

                    Text("\(dataList[0].backTemperature)")
                        .font(.title2)
                        .fontWeight(.bold)
                }
            }
            .padding(.bottom, 8)

            Text(dataList[0].date)
                .foregroundStyle(.secondary)
                .font(.caption)
        }
        .padding()

        .background(RoundedRectangle(cornerRadius: 8)
            .fill(Color(.systemBackground))
            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2))
        .padding()
    }
}

#Preview {
    CardView()
}