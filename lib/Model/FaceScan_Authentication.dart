
import 'package:camera/camera.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

class FaceScanAuthentication {
  late CameraController _cameraController;
  late List<CameraDescription> _cameras;

  Future<void> initializeCamera() async {
    _cameras = await availableCameras();

    
    _cameraController = CameraController(
      _cameras.first,
      ResolutionPreset.medium,
    );


    await _cameraController.initialize();
    print('Camera initialized');
  }


  Future<void> captureImage() async {
    if (!_cameraController.value.isInitialized) {
      print('Camera is not initialized');
      return;
    }

    try {
 
      XFile picture = await _cameraController.takePicture();
      print('Picture taken: ${picture.path}');


      await detectFaces(picture.path);
    } catch (e) {
      print('Error capturing image: $e');
    }
  }


  Future<void> detectFaces(String imagePath) async {
    try {
      final inputImage = InputImage.fromFilePath(imagePath);

      // Initialize the face detector
      final faceDetector = GoogleMlKit.vision.faceDetector();

      // Process the image to detect faces
      final faces = await faceDetector.processImage(inputImage);

      if (faces.isNotEmpty) {
        for (Face face in faces) {
          print('Detected face with bounding box: ${face.boundingBox}');
        }
      } else {
        print('No faces detected.');
      }

      // Close the face detector
      faceDetector.close();
    } catch (e) {
      print('Error detecting faces: $e');
    }
  }

  // Dispose of the camera controller when done
  void dispose() {
    _cameraController.dispose();
  }
}
