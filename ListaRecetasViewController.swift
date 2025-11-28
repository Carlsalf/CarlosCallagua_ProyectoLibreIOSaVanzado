//
//  ListaRecetasViewController.swift
//  RecetasSaludables
//
//  Created by Carlos Alfredo Call on 25/11/25.
//

import UIKit

class ListaRecetasViewController: UITableViewController {

    let recetas = RecetaStore.recetas

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Recetas saludables"
    }

    override func numberOfSections(in tableView: UITableView) -> Int { 1 }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        recetas.count
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "RecetaCell")
            ?? UITableViewCell(style: .subtitle, reuseIdentifier: "RecetaCell")

        let receta = recetas[indexPath.row]
        cell.textLabel?.text = receta.nombre
        cell.detailTextLabel?.text = "\(receta.categoria) · \(receta.dificultad)"
        cell.accessoryType = .disclosureIndicator

        return cell
    }

    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {

        let recetaSeleccionada = recetas[indexPath.row]

        performSegue(withIdentifier: "DetalleRecetaSegue", sender: recetaSeleccionada)

        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "DetalleRecetaSegue",
              let detalleVC = segue.destination as? DetalleRecetaViewController,
              let recetaSeleccionada = sender as? Receta else { return }

        detalleVC.receta = recetaSeleccionada
    }
}
