class NotFoundException implements Exception {
//Atributo criado para personalizar a mensagem
  final String message;
//Exceção para quando a url não é encontrada
  NotFoundException(this.message);
}
