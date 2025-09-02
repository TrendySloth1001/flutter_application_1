import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants.dart';

class AccountActivationWidget extends StatefulWidget {
  final String email;
  final VoidCallback onActivate;

  const AccountActivationWidget({
    Key? key,
    required this.email,
    required this.onActivate,
  }) : super(key: key);

  @override
  State<AccountActivationWidget> createState() =>
      _AccountActivationWidgetState();
}

class _AccountActivationWidgetState extends State<AccountActivationWidget> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _isActivated = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.account_circle_outlined,
                size: 32,
                color: AppColors.primaryGreen,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Account Status',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textDark,
                    ),
                  ),
                  Text(
                    widget.email,
                    style: const TextStyle(
                      color: AppColors.textLight,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Google Account Integration
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                // Image.network(
                //   'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png',
                //   height: 24,
                // ),
                //const SizedBox(width: 12),
                const Expanded(
                  child: Text(
                    'Link your Google Workspace account for seamless integration',
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward, color: Colors.blue),
                  onPressed: () {
                    // Handle Google account linking
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          if (!_isActivated) ...[
            _buildActivationSection(),
          ] else ...[
            _buildPasswordChangeSection(),
          ],
        ],
      ),
    );
  }

  Widget _buildActivationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Activate Your Account',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'To access all features, please activate your account by setting up a password.',
          style: TextStyle(color: AppColors.textLight),
        ),
        const SizedBox(height: 24),
        ElevatedButton.icon(
          onPressed: () {
            setState(() => _isActivated = true);
          },
          icon: const Icon(Icons.lock_open),
          label: const Text('Activate Account'),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryGreen,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordChangeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Set Your Password',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          obscureText: !_isPasswordVisible,
          decoration: InputDecoration(
            labelText: 'New Password',
            hintText: 'Enter your new password',
            prefixIcon: const Icon(
              Icons.lock_outline,
              color: AppColors.primaryGreen,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                color: AppColors.primaryGreen,
              ),
              onPressed: () =>
                  setState(() => _isPasswordVisible = !_isPasswordVisible),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: AppColors.primaryGreen,
                width: 2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          obscureText: !_isConfirmPasswordVisible,
          decoration: InputDecoration(
            labelText: 'Confirm Password',
            hintText: 'Confirm your new password',
            prefixIcon: const Icon(
              Icons.lock_outline,
              color: AppColors.primaryGreen,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _isConfirmPasswordVisible
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: AppColors.primaryGreen,
              ),
              onPressed: () => setState(
                () => _isConfirmPasswordVisible = !_isConfirmPasswordVisible,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: AppColors.primaryGreen,
                width: 2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          '• 8-15 characters\n• At least one uppercase letter\n• At least one number\n• At least one special character',
          style: TextStyle(color: AppColors.textLight, height: 1.5),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: widget.onActivate,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryGreen,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Set Password'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  // Handle clear action
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: const BorderSide(color: AppColors.primaryGreen),
                ),
                child: const Text(
                  'Clear',
                  style: TextStyle(color: AppColors.primaryGreen),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
