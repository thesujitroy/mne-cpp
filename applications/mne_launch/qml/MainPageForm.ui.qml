import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property alias button_close: button_close
    property alias button_mne_scan: button_mne_scan
    property alias button_mne_browse: button_mne_browse
    property alias button_mne_analyze: button_mne_analyze

    state: "DEFAULT"

    width: 1040
    height: 650

    Image {
        id: image_background
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        source: "../resources/tmp_background.jpg"
    }

    // Close
    MenuButton{
        id: button_close

        imgSrc: "../resources/icon_close.svg"
        imgHeight: 16
        imgWidth: 16

        anchors.top: parent.top
        anchors.topMargin: 2
        anchors.right: parent.right
        anchors.rightMargin: 4
    }

    // MNE Scan
    ApplicationButton {
        id: button_mne_scan
        x: 697
        y: 36
        imgSrcNormal: "../resources/icon_mne_scan_white.png"
        imgSrcHover:  "../resources/icon_mne_scan.png"
        imgHeight: 100
        imgWidth: 100
    }

    CenterDot{
        id: center_dot_scan
        x: 560
        y: 200
    }
    ConnectorLine {
        id: connector_line_scan
        x_start: button_mne_scan.x
        y_start: button_mne_scan.y+button_mne_scan.height*0.5
        x_end: center_dot_scan.x_center
        y_end: center_dot_scan.y_center
        anchors.fill: parent
    }


    // MNE Browse
    ApplicationButton{
        id: button_mne_browse
        x: 867
        y: 216
        imgSrcNormal: "../resources/icon_mne_browse_white.png"
        imgSrcHover:  "../resources/icon_mne_browse.png"
        imgHeight: 100
        imgWidth: 100
    }
    CenterDot{
        id: center_dot_browse
        x: 604
        y: 313
    }
    ConnectorLine {
        id: connector_line_browse
        x_start: button_mne_browse.x
        y_start: button_mne_browse.y+button_mne_browse.height*0.5
        x_end: center_dot_browse.x_center
        y_end: center_dot_browse.y_center
        anchors.fill: parent
    }


    // MNE Analyze
    ApplicationButton{
        id: button_mne_analyze
        x: 749
        y: 428
        imgSrcNormal: "../resources/icon_mne_analyze_white.png"
        imgSrcHover:  "../resources/icon_mne_analyze.png"
        imgHeight: 100
        imgWidth: 100
    }

    CenterDot{
        id: center_dot_analyze
        x: 577
        y: 437
    }

    ConnectorLine {
        id: connector_line_analyze
        x_start: button_mne_analyze.x
        y_start: button_mne_analyze.y+button_mne_analyze.height*0.5
        x_end: center_dot_analyze.x_center
        y_end: center_dot_analyze.y_center
        anchors.fill: parent
    }

    Logo {
        id: logo
        x: 25
        y: 20
    }


    states: [
        State {
            name: "DEFAULT"
            PropertyChanges { target: logo; state: "DEFAULT" }
            PropertyChanges { target: center_dot_scan; visible: false }
            PropertyChanges { target: center_dot_browse; visible: false }
            PropertyChanges { target: center_dot_analyze; visible: false }
            PropertyChanges { target: connector_line_scan; visible: false }
            PropertyChanges { target: connector_line_browse; visible: false }
            PropertyChanges { target: connector_line_analyze; visible: false }
        },
        State {
            name: "SCAN"
            PropertyChanges { target: logo; state: "SCAN" }
            PropertyChanges { target: center_dot_scan; visible: true }
            PropertyChanges { target: center_dot_browse; visible: false }
            PropertyChanges { target: center_dot_analyze; visible: false }
            PropertyChanges { target: connector_line_scan; visible: true }
            PropertyChanges { target: connector_line_browse; visible: false }
            PropertyChanges { target: connector_line_analyze; visible: false }
        },
        State {
            name: "BROWSE"
            PropertyChanges { target: logo; state: "BROWSE" }
            PropertyChanges { target: center_dot_scan; visible: false }
            PropertyChanges { target: center_dot_browse; visible: true }
            PropertyChanges { target: center_dot_analyze; visible: false }
            PropertyChanges { target: connector_line_scan; visible: false }
            PropertyChanges { target: connector_line_browse; visible: true }
            PropertyChanges { target: connector_line_analyze; visible: false }
        },
        State {
            name: "ANALYZE"
            PropertyChanges { target: logo; state: "ANALYZE" }
            PropertyChanges { target: center_dot_scan; visible: false }
            PropertyChanges { target: center_dot_browse; visible: false }
            PropertyChanges { target: center_dot_analyze; visible: true }
            PropertyChanges { target: connector_line_scan; visible: false }
            PropertyChanges { target: connector_line_browse; visible: false }
            PropertyChanges { target: connector_line_analyze; visible: true }
        }
    ]
}
