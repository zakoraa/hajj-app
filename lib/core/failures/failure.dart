
abstract class Failure {}

// TODO: inisialisasi class failure 
// fungsi: untuk menentukan pesan error yang dihandle melalui class FailureHandler
// failure akan digunakan saat terjadi error pada repository layer

class OfflineFailure extends Failure {}

class ServerFailure extends Failure {}

class LoginFailure extends Failure {}