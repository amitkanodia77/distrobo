import 'package:distrobo1/app/home/controlar/schedule_delivery_controller.dart';
import 'package:distrobo1/app/payment/screen/payment_method.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ScheduleDelivery extends StatefulWidget {
  const ScheduleDelivery({super.key});

  @override
  State<ScheduleDelivery> createState() => _ScheduleDeliveryState();
}

class _ScheduleDeliveryState extends State<ScheduleDelivery> {
  final ScheduleDeliveryController scheduleDeliveryController =
      Get.put(ScheduleDeliveryController());
  String _formatTime(TimeOfDay time) {
    final hour = time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod;
    final period = time.period == DayPeriod.am ? 'am' : 'pm';
    return "$hour$period";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Schedule Delivery",
                    style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
                  ),
                ],
              ),

              
              SizedBox(height: 5.w),
              Text("Delivery times are based on earliest availability",
              style: MyTextStyle.gilroyMediumW416subtitelcolor,
              ),
              SizedBox(height: 5.w),
        
              Text("Select Delivery Time",
              style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
              ),
              SizedBox(height: 5.w),
        
              Text("Date",
              style: MyTextStyle.gilroySemiBoldW418titelcolor,
              ),
              SizedBox(height: 5.w),
              TextFormField(
                controller: scheduleDeliveryController.dateController,
                readOnly: true,
                decoration: InputDecoration(
                  hintText: 'Monday, December 4',
                  hintStyle: MyTextStyle.gilroyMediumW416subtitelcolor,
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(width: 1.5, color: Mycolor.unfocascolor),
                  ),
                  filled: true,
                  fillColor: Mycolor.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(width: 1.5, color: Mycolor.unfocascolor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 1.5, color: Mycolor.focascolor),
                  ),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
        
                  if (pickedDate != null) {
                    scheduleDeliveryController.dateController.text =
                        "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                  }
                },
              ),
              SizedBox(height: 5.w),
              Text("Time",
              style: MyTextStyle.gilroySemiBoldW418titelcolor,
              ),
              TextFormField(
                controller: scheduleDeliveryController.timeController,
                readOnly: true,
                decoration: InputDecoration(
                  hintText: '10 am - 2 pm',
                  hintStyle: MyTextStyle.gilroyMediumW416subtitelcolor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(width: 1.5, color: Mycolor.unfocascolor),
                  ),
                  filled: true,
                  fillColor: Mycolor.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(width: 1.5, color: Mycolor.unfocascolor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 1.5, color: Mycolor.focascolor),
                  ),
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
                onTap: () async {
                  TimeOfDay? startTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay(hour: 12, minute: 60),
                  );
        
                  if (startTime == null) return;
        
                  TimeOfDay? endTime = await showTimePicker(
                    context: context,
                    initialTime: startTime.replacing(hour: startTime.hour),
                  );
        
                  if (endTime == null) return;
        
                  String start = _formatTime(startTime);
                  String end = _formatTime(endTime);
        
                  scheduleDeliveryController.timeController.text = "$start-$end";
                },
              ),
              SizedBox(height: 5.w),
        
              Text("Instructions",
              style: MyTextStyle.gilroySemiBoldW418titelcolor,
              ),
              
           Textformfild(
                    
                    hintText: 'Enter Instructions',
                    maxLines: 5,
                  ),
            SizedBox(height: 20.w),
        
            RoundedButton(onchange: (){
              Get.to(()=> PaymentMethod()   );
            }, btnName: "Go to Checkout")
            ],
          ),
        ),
      ),
    );
  }
}
