import 'dart:io';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetectionDeteils extends StatefulWidget {
  DetectionDeteils({super.key, required this.image, required this.results});

  File image;
  List results;

  @override
  State<DetectionDeteils> createState() => _DetectionDeteilsState();
}

class _DetectionDeteilsState extends State<DetectionDeteils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: widget.results.isEmpty
                  ? const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Warning',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  : const Text(
                      'Identified Disease',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
                child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.file(
                      widget.image,
                      fit: BoxFit.fill,
                    ))),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                widget.results.isEmpty
                    ? 'Caution Error'
                    : widget.results[0]['label'].toString(),
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 8, 18, 8),
              child: Center(
                child: widget.results.isEmpty
                    ? const Text(
                        'Description : This is not a leaf object',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      )
                    : Text(
                        'Possible Causes : ${Diseases(widget.results[0]['label'].toString())[0]}',
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 8, 18, 8),
              child: Text(
                widget.results.isEmpty
                    ? ''
                    : 'Possible Solution : ${Diseases(widget.results[0]['label'].toString())[1]}',
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  List Diseases(name) {
    String causes = '';
    String solution = '';

    switch (name) {
      case "apple_black_rot":
        causes = "Caused by the fungus Botryosphaeria obtusa.";
        solution = "Prune infected areas, use fungicides.";
        break;

      case "Apple_ceder_apple_rust":
        causes = "Caused by the fungus Gymnosporangium juniperi-virginianae.";
        solution = "Remove nearby juniper plants, apply fungicides.";
        break;

      case "apple_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "Apple_scab":
        causes = "Caused by the fungus Venturia inaequalis.";
        solution = "Prune infected areas, apply fungicides.";
        break;

      case "background_without_leaves":
        // This case seems to represent a background state without leaves.
        // Specify actions or information as needed.
        break;

      case "blueberry_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "cherry_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "cherry_powdery_mildew":
        causes = "Caused by Podosphaera spp. fungi.";
        solution = "Apply fungicides, provide adequate air circulation.";
        break;

      case "corn_cercospora_leaf":
        causes = "Caused by the fungus Cercospora zeae-maydis.";
        solution = "Rotate crops, use fungicides.";
        break;

      case "corn_common_rust":
        causes = "Caused by the fungus Puccinia sorghi.";
        solution = "Use resistant varieties, apply fungicides.";
        break;

      case "corn_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "corn_northen_leaf_blight":
        causes = "Caused by the fungus Exserohilum turcicum.";
        solution = "Rotate crops, use resistant varieties.";
        break;

      case "grape_black_rot":
        causes = "Caused by the fungus Guignardia bidwellii.";
        solution = "Prune infected areas, use fungicides.";
        break;

      case "Grape_esca":
        causes = "Caused by various fungi, including Phaeoacremonium spp.";
        solution = "Prune infected areas, manage vine stress.";
        break;

      case "grape_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "grape_leaf_blight":
        causes = "Caused by the fungus Isariopsis spp.";
        solution = "Apply fungicides, prune affected leaves.";
        break;

      case "orange_haunglongbing":
        causes = "Caused by the bacterium Candidatus Liberibacter spp.";
        solution = "Control insect vectors, remove infected trees.";
        break;

      case "peach_bacterial_spot":
        causes = "Caused by the bacterium Xanthomonas arboricola pv. pruni.";
        solution = "Apply copper-based sprays, prune infected branches.";
        break;

      case "peach_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "pepper_bacterial_spot":
        causes =
            "Caused by Xanthomonas bacteria, spread through splashing rain.";
        solution = "Spray early and often. Use copper and Mancozeb sprays.";
        break;

      case "pepper_bell_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "potato_early_blight":
        causes = "Caused by the fungus Alternaria solani.";
        solution = "Apply fungicides, practice crop rotation.";
        break;

      case "potato_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "potato_late_blight":
        causes = "Caused by the oomycete Phytophthora infestans.";
        solution = "Apply fungicides, practice good field hygiene.";
        break;

      case "raspberry_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "soyaben_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "squash_powdery_mildew":
        causes = "Caused by Podosphaera spp. fungi.";
        solution = "Apply fungicides, provide good air circulation.";
        break;

      case "starwberry_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "starwberry_leaf_scorch":
        causes = "Caused by the fungus Diplocarpon earliana.";
        solution = "Apply fungicides, prune infected leaves.";
        break;

      case "tomato-bacterial-spot2":
        causes =
            "Caused by Xanthomonas bacteria, spread through splashing rain.";
        solution = "Spray early and often. Use copper and Mancozeb sprays.";
        break;

      case "tomato-leaf-curl-virus3":
        causes = "Caused by various viruses, transmitted by whiteflies.";
        solution = "Use insecticides, practice good weed control.";
        break;

      case "tomato-mold":
        causes = "Caused by various fungi, including Alternaria spp.";
        solution = "Apply fungicides, prune affected areas.";
        break;

      case "tomato_bacterial_spot":
        causes =
            "Caused by Xanthomonas bacteria, spread through splashing rain.";
        solution = "Spray early and often. Use copper and Mancozeb sprays.";
        break;

      case "tomato_early_blight":
        causes = "Caused by the fungus Alternaria solani.";
        solution = "Apply fungicides, practice crop rotation.";
        break;

      case "tomato_healthy":
        // No specific causes or solutions for the healthy state.
        break;

      case "tomato_late_blight":
        causes = "Caused by the oomycete Phytophthora infestans.";
        solution = "Apply fungicides, practice good field hygiene.";
        break;

      case "tomato_leaf_mold":
        causes = "Caused by various fungi, including Fulvia spp.";
        solution = "Apply fungicides, provide good air circulation.";
        break;

      case "tomato_mosaic_virus":
        causes = "Caused by various viruses, including Tomato mosaic virus.";
        solution = "Use virus-resistant varieties, control insect vectors.";
        break;

      case "tomato_septoria_leaf_spot":
        causes = "Caused by the fungus Septoria lycopersici.";
        solution = "Apply fungicides, prune lower leaves.";
        break;

      case "tomato_spider_mites_two_spotted_spider_mites":
        causes = "Caused by Tetranychus urticae mites.";
        solution = "Use miticides, practice good plant hygiene.";
        break;

      case "tomato_target_spot":
        causes = "Caused by the fungus Corynespora cassiicola.";
        solution = "Apply fungicides, prune affected areas.";
        break;

      case "tomato_yellow_leaf_curl_virus":
        causes = "Caused by various viruses, transmitted by whiteflies.";
        solution = "Use insecticides, practice good weed control.";
        break;

      case "tomato_yellow_leaf_curl_virus2":
        causes = "Caused by various viruses, transmitted by whiteflies.";
        solution = "Use insecticides, practice good weed control.";
        break;

      // case "Pepper Bell Bacterial Spot":
      //   possibleCauses =
      //       "Caused by Xanthomonas bacteria, spread through splashing rain.";
      //   possibleSolution =
      //       "Spray early and often. Use copper and Mancozeb sprays.";
      //   break;

      // case "Pepper Bell Healthy":
      //   possibleCauses = "Crops are okay.";
      //   possibleSolution = "Good Condition";
      //   break;

      // case "Potato Early Blight":
      //   possibleCauses =
      //       "The fungus Alternaria solani, high humidity and long periods of leaf wetness.";
      //   possibleSolution =
      //       "Maintaining optimum growing conditions: proper fertilization, irrigation, and pests management.";
      //   break;

      // case "Potato Healthy":
      //   possibleCauses = "Crops are okay.";
      //   possibleSolution = "Good Condition";
      //   break;

      // case "Potato Late Blight":
      //   possibleCauses =
      //       "Occurs in humid regions with temperatures ranging between 4 and 29 °C.";
      //   possibleSolution =
      //       "Eliminating cull piles and volunteer potatoes, using proper harvesting and storage practices, and applying fungicides when necessary.";
      //   break;

      // case "Tomato Bacterial Spot":
      //   possibleCauses =
      //       "Xanthomonas bacteria which can be introduced into a garden on contaminated seed and transplants, which may or may not show symptoms.";
      //   possibleSolution =
      //       "Remove symptomatic plants from the field or greenhouse to prevent the spread of bacteria to healthy plants.";
      //   break;

      // case "Tomato Early Blight":
      //   possibleCauses =
      //       "The fungus Alternaria solani, high humidity and long periods of leaf wetness.";
      //   possibleSolution =
      //       "Maintaining optimum growing conditions: proper fertilization, irrigation, and pests management.";
      //   break;

      // case "Tomato Healthy":
      //   possibleCauses = "Crops are okay.";
      //   possibleSolution = "Good Condition";
      //   break;

      // case "Tomato Late Blight":
      //   possibleCauses = "Caused by the water mold Phytophthora infestans.";
      //   possibleSolution = "Timely application of fungicide";
      //   break;

      // case "Tomato Leaf Mold":
      //   possibleCauses = "High relative humidity (greater than 85%).";
      //   possibleSolution =
      //       "Growing leaf mold resistant varieties, use drip irrigation to avoid watering foliage.";
      //   break;

      // case "Tomato Septoria Leaf Spot":
      //   possibleCauses =
      //       "It is a fungus and spreads by spores most rapidly in wet or humid weather. Attacks plants in the nightshade family, and can be harbored on weeds within this family.";
      //   possibleSolution =
      //       "Remove infected leaves immediately, use organic fungicide options.";
      //   break;

      // case "Tomato Spotted Spider Mites":
      //   possibleCauses =
      //       "Spider mite feeding on leaves during hot and dry conditions.";
      //   possibleSolution =
      //       "Aiming a hard stream of water at infested plants to knock spider mites off the plants. Also use of insecticidal soaps, horticultural oils.";
      //   break;

      // case "Tomato Target Spot":
      //   possibleCauses =
      //       "The fungus Corynespora cassiicola which spreads to plants.";
      //   possibleSolution =
      //       "Planting resistant varieties, keeping farms free from weeds.";
      //   break;

      // case "Tomato Mosaic Virus":
      //   possibleCauses =
      //       "Spread by aphids and other insects, mites, fungi, nematodes, and contact; pollen and seeds can carry the infection as well.";
      //   possibleSolution =
      //       "No cure for infected plants, remove all infected plants and destroy them.";
      //   break;

      // case "Tomato Yellow Leaf Curl Virus":
      //   possibleCauses =
      //       "Physically spread plant-to-plant by the silverleaf whitefly.";
      //   possibleSolution =
      //       "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
      //   break;

      default:
        causes = "";
        solution = "";
        break;
    }

    return [causes, solution];
  }
}
