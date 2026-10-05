تدبير الأنشطة التربوية - Supabase + Vercel

المشروع يعمل حاليًا بواجهة React وتخزين محلي كنسخة تشغيل احتياطية، مع مخطط Supabase جاهز.

لربط Supabase:
1) أنشئ مشروعًا في Supabase.
2) نفّذ supabase/schema.sql في SQL Editor.
3) انسخ .env.example إلى .env وأدخل VITE_SUPABASE_URL و VITE_SUPABASE_ANON_KEY.
4) npm install ثم npm run dev.
5) للنشر على Vercel: اربط المستودع، واضبط متغيرات البيئة نفسها، ثم Deploy.

ملاحظة: لم أضع مفاتيح حقيقية داخل الحزمة. يجب ضبط سياسات RLS والمصادقة قبل الاستخدام الفعلي متعدد المستخدمين.
