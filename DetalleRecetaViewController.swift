//
//  DetalleRecetaViewController.swift
//  RecetasSaludables
//
//  Created by Carlos Alfredo Call on 25/11/25.
//

import UIKit

class DetalleRecetaViewController: UIViewController {

    var receta: Receta?

    @IBOutlet weak var recetaImageView: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var categoriaLabel: UILabel!
    @IBOutlet weak var dificultadLabel: UILabel!
    @IBOutlet weak var tiempoLabel: UILabel!
    @IBOutlet weak var caloriasLabel: UILabel!
    @IBOutlet weak var ingredientesLabel: UILabel!
    @IBOutlet weak var pasosLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // estilo de imagen
        recetaImageView.layer.cornerRadius = 16
        recetaImageView.clipsToBounds = true
        recetaImageView.contentMode = .scaleAspectFill
        
        // estilo para el titulo
        nombreLabel.textAlignment = .center
        nombreLabel.numberOfLines = 0

        actualizarUI()
    }

    func actualizarUI() {
        guard isViewLoaded else { return }

        guard let receta = receta else {
            title = "Detalle"
            nombreLabel.text = "Selecciona una receta"
            categoriaLabel.text = ""
            dificultadLabel.text = ""
            tiempoLabel.text = ""
            caloriasLabel.text = ""
            ingredientesLabel.text = ""
            pasosLabel.text = ""
            recetaImageView.image = nil
            return
        }

        title = receta.nombre

        // Imagen
        recetaImageView.image = UIImage(named: receta.imagenNombre)

        // Detalle textual
        nombreLabel.text = receta.nombre
        categoriaLabel.text = "Categoría: \(receta.categoria)"
        dificultadLabel.text = "Dificultad: \(receta.dificultad)"
        tiempoLabel.text = "Tiempo: \(receta.tiempoMinutos) min"
        caloriasLabel.text = "Calorías: \(receta.calorias) kcal"

        ingredientesLabel.text = """
        Ingredientes:
        \(receta.ingredientes.map { "• \($0)" }.joined(separator: "\n"))
        """

        pasosLabel.text = """
        Pasos:
        \(receta.pasos.enumerated().map { "\($0.offset + 1). \($0.element)" }.joined(separator: "\n"))
        """
    }
}
