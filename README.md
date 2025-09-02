# SchoolDesk - Flutter School Dashboard App

A modern, responsive Flutter application for school management with a clean and intuitive user interface.

## 📱 Features

- Account activation and management
- Homeroom class access
- Subject teacher classes
- Responsive design for various screen sizes
- Clean and modern UI with smooth animations

## 🏗 Project Structure

```
lib/
├── screens/
│   └── dashboard_screen.dart    # Main dashboard screen
├── widgets/
│   ├── account_activation_widget.dart    # Account activation component
│   └── teacher_card.dart        # Teacher information card
└── utils/
    └── constants.dart           # App-wide styling and constants
```

## 📋 Components Documentation

### DashboardScreen

The main screen of the application that orchestrates all components.

**Key Features:**
- Custom header with school logo and user avatar
- Scrollable content area
- Organized sections for different functionalities

**Usage:**
```dart
DashboardScreen()
```

### AccountActivationWidget

A widget for handling user account activation and password management.

**Properties:**
- `email` (String): User's email address
- `onActivate` (VoidCallback): Callback function for activation

**Features:**
- Google Workspace integration
- Password setup form
- Account status display
- Form validation

**Usage:**
```dart
AccountActivationWidget(
  email: 'student@school.edu',
  onActivate: () {
    // Handle activation
  },
)
```

### TeacherCard

A responsive card component displaying teacher information.

**Properties:**
- `teacherName` (String): Name of the teacher
- `subject` (String): Subject or class name
- `imageUrl` (String): URL for teacher's profile image
- `onJoin` (VoidCallback): Callback for join button

**Features:**
- Responsive layout
- Hover animations
- Automatic text wrapping
- Clean design with proper spacing

**Usage:**
```dart
TeacherCard(
  teacherName: 'Teacher Name',
  subject: 'Subject Name',
  imageUrl: 'image_url',
  onJoin: () {
    // Handle join action
  },
)
```

## 🎨 Styling System

### AppColors

Centralized color system for consistent theming.

```dart
AppColors.primaryYellow  // Main brand yellow
AppColors.primaryGreen   // Secondary brand color
AppColors.textDark      // Primary text color
AppColors.textLight     // Secondary text color
AppColors.cardBackground // Card background color
```

### AppTextStyles

Predefined text styles for consistent typography.

```dart
AppTextStyles.heading    // Large headings
AppTextStyles.subHeading // Smaller headings
AppTextStyles.buttonText // Button text styling
AppTextStyles.cardTitle  // Card title styling
```

### AppDecorations

Reusable decorations for consistent component styling.

```dart
AppDecorations.cardDecoration    // Standard card styling
AppDecorations.primaryButtonStyle // Primary button styling
AppDecorations.textFieldDecoration // Text input styling
```

## 🎯 Design Principles

1. **Responsive Design**
   - Adapts to different screen sizes
   - Proper text wrapping
   - Flexible layouts

2. **Visual Hierarchy**
   - Clear section organization
   - Consistent spacing
   - Proper typography scaling

3. **User Experience**
   - Smooth animations
   - Interactive feedback
   - Clear call-to-actions

4. **Maintainability**
   - Modular components
   - Centralized styling
   - Consistent code structure

## 🔧 Setup and Usage

1. Clone the repository
2. Ensure Flutter is installed and set up
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to start the application

## 📱 Responsive Breakpoints

The application is designed to be responsive across different screen sizes:

- **Very Narrow** (<300px): Stacked layout
- **Normal** (≥300px): Side-by-side layout
- **Wide** (≥600px): Expanded layout with optimal spacing

## 🎨 Theme Customization

The app's theme can be customized by modifying the constants in `utils/constants.dart`:

- Colors
- Text styles
- Decorations
- Animations
- Shadows and elevations

## 🔄 State Management

The application uses a simple state management approach with:
- StatefulWidget for local state
- Callback functions for component communication
- Clean architecture principles

## 📦 Dependencies

- Flutter SDK
- Material Design

