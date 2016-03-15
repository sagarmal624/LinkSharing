$(document).ready((function () {
    console.log("table loded");
    var preURL = $("#preURL").val();
    var dataTableColumnDefinitions = [
        {
            "render": function (data, type, row) {
                return data;
            },
            orderable: true,
            searchable: true,
            "targets": 0
        },

        {
            "render": function (data, type, row) {
                return data;
            },
            orderable: true,
            searchable: true,
            "targets": 1
        },
        {
            "render": function (data, type, row) {
                return data;
            },
            orderable: true,
            searchable: true,
            "targets": 2

        },
        {
            "render": function (data, type, row) {
                return data == 0 ? "No" : "Yes";
            },
            orderable: true,
            searchable: true,
            "targets": 3
        },
        {
            "render": function (data, type, row) {
                return data == 0 ? "No" : "Yes";
            },
            orderable: true,
            searchable: true,
            "targets": 4
        },
        {
            "render": function (data, type, row) {
                return data == 0 ? "No" : "Yes";
            },
            orderable: true,
            searchable: true,
            "targets": 5
        },
        {
            "render": function (data, type, row) {
                return data == 0 ? "No" : "Yes";
            },
            orderable: true,
            searchable: true,
            "targets": 6
        },
        {
            "render": function (data, type, row) {
                return data == 0 ? "No" : "Yes";
            },
            orderable: true,
            searchable: true,
            "targets": 7
        },
        {
            "render": function (data, type, row) {
                var zipId = encodeURIComponent(data)
                var manageURL = $("#manageZipURL").val() + "?zipCodeId=" + zipId;
                var deleteURL = $("#deleteZipURL").val() + "?zipCodeId=" + zipId;

                return "<a href='" + manageURL + "' zipCodeId='" + data + "' class='fa fa-eye blue editZip' title='View'></a>" +
                    "&nbsp;&nbsp;<a href='" + deleteURL + "' zipCodeId='" + data + "' class='fa fa-trash deleteZip' title='Delete'></a>"


            },
            orderable: false,
            searchable: false,
            "targets": 9,
            "sClass": "link_right"
        }
    ];
    var dataTableColumnNames = [
        {"data": "username"},
        {"data": "email"},
        {"data": "firstname"},
        {"data": "lastname"},
        {"data": "admin"},
        {"data": "active"}
    ];

    var dataTableAJAXOptions = {
        "url": "/user/show",
        "type": "GET",
        "data": alterDataTableRequestParameters
    };

    var dataTableOptions = {
        "dom": 'lf<"table-data"t>ip',
        "processing": true,
        "serverSide": true,
        "deferRender": true,
        "responsive": true,
        "retrieve": true,
        "order": [
            [0, "asc"]
        ],
        "lengthMenu": [50, 200, 500],
        "ajax": dataTableAJAXOptions,
        //"columnDefs": dataTableColumnDefinitions,
        "columns": dataTableColumnNames,
        "createdRow": function (row, data, dataIndex) {
        }
    };

    function createDataTable() {
        var dataTable = $('#example1').DataTable(dataTableOptions);
    }

    createDataTable();

    function alterDataTableRequestParameters(data) {
        var dataToSend = {};
        dataToSend.sortColumn = data.columns[data.order[0].column].data;
        dataToSend.order = data.order[0].dir;
        dataToSend.max = data.length;
        dataToSend.offset = data.start;
        dataToSend.queryString = data.search.value;

        var table = $('#example1').DataTable();
        var info = table.page.info();
        dataToSend.pageIndex = info.page;
        return dataToSend
    }

    $("#table_data_table").on("click", ".deleteZip", function (e) {
        var element = this
        e.preventDefault();
        showBootBoxDialog("Are you sure you want to delete this item?", function () {
            location.href = $(element).attr('href')
        }, function () {
        })
    });
    function deleteSpecifiedNode(zipCodeId) {
        console.log("delete zip  start :: " + zipCodeId)
        showBootBoxDialog("Are you sure you want to delete this item.", function () {
            deleteNodePermanently(zipCodeId)
        })
    }

    function showBootBoxDialog(title, successCallback) {
        bootbox.dialog({
            message: title,
            buttons: {
                yes: {
                    label: "Yes",
                    className: "btn-danger",
                    callback: successCallback
                },
                no: {
                    label: "No",
                    className: "btn-primary",
                    return: false

                }
            }
        });
    }


})



);