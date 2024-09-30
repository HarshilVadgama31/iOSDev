// Structures

struct  Marvel {
    var series: String = ""
    var aired: Int = 0
    var network: String = ""
}

var movieDetails = Marvel(series: "Avengers: Endgame", aired: 2019, network: "Disney+")

print("\nSeries: \(movieDetails.series)")
print("Aired: \(movieDetails.aired)")
print("Network: \(movieDetails.network)")

var movie = Marvel()

movie.series = "Loki Season 2"
movie.aired = 2024
movie.network = "Disney+"

print("\nSeries: \(movie.series)")
print("Aired: \(movie.aired)")
print("Network: \(movie.network)")

struct MarvelSeries{
    var series: String = ""
    var aired: Int = 0
    var network: String = ""
    
    func Details() -> String{
        return "\nSeries: \(series), Aired: \(aired), Network: \(network)"
    }
}

var details = MarvelSeries()

details.series = "Loki Season 1"
details.aired = 2021
details.network = "Disney+"

print(details.Details())

struct MarvelProduction{
    var series: String
    var aired: Int
    var network: String
    
    init(Series: String, AiredIn: Int, Network: String){
        self.series = Series
        self.aired = AiredIn
        self.network = Network
    }
}

var series = MarvelProduction(Series: "Hawkeye", AiredIn: 2022, Network: "Disney+")

var SeriesDetails:(String, Int, String) = (series.series, series.aired, series.network)

print("\nSeries: \(SeriesDetails.0)")
print("Aired: \(SeriesDetails.1)")
print("Network: \(SeriesDetails.2)")

var series1 = MarvelProduction(Series: "Miss Marvel", AiredIn: 2022, Network: "Disney+")

var (SeriesName, SeriesYear, SeriesNetwork) = (series1.series, series1.aired, series1.network)

print("\nSeries: \(SeriesName)")
print("Aired: \(SeriesYear)")
print("Network: \(SeriesNetwork)")

