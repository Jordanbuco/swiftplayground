import SwiftUI

struct MyApp: View {
    // Configuración de columnas para el grid adaptativo
    let columns = [GridItem(.adaptive(minimum: 100))]
    
    var body: some View {
        NavigationView {
            VStack {
                LazyVGrid(columns: columns, spacing: 20) {
                    NavigationLink(destination: HomeView()) {
                        IconButton(iconName: "house.fill")
                    }
                    NavigationLink(destination: GridView()) {
                        IconButton(iconName: "square.grid.2x2.fill")
                    }
                    NavigationLink(destination: CalendarView()) {
                        IconButton(iconName: "calendar")
                    }
                    NavigationLink(destination: TasksView()) {
                        IconButton(iconName: "checkmark.square.fill")
                    }
                    NavigationLink(destination: ProfileView()) {
                        IconButton(iconName: "person.circle.fill")
                    }
                }
                .padding()
            }
            .navigationTitle("My App")
        }
    }
}

struct IconButton: View {
    var iconName: String
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: 60, height: 60)
                .shadow(radius: 5)
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(.blue)
        }
    }
}

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Home")
                    .font(.largeTitle)
                    .padding(.top)
                
                Image("image") // Imagen de portada para la sección Home
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(.vertical)
                
                Text("Welcome to Your Home")
                    .font(.title2)
                    .padding(.bottom, 5)
                
                Text(String(repeating: "This is your home view. ", count: 30)) // 600 caracteres
                    .padding(.bottom, 10)
                Image("bot") // imagen entre testos
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .cornerRadius(10)
                    .padding(.vertical)
                Text(" ")
                    .padding(.bottom, 10) // Comentario en estilo
                
                Text(String(repeating: "Here is a brief summary. ", count: 10)) // 150 caracteres
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Home")
    }
}

struct GridView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Grid")
                    .font(.largeTitle)
                    .padding(.top)
                
                Image("image") // Imagen de portada para la sección Grid
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(.vertical)
                
                Text("Your Grid Layout")
                    .font(.title2)
                    .padding(.bottom, 5)
                
                Text(String(repeating: "This is your grid view. ", count: 30)) // 600 caracteres
                    .padding(.bottom, 10)
                Image("bot") // imagen entre testos
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .cornerRadius(10)
                    .padding(.vertical)
                Text(" ")
                    .padding(.bottom, 10) // Comentario en estilo
                
                Text(String(repeating: "Grid overview summary. ", count: 10)) // 150 caracteres
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Grid")
    }
}

struct CalendarView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Calendar")
                    .font(.largeTitle)
                    .padding(.top)
                
                Image("image") // Imagen de portada para la sección Calendar
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(.vertical)
                
                Text("Manage Your Events")
                    .font(.title2)
                    .padding(.bottom, 5)
                
                Text(String(repeating: "This is your calendar view. ", count: 30)) // 600 caracteres
                    .padding(.bottom, 10)
                Image("bot") // imagen entre testos
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .cornerRadius(10)
                    .padding(.vertical)
                Text(" ")
                    .padding(.bottom, 10) // Comentario en estilo
                
                Text(String(repeating: "Calendar overview summary. ", count: 10)) // 150 caracteres
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Calendar")
    }
}

struct TasksView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Tasks")
                    .font(.largeTitle)
                    .padding(.top)
                
                Image("image") // Imagen de portada para la sección Tasks
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(.vertical)
                
                Text("Track Your Tasks")
                    .font(.title2)
                    .padding(.bottom, 5)
                
                Text(String(repeating: "This is your tasks view. ", count: 30)) // 600 caracteres
                    .padding(.bottom, 10)
                Image("bot") // imagen entre testos
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .cornerRadius(10)
                    .padding(.vertical)
                Text(" ")
                    .padding(.bottom, 10) // Comentario en estilo
                
                Text(String(repeating: "Tasks overview summary. ", count: 10)) // 150 caracteres
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Tasks")
    }
}

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Profile")
                    .font(.largeTitle)
                    .padding(.top)
                
                Image("image") // Imagen de portada para la sección Profile
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(.vertical)
                
                Text("Your Personal Information")
                    .font(.title2)
                    .padding(.bottom, 5)
                
                Text(String(repeating: "This is your profile view. ", count: 30)) // 600 caracteres
                    .padding(.bottom, 10)
                Image("bot") // imagen entre testos
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .cornerRadius(10)
                    .padding(.vertical)
                Text(" ")
                    .padding(.bottom, 10) // Comentario en estilo
                
                Text(String(repeating: "Profile overview summary. ", count: 10)) // 150 caracteres
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Profile")
    }
}

@main
struct MyApp_Preview: App {
    var body: some Scene {
        WindowGroup {
            MyApp()
        }
    }
}
