# Somasoma – Event Discovery & Ticketing App (Customer App)

> 🖤 **Black & Gold themed Flutter app** for discovering events, buying tickets, and managing digital passes in Kenya.  
> Built as part of the Kenya Fatsoma project.

## ✅ Current Progress (MVP - UI Phase Complete)

This repository contains the **customer-facing mobile app** built with **Flutter (Dart)**. The following screens and flows are fully implemented:

### 🖥️ Screens Implemented
- **Home / Discover Page**
  - Search bar + Nairobi location dropdown
  - Trending events carousel (horizontal slider)
  - Event sections: "This Weekend", "Recommended", "Campus Events", "Nightlife", "Concerts"
  - Bottom navigation: Home | Tickets | Reps | Profile

- **Event Details Page**
  - Full-screen event banner
  - Verified badge + category
  - Date, time & venue with map preview placeholder
  - Ticket types: Early Bird (KES 800), Regular (KES 1,000), VIP (KES 2,500)
  - Event description, "Who’s Going" avatars, organizer info
  - Rep referral link: "Sell this event → Earn KES 50 per ticket"
  - **Sticky gold "Buy Ticket" button**

- **Ticket Checkout Page**
  - Ticket summary (event, type, price)
  - Quantity selector (currently static)
  - Phone number input (for M-Pesa)
  - "Pay with M-Pesa" button

- **Confirmation Screen**
  - Success message after payment
  - Redirect to Ticket Wallet

- **Ticket Wallet**
  - List of purchased tickets (upcoming + past)
  - **Real QR codes** generated via `qr_flutter`
  - Unique ticket ID, event name, date, and type

### 🎨 Design System
- **Theme**: Charcoal black (`#0E0E0E`) + Gold (`#D4AF37`)
- **Typography**: Clean, modern, high-contrast white text
- **Navigation**: Full flow from discovery → purchase → ticket access

### 🛠️ Tech Stack (Frontend)
- **Framework**: Flutter (Dart)
- **State**: Stateless widgets (MVP)
- **Packages**: 
  - `qr_flutter` – for generating scannable QR codes
- **Design**: Custom theming, responsive layout, mock data

### 🔜 Next Phase
- Integrate **Django REST backend** (events, tickets, users)
- Implement **Firebase Auth** & **Firestore**
- Connect **M-Pesa Daraja API** for real payments
- Add **Rep dashboard** features
- Build **Organiser web dashboard**

---

## 🚀 How to Run

1. **Prerequisites**
   - Flutter SDK (v3.38+)
   - Android Studio (for emulator or device)

2. **Clone & Install**
   ```bash
   git clone https://github.com/BigSt3pper/Kenya_Fatsoma.git
   cd Kenya_Fatsoma
   flutter pub get