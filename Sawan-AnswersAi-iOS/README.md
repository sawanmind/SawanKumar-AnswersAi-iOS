# Sawan-AnswersAi-iOS

## Overview

**Sawan-AnswersAi-iOS** is a SwiftUI-based iOS application inspired by the App Store's "Today" tab. The project demonstrates interactive UI components such as expandable cards, matched geometry effects, and smooth animations. It dynamically loads and presents content using a modular architecture and reusable views.

---

## Features

### 1. Expandable Cards
- Cards expand into a full-screen view with content and actions.
- Uses `matchedGeometryEffect` for seamless transitions.

### 2. Smooth Animations
- Implements elegant animations for expanding and collapsing cards.
- Dynamic transitions between views.

### 3. Dynamic Content Loading
- Content is loaded from a JSON file (`content.json`), making it easy to update without modifying the code.

### 4. Reusable Components
- Modular and reusable UI components such as `GetButton`, `ShareButton`, and `TabBarView`.

---

## Project Structure

```plaintext
Sawan-AnswersAi-iOS/
├── Content/
│   ├── content.json              # JSON file with dynamic content
├── Model/
│   ├── Content.swift             # Data model for the content
├── View/
│   ├── ActivityView.swift        # Activity View for sharing content
│   ├── CollapsedCardView.swift   # Compact view for cards
│   ├── ExpandedContentView.swift # Full-screen view for detailed content
│   ├── GetButton.swift           # Custom button component
│   ├── ShareButton.swift         # Custom share button
│   ├── TabBarView.swift          # Tab bar View
│   ├── TodayView.swift           # Main view showcasing the cards
├── ViewModel/
│   ├── ContentViewModel.swift    # ViewModel to manage content
├── Assets/
│   ├── Images and app assets
├── Sawan_AnswersAi_iOSApp.swift  # Entry point for the SwiftUI app
```

---


## Installation

### Prerequisites
- Xcode 13.0 or later.
- Swift 5.5 or later.
- iOS 15.0 or later.

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/Sawan-AnswersAi-iOS.git
   ```
2. Open the project in Xcode:
   ```bash
   cd Sawan-AnswersAi-iOS
   open Sawan_AnswersAi_iOS.xcodeproj
   ```
3. Run the app on a simulator or physical device.

---

## Usage

### Running the App
1. Launch the app to view a list of dynamic cards.
2. Tap on a card to expand it into a full-screen view.
3. Use the close button to collapse back to the original card view.

## Key Components

### 1. **CollapsedCardView**
Displays cards in a compact, scrollable layout. Expands to a detailed view on tap.

### 2. **ExpandedContentView**
Full-screen view with detailed information, an action button, and a close button.

### 4. **ContentViewModel**
Handles the loading and management of dynamic content from the `content.json` file.

## Contact

For issues or feature requests, contact **Sawan Kumar** at [sawanmind@gmail.com](mailto:sawanmind@gmail.com).
