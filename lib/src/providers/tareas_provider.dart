class TareasProvider {
  List<Map<String, dynamic>> _tareas = [];
  static final TareasProvider _instancia = TareasProvider._private();

  TareasProvider._private() {
    _tareas;
  }
  factory TareasProvider() {
    return _instancia;
  }
  List<Map<String, dynamic>> get tareas {
    return _tareas;
  }

  void agregarTarea(Map<String, dynamic> nuevaTarea) {
    _tareas.add(nuevaTarea);
  }

  void editarTarea(
      Map<String, dynamic> nuevaTarea, Map<String, dynamic> actualTarea) {
    for (var i = 0; i < _tareas.length; i++) {
      if (_tareas[i] == actualTarea) {
        _tareas[i] = nuevaTarea;
        break;
      }
    }
  }

  void eliminarTarea(Map<String, dynamic> borrarTarea) {
    _tareas.remove(borrarTarea);
  }

  void terminarTarea(Map<String, dynamic> actualTarea) {
    for (var i = 0; i < _tareas.length; i++) {
      if (_tareas[i] == actualTarea) {
        actualTarea['estado'] = "terminada";
        _tareas[i] = actualTarea;
        break;
      }
    }
  }
}
