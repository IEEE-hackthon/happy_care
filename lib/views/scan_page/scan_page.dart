import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../../widgets/loginAndRegistration/custom_buttom.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  late CameraController _cameraController;
  late Future<void> _initializeControllerFuture;
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    try {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        _showSnackBar('No cameras available');
        return;
      }
      _cameraController =
          CameraController(cameras.first, ResolutionPreset.high);
      _initializeControllerFuture = _cameraController.initialize();
      await _initializeControllerFuture;
      setState(() => _isCameraInitialized = true);
    } catch (e) {
      _showSnackBar('Error initializing camera: $e');
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildIconButton(
                Icons.cancel_outlined, () => Navigator.of(context).pop()),
            const Text('Scan', style: TextStyle(color: Color(0xff8fba52))),
            _buildIconButton(Icons.settings, () {})
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          _isCameraInitialized
              ? LayoutBuilder(
                  builder: (context, constraints) {
                    final size = constraints.biggest;
                    return FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        width: size.width,
                        height: size.height,
                        child: CameraPreview(_cameraController),
                      ),
                    );
                  },
                )
              : const Center(child: CircularProgressIndicator()),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(flex: 3),
              _buildInfoContainer('Point Your Camera At Plant'),
              const Spacer(flex: 1),
              Center(
                child: Image.asset(
                  'assets/scan_page/Scan.png',
                  width: 350,
                  height: 350,
                  fit: BoxFit.contain,
                ),
              ),
              const Spacer(flex: 1),
              _buildBottomContainer(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, VoidCallback onPressed) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(6.0),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: IconButton(
        icon: Icon(icon, color: const Color(0xff8fba52)),
        onPressed: onPressed,
      ),
    );
  }

  Widget _buildInfoContainer(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildBottomContainer() {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Swiss Cheese Plant',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildInfoColumn(Icons.thermostat_outlined, '19-23 C'),
              const SizedBox(width: 20),
              _buildInfoColumn(Icons.wb_sunny, 'Sun'),
              const SizedBox(width: 20),
              _buildInfoColumn(Icons.opacity, 'Moderate'),
            ],
          ),
          const SizedBox(height: 16),
          Center(
            child: CustomButton(
              onTap: () => Navigator.pop(context),
              label: 'Add to My Plants',
              height: 45.0,
              fontSize: 18.0,
              backgroundColor: const Color(0xff8fba52),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Column _buildInfoColumn(IconData icon, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white, size: 28),
        const SizedBox(height: 6),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }
}
