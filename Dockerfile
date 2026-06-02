# استخدام صورة جافا 17 خفيفة وسريعة
FROM eclipse-temurin:17-jre-alpine

# تحديد مسار العمل جوة الكونتينر
WORKDIR /app

# نقل ملف الـ jar اللي Jenkins لسه عامله لداخل الكونتينر
COPY target/*.jar app.jar

# تشغيل التطبيق
ENTRYPOINT ["java", "-jar", "app.jar"]
