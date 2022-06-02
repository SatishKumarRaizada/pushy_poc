import 'package:flutter/material.dart';
import 'package:pushy_poc/notification_model.dart';

class NotificationDetail extends StatefulWidget {
  final NotificationModel notidata;
  const NotificationDetail({Key? key, required this.notidata})
      : super(key: key);
  @override
  State<NotificationDetail> createState() => _NotificationDetailState();
}

class _NotificationDetailState extends State<NotificationDetail> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _height = _size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.notidata.shipmentId} Details'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _messageRow('Booking ID:', widget.notidata.shipmentId!),
                SizedBox(height: _height * 0.02),
                _messageRow('Booking Message:', widget.notidata.message!),
                SizedBox(height: _height * 0.02),
                _messageRow('Vessel Name:', widget.notidata.vessel!),
                SizedBox(height: _height * 0.02),
                _messageRow('Voyage Number:', widget.notidata.voyage!),
                SizedBox(height: _height * 0.02),
                _messageRow('Departure Port:', widget.notidata.departurePort!),
                SizedBox(height: _height * 0.02),
                _messageRow(
                  'Departure Time:',
                  widget.notidata.vesselDepartTime!,
                ),
                SizedBox(height: _height * 0.02),
                _messageRow('Event Name:', widget.notidata.eventName!),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _messageRow(String title, String value) {
    final _size = MediaQuery.of(context).size;
    final _width = _size.width;
    return Wrap(
      children: [
        Text(title),
        SizedBox(width: _width * 0.02),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
