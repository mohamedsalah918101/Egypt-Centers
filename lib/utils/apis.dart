class Api {
  static const String baseUrl = "https://portal.elitehomeskwt.com/api/backend";

  static const String login = "$baseUrl/auth/employee-login";
  static const String logout = "$baseUrl/auth/employee/logout";

  static String getPropertiesFilter(
      {
        required int pageNum,
        String? reqStatus,
        String? minAmount,
        String? serious,
        String? dateFrom ,
        String? dateTo ,
      }) {
    String path = "$baseUrl/properties-requests/all?page=$pageNum";
    if (reqStatus != null) {
      path += "${path.contains("?") ? "&" : "?"}status=$reqStatus";
    }
    if (minAmount != null) {
      path += "${path.contains("?") ? "&" : "?"}min_amount=$minAmount";
    }
    if (serious != null) {
      path += "${path.contains("?") ? "&" : "?"}serious=$serious";
    }
    if (dateFrom != null) {
      path += "${path.contains("?") ? "&" : "?"}date_from=$dateFrom";
    }
    if (dateTo != null) {
      path += "${path.contains("?") ? "&" : "?"}date_to=$dateTo";
    }
    return path;
  }

  static String getArchivedRequests({required int pageNum}) =>
      "$baseUrl/properties-requests/all/archive?page=$pageNum";


  static const String getAllMonthsSalary = "$baseUrl/employees/my-salary-all";

  static String addNoteProperty({required int requestId, required String note,}) =>
      "$baseUrl/properties-requests/add-note/$requestId?note=$note";

}
