# BePay Dashboard

A responsive Flutter dashboard application for the BePay payment platform, featuring both web and mobile views.

## Project Structure

The project is organized using a feature-based architecture for better maintainability and scalability:

```
lib/
  ├── core/                     # Core functionality and utilities
  │   ├── constants/            # App-wide constants
  │   ├── theme/                # Theming and styling
  │   └── utils/                # Utility functions
  │
  ├── features/                 # Application features
  │   └── dashboard/            # Dashboard feature
  │       ├── dashboard_page.dart  # Main responsive dashboard page
  │       └── presentation/     # UI components
  │           ├── mobile/       # Mobile-specific components
  │           ├── web/          # Web-specific components
  │           └── widgets/      # Shared components
  │
  └── main.dart                 # Entry point
```

## Key Components

### Core

- **Theme**: Centralized theming with colors, text styles, and decorations
- **Utils**: Utilities like responsive layout helpers

### Features - Dashboard

- **Web UI**: Web-specific layout with sidebar navigation
- **Mobile UI**: Mobile-specific layout with bottom navigation
- **Shared Widgets**: Components used in both layouts

## Responsive Design

The application uses a responsive layout that automatically adapts to different screen sizes:

- **Mobile** (<600px): Single column layout with bottom navigation
- **Desktop** (≥600px): Two-column layout with sidebar navigation

## Design Guidelines

- **Colors**: Dark theme with purple accent colors
- **Typography**: Hierarchical text styles for consistent reading experience
- **Components**: Card-based UI with consistent spacing and layouts

## Usage

To run the application:

```bash
flutter pub get
flutter run
```
