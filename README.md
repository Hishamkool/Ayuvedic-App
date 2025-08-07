# 🧘‍♂️ Ayurvedic App – Flutter Machine Test

A clean, modular, and scalable Flutter application built as part of a machine test for Noviindus Technologies. The app manages Ayurvedic patient data, registration, and listings with pixel-perfect UI based on the provided Figma design.

---

## 📱 Screenshots

| Splash Screen | Login Page | Patient List | Register Page |
|---------------|------------|--------------|---------------|
| ![splash](https://github.com/user-attachments/assets/f0273900-0ceb-4d75-b73d-abe90401aaad) | ![login](https://github.com/user-attachments/assets/52af710b-1876-45e1-b1c6-e85c5ff010a1) | ![patient list](https://github.com/user-attachments/assets/6a70c454-ecf5-4df3-97c3-9aee3149d2b4) | ![register1](https://github.com/user-attachments/assets/695fb65f-eae1-49ac-b515-7c4cc0bd148a)|


---

## 📁 Project Structure (Clean Architecture + MVVM)
<img width="570" height="531" alt="project structure" src="https://github.com/user-attachments/assets/cf45c583-9030-478b-bd46-01e64c4ffd12" />


---

## ⚙️ Architecture

This project follows **Clean Architecture** with a layer-based separation:

- **Presentation Layer**: UI, ViewModels (Providers)
- **Domain Layer**: Abstract business logic and repositories
- **Data Layer**: DTOs and API clients
- **Core Layer**: Constants, Dio setup, app-wide configs

---

## 🛠 Packages Used

| Package          | Purpose                            |
|------------------|------------------------------------|
| [provider](https://pub.dev/packages/provider) | State management (MVVM ViewModels) |
| [dio](https://pub.dev/packages/dio) | Powerful HTTP client |
| [retrofit](https://pub.dev/packages/retrofit) | Type-safe REST API interface |
| [json_serializable](https://pub.dev/packages/json_serializable) | Auto JSON parsing |
| [build_runner](https://pub.dev/packages/build_runner) | Code generation |
| [flutter_svg](https://pub.dev/packages/flutter_svg) | SVG support (if used in design) |
| [flutter_native_splash](https://pub.dev/packages/flutter_native_splash) | Native splash screen configuration |

---

## 📌 Features Implemented

- [x] Native splash screen setup
- [x] Clean architecture with MVVM pattern
- [x] Pixel-perfect UI based on Figma design
- [x] Modular widget structure for reusability
- [x] State management using `Provider`
- [x] Fully responsive layouts

---

## ❗ Limitations

Due to limited time constraints, API integration was not completed. However:

- Retrofit and Dio are **fully set up** with generated client.
- Structure for `FormData`-based endpoints is ready.
- UI is functional and ready for data binding.

---

## 🚀 Future Improvements

- [ ] Complete API integration using Dio + Retrofit
- [ ] Secure token handling using SharedPreferences
- [ ] Implement search & filter in patient list
- [ ] PDF generation after registration
- [ ] Add form validation and error handling

---

## 🔗 GitHub Repository

👉 [https://github.com/Hishamkool/Ayuvedic-App](https://github.com/Hishamkool/Ayuvedic-App)

---

## 🧑‍💻 Author

**Muhammed Hisham**  
🌐 [(https://github.com/Hishamkool/)](#) | ✉️ [linkedin.hisham@gmail.com](#)

---
## 📦 Download APK

You can download and test the latest APK release from the link below:

🔗 [Download APK](https://drive.google.com/file/d/13ykqFeEy44pKkUYCtJDbvZoNwqBkcQmh/view?usp=sharing)


> Built with ❤️ using Flutter and clean code principles.






