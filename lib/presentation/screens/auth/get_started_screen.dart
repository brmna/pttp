import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../widgets/logo_painter.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beige,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Botón de retroceso
              IconButton(
                icon: const Icon(Icons.arrow_back, color: AppColors.darkText),
                onPressed: () => Navigator.pop(context),
                padding: EdgeInsets.zero,
                alignment: Alignment.centerLeft,
              ),
              
              const Spacer(flex: 2),
              
              // Logo
              Center(
                child: AppLogo(size: 120),
              ),
              
              const SizedBox(height: 40),
              
              // Título
              const Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkText,
                  ),
                ),
              ),
              
              const SizedBox(height: 8),
              
              // Subtítulo
              const Center(
                child: Text(
                  "Welcome let's dive in into account",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.lightText,
                  ),
                ),
              ),
              
              const Spacer(flex: 2),
              
              // Botón Sign in with Facebook
              _buildSocialButton(
                'Sign in with Facebook',
                Icons.facebook,
                Colors.blue.shade700,
                () {
                  // TODO: Implement Facebook Sign In
                },
              ),
              
              const SizedBox(height: 16),
              
              // Botón Sign in with Email
              _buildSocialButton(
                'Sign in with Email',
                Icons.email_outlined,
                AppColors.buttonPink,
                () {
                  Navigator.pushNamed(context, '/sign-in');
                },
              ),
              
              const SizedBox(height: 24),
              
              // Botón Sign in as guest
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/language');
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    side: const BorderSide(color: AppColors.buttonPink),
                  ),
                  child: const Text(
                    'Sign in as guest',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkText,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Texto de registro
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.lightText,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.darkText,
                      ),
                    ),
                  ),
                ],
              ),
              
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(String text, IconData icon, Color color, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        icon: Icon(icon, color: Colors.white),
        label: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}