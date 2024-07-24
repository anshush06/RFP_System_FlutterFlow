import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'admin_dashboard_widget.dart' show AdminDashboardWidget;
import 'package:flutter/material.dart';

class AdminDashboardModel extends FlutterFlowModel<AdminDashboardWidget> {
  ///  Local state fields for this page.

  List<int> sorting = [];
  void addToSorting(int item) => sorting.add(item);
  void removeFromSorting(int item) => sorting.remove(item);
  void removeAtIndexFromSorting(int index) => sorting.removeAt(index);
  void insertAtIndexInSorting(int index, int item) =>
      sorting.insert(index, item);
  void updateSortingAtIndex(int index, Function(int) updateFn) =>
      sorting[index] = updateFn(sorting[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (Get Admin RFP)] action in Tab widget.
  ApiCallResponse? adminRFPAPIResponse;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for ItemName widget.
  FocusNode? itemNameFocusNode;
  TextEditingController? itemNameTextController;
  String? Function(BuildContext, String?)? itemNameTextControllerValidator;
  String? _itemNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  String? _quantityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ItemDescription widget.
  FocusNode? itemDescriptionFocusNode;
  TextEditingController? itemDescriptionTextController;
  String? Function(BuildContext, String?)?
      itemDescriptionTextControllerValidator;
  String? _itemDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for MinPrice widget.
  FocusNode? minPriceFocusNode;
  TextEditingController? minPriceTextController;
  String? Function(BuildContext, String?)? minPriceTextControllerValidator;
  String? _minPriceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for MaxPrice widget.
  FocusNode? maxPriceFocusNode;
  TextEditingController? maxPriceTextController;
  String? Function(BuildContext, String?)? maxPriceTextControllerValidator;
  String? _maxPriceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for lastDate widget.
  FocusNode? lastDateFocusNode;
  TextEditingController? lastDateTextController;
  String? Function(BuildContext, String?)? lastDateTextControllerValidator;
  String? _lastDateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for category widget.
  int? categoryValue;
  FormFieldController<int>? categoryValueController;
  // Stores action output result for [Backend Call - API (Get Vendors By Category ID)] action in category widget.
  ApiCallResponse? fetchVendorAPIResponse;
  // State field(s) for vendors widget.
  List<int>? vendorsValue;
  FormFieldController<List<int>>? vendorsValueController;
  // Stores action output result for [Backend Call - API (Add RFP API)] action in Button widget.
  ApiCallResponse? addRFPAPIResponse;

  @override
  void initState(BuildContext context) {
    itemNameTextControllerValidator = _itemNameTextControllerValidator;
    quantityTextControllerValidator = _quantityTextControllerValidator;
    itemDescriptionTextControllerValidator =
        _itemDescriptionTextControllerValidator;
    minPriceTextControllerValidator = _minPriceTextControllerValidator;
    maxPriceTextControllerValidator = _maxPriceTextControllerValidator;
    lastDateTextControllerValidator = _lastDateTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    itemNameFocusNode?.dispose();
    itemNameTextController?.dispose();

    quantityFocusNode?.dispose();
    quantityTextController?.dispose();

    itemDescriptionFocusNode?.dispose();
    itemDescriptionTextController?.dispose();

    minPriceFocusNode?.dispose();
    minPriceTextController?.dispose();

    maxPriceFocusNode?.dispose();
    maxPriceTextController?.dispose();

    lastDateFocusNode?.dispose();
    lastDateTextController?.dispose();
  }
}
