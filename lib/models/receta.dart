class Receta {
  final int id;
  final String nombre;
  final List<String> ingredientes;
  final List<String> instrucciones;
  final int tiempoPreparacion;
  final int tiempoCoccion;
  final int porciones;
  final int calorias;
  final String imagenUrl;
  final double calificacion;
  final String cocina;
  final String dificultad;
  const Receta({
    required this.id,
    required this.nombre,
    required this.ingredientes,
    required this.instrucciones,
    required this.tiempoPreparacion,
    required this.tiempoCoccion,
    required this.porciones,
    required this.calorias,
    required this.imagenUrl,
    required this.calificacion,
    required this.cocina,
    required this.dificultad,
  });

  factory Receta.fromJson(Map<String, dynamic> json) {
    final ingredientes = json['ingredients'];
    final instrucciones = json['instructions'];

    return Receta(
      id: (json['id'] as num?)?.toInt() ?? 0,
      nombre: (json['name'] as String?) ?? 'Receta',
      ingredientes: ingredientes is List ? ingredientes.map((e) => e.toString()).toList() : const [],
      instrucciones: instrucciones is List ? instrucciones.map((e) => e.toString()).toList() : const [],
      tiempoPreparacion: (json['prepTimeMinutes'] as num?)?.toInt() ?? 0,
      tiempoCoccion: (json['cookMinutes'] as num?)?.toInt() ?? 0,
      porciones: (json['servings'] as num?)?.toInt() ?? 1,
      calorias: (json['caloriesPerServing'] as num?)?.toInt() ?? 0,
      imagenUrl: (json['image'] as String?) ?? '',
      calificacion: (json['rating'] as num?)?.toDouble() ?? 0.0,
      cocina: (json['cuisine'] as String?) ?? 'Desconocida',
      dificultad: (json['difficulty'] as String?) ?? 'Desconocida',
    );
  }

  int get tiempoTotal => tiempoPreparacion + tiempoCoccion;
}