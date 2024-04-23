class TambahBarangBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TambahBarangController());
  }
}