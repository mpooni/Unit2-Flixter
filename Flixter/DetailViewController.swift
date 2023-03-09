//
//  DetailViewController.swift
//  Flixter
//
//  Created by Manasa Pooni on 3/8/23.
//
import Nuke
import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var popularityLabel: UILabel!
    
    @IBOutlet weak var adultLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    @IBOutlet weak var voteCountLabel: UILabel!
    
    @IBOutlet weak var voteAverageLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Pt 1 - Configure the UI elements with the passed in track
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
            Nuke.loadImage(with: movie.posterPath, into: movieImageView)
            titleLabel.text = movie.title

            // Set labels with the associated track values.
            popularityLabel.text = movie.popularity
            adultLabel.text = movie.adult
            releaseDateLabel.text = movie.releaseDate
            voteAverageLabel.text = movie.voteAverage
            voteCountLabel.text = movie.voteCount
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
