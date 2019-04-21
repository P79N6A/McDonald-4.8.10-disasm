.class public final Lcom/ensighten/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/k$2;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:Landroid/view/View;

.field public k:Landroid/view/ViewGroup;

.field public l:Z

.field public m:Ljava/lang/Runnable;

.field n:I

.field public o:Ljava/util/concurrent/locks/Lock;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/ensighten/k;->c:Z

    .line 87
    iput-boolean v0, p0, Lcom/ensighten/k;->d:Z

    .line 91
    iput-boolean v0, p0, Lcom/ensighten/k;->e:Z

    .line 96
    iput-boolean v0, p0, Lcom/ensighten/k;->f:Z

    .line 141
    iput-boolean v0, p0, Lcom/ensighten/k;->l:Z

    .line 151
    const/16 v0, 0x19

    iput v0, p0, Lcom/ensighten/k;->n:I

    .line 156
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ensighten/k;->o:Ljava/util/concurrent/locks/Lock;

    .line 159
    iput-object p1, p0, Lcom/ensighten/k;->a:Landroid/content/Context;

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ensighten/k;->b:Landroid/os/Handler;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/k;->g:Ljava/util/Map;

    .line 162
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1327
    const-wide/16 v0, 0x0

    .line 1328
    instance-of v2, p3, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 1329
    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p2, p3}, Lcom/ensighten/k;->a(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v0

    .line 1343
    :cond_0
    :goto_0
    return-wide v0

    .line 1330
    :cond_1
    instance-of v2, p3, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    .line 1331
    check-cast p3, Lorg/json/JSONArray;

    invoke-direct {p0, p2, p3}, Lcom/ensighten/k;->a(Ljava/lang/String;Lorg/json/JSONArray;)J

    move-result-wide v0

    goto :goto_0

    .line 1332
    :cond_2
    instance-of v2, p3, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1333
    check-cast p3, Ljava/lang/String;

    .line 1334
    const-string v2, "imageData"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1335
    invoke-static {p3}, Lcom/ensighten/Utils;->getObjectSize(Ljava/lang/Object;)J

    move-result-wide v0

    .line 1336
    const-string v2, "screenshot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1337
    const-string v2, "\tThe size of the screenshot is %s."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ensighten/Utils;->bytesToString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1339
    :cond_3
    const-string v2, "\tThe size of the image is %s."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ensighten/Utils;->bytesToString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1185
    if-nez p2, :cond_0

    .line 1186
    const-wide/16 v0, 0x0

    .line 1196
    :goto_0
    return-wide v0

    :cond_0
    move v1, v0

    .line 1189
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1191
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1192
    int-to-long v4, v1

    const-string v3, ""

    invoke-direct {p0, p1, v3, v2}, Lcom/ensighten/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    add-long/2addr v2, v4

    long-to-int v1, v2

    .line 1189
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1196
    :cond_1
    int-to-long v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private static a(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 3

    .prologue
    .line 1143
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 1144
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mListenerInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1146
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mOnClickListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1148
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1149
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 1156
    :goto_0
    return-object v0

    .line 1151
    :cond_0
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mOnClickListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1152
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1153
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1156
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1127
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1128
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1132
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1295
    const-string v1, ""

    .line 1296
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1297
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1316
    :cond_0
    return-object v1

    .line 1298
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 1299
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 1300
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1301
    invoke-direct {p0, v0}, Lcom/ensighten/k;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 1302
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1303
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1304
    if-nez v0, :cond_2

    .line 1305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1307
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/ensighten/k;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_3

    .line 1309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1311
    :cond_3
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_4

    .line 1312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1303
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 933
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 934
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 935
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 936
    const-string v3, "a"

    float-to-double v4, v2

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 937
    const-string v2, "r"

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 938
    const-string v2, "g"

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 939
    const-string v2, "b"

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 940
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 941
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 981
    if-eqz p0, :cond_0

    .line 982
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 983
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 984
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ensighten/P;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 985
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 987
    :try_start_0
    const-string v2, "imageData"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 988
    const-string v0, "imageType"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 989
    const-string/jumbo v0, "width"

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 990
    const-string v0, "height"

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 991
    invoke-virtual {p5, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 992
    :catch_0
    move-exception v0

    .line 993
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;ILorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 830
    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    if-eqz p1, :cond_0

    const-class v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    const/4 v1, 0x0

    .line 837
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 838
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 846
    :cond_2
    :goto_1
    invoke-direct {p0, v1, p3, p4}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 847
    invoke-direct/range {v0 .. v5}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;II)V

    .line 848
    invoke-direct {p0, v1, p3, p4}, Lcom/ensighten/k;->c(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4881
    if-eqz v1, :cond_0

    const-class v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4882
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 4883
    const-class v0, Landroid/graphics/drawable/GradientDrawable;

    const-string v2, "mGradientState"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4884
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4885
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4886
    const/4 v1, 0x0

    .line 4888
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v0, v3, :cond_4

    .line 4889
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mGradientColors"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4898
    :goto_2
    if-eqz v0, :cond_0

    .line 4901
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4902
    if-eqz v0, :cond_0

    .line 4906
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 4907
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 4908
    aget v0, v0, v2

    .line 4909
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 4910
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 4911
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4912
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    .line 4913
    const-string v4, "a"

    float-to-double v6, v3

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4914
    const/4 v3, 0x1

    aget-byte v3, v1, v3

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    and-int/lit16 v3, v3, 0xff

    .line 4915
    const-string v4, "r"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4916
    const/4 v3, 0x2

    aget-byte v3, v1, v3

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    and-int/lit16 v3, v3, 0xff

    .line 4917
    const-string v4, "g"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4918
    const/4 v3, 0x3

    aget-byte v1, v1, v3

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0xff

    .line 4919
    const-string v1, "b"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4920
    invoke-virtual {p3, p4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 840
    :cond_3
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 841
    const-class v2, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 842
    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 843
    aget-object v1, v0, p2

    goto/16 :goto_1

    .line 4891
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mColors"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_2

    .line 4893
    :catch_0
    move-exception v0

    .line 4894
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4895
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    :cond_5
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private a(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/ensighten/k;->e:Z

    if-eqz v0, :cond_0

    .line 756
    if-eqz p1, :cond_0

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    const-string v3, "image/png"

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/ensighten/k;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    const-string v3, "image/jpeg"

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/ensighten/k;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 800
    iget-boolean v0, p0, Lcom/ensighten/k;->e:Z

    if-eqz v0, :cond_0

    .line 801
    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    if-eqz p1, :cond_0

    const-class v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 806
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 807
    invoke-virtual {p1, v2, v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 808
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 809
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 810
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    const-string v3, "image/png"

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/ensighten/k;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 812
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    const-string v3, "image/jpeg"

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/ensighten/k;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Lorg/json/JSONObject;ZLandroid/widget/AdapterView;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lorg/json/JSONObject;",
            "Z",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 340
    if-nez p1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/ensighten/k;->a(Landroid/view/View;Lorg/json/JSONObject;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string v3, ""

    .line 348
    const/4 v4, -0x1

    .line 349
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 350
    const/4 v1, 0x0

    move v7, v1

    move-object v5, p4

    move v6, p3

    :goto_1
    if-ge v7, v8, :cond_0

    .line 351
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 352
    instance-of v9, v1, Landroid/view/ViewGroup;

    .line 353
    if-nez v6, :cond_2

    .line 354
    const-class v2, Landroid/widget/AdapterView;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    .line 355
    if-eqz v6, :cond_a

    .line 356
    move-object v0, v1

    check-cast v0, Landroid/widget/AdapterView;

    move-object v2, v0

    move v5, v6

    move v6, v4

    move-object v4, v2

    .line 361
    :goto_2
    if-eqz v5, :cond_8

    .line 362
    if-nez v7, :cond_7

    .line 363
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 364
    if-nez v2, :cond_3

    .line 365
    const/4 v2, 0x0

    .line 366
    const/4 v1, 0x0

    move-object v10, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v10

    .line 350
    :goto_3
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move-object v5, v2

    move v4, v6

    move v6, v3

    move-object v3, v1

    goto :goto_1

    .line 358
    :cond_2
    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    .line 359
    invoke-virtual {v5, v1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    move-object v4, v5

    move v5, v6

    move v6, v2

    goto :goto_2

    .line 369
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 371
    :goto_4
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 372
    const-string/jumbo v3, "viewController"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    :cond_4
    :goto_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 376
    if-eqz v9, :cond_6

    .line 377
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/ensighten/k;->a(Landroid/view/ViewGroup;Lorg/json/JSONObject;ZLandroid/widget/AdapterView;)V

    .line 378
    iget-boolean v1, p0, Lcom/ensighten/k;->d:Z

    if-eqz v1, :cond_5

    const/4 v1, -0x1

    if-eq v6, v1, :cond_5

    .line 379
    const-string v1, "position"

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    :cond_5
    :goto_6
    const-string v1, "subviews"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v1, v2

    move v3, v5

    move-object v2, v4

    goto :goto_3

    .line 382
    :cond_6
    invoke-direct {p0, v1, v3, v6}, Lcom/ensighten/k;->a(Landroid/view/View;Lorg/json/JSONObject;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 386
    :catch_0
    move-exception v1

    .line 387
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    invoke-static {v1}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_7
    move-object v2, v3

    goto :goto_4

    :cond_8
    move-object v2, v3

    goto :goto_5

    :cond_9
    move v10, v4

    move-object v4, v5

    move v5, v6

    move v6, v10

    goto :goto_2

    :cond_a
    move v10, v4

    move-object v4, v5

    move v5, v6

    move v6, v10

    goto :goto_2
.end method

.method private a(Landroid/view/View;Lorg/json/JSONObject;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 556
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [I

    .line 557
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 558
    const-string v4, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ensighten/k;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v4, "id"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 560
    const-string/jumbo v4, "x"

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 561
    const-string/jumbo v4, "y"

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 562
    const-string/jumbo v1, "width"

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 563
    const-string v1, "height"

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 564
    const-string/jumbo v1, "views"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 567
    const-string v4, "text"

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    :cond_0
    invoke-static {p1}, Lcom/ensighten/k;->a(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 570
    if-eqz v1, :cond_2

    .line 574
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 575
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_4

    .line 577
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "val$handlerName"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 578
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 579
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 580
    const-string v5, "method"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 582
    const-string v1, "class"

    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ensighten/k;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 594
    :cond_1
    :goto_0
    :try_start_2
    const-string v1, "clickHandler"

    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    move v1, v2

    .line 601
    :goto_1
    return v1

    .line 584
    :catch_0
    move-exception v1

    .line 585
    invoke-static {v1}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    .line 586
    const-string v5, "Unable to find click handler, exception: %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 588
    const-string v5, "error"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 596
    :catch_1
    move-exception v1

    .line 597
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    invoke-static {v1}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    :cond_3
    move v1, v3

    .line 599
    goto :goto_1

    .line 590
    :cond_4
    :try_start_3
    instance-of v5, v1, Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_1

    .line 591
    const-string v5, "method"

    const-string v6, "onClick"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    const-string v5, "class"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/k;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lorg/json/JSONObject;I)Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 432
    :try_start_0
    iget-boolean v2, p0, Lcom/ensighten/k;->d:Z

    if-eqz v2, :cond_14

    .line 433
    const-string v2, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 435
    invoke-static {v2, p1}, Lcom/ensighten/Ensighten;->getXPathAndClassNameForGeneratedResId(ILandroid/view/View;)[Ljava/lang/String;

    move-result-object v3

    .line 436
    if-nez v3, :cond_b

    .line 437
    const-string v3, "hashID"

    const-string v4, "0x%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    :goto_0
    const v2, -0x54523502

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 443
    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/ensighten/Ensighten;->getXPathForGeneratedFragmentResId(I)Ljava/lang/String;

    move-result-object v3

    .line 445
    if-nez v3, :cond_d

    .line 446
    const-string v3, "fragment"

    const-string v4, "resId:0x%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    :cond_0
    :goto_1
    move/from16 v0, p3

    if-eq v0, v7, :cond_e

    .line 452
    const-string v2, "position"

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 453
    const-string v2, "event"

    const-string v3, "getView"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    :goto_2
    invoke-static {p1}, Lcom/ensighten/k;->a(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 459
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 460
    const-string v3, "onClick"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 461
    const-string v3, "listenerClass"

    invoke-static {p1}, Lcom/ensighten/k;->a(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    const-string v3, "listeners"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 467
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 468
    const-string/jumbo v3, "x"

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 469
    const-string/jumbo v3, "y"

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v3, "width"

    invoke-virtual {v2, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 471
    const-string v3, "height"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 472
    const-string v3, "rect"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 474
    const-string v2, "alpha"

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    float-to-double v4, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 477
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 478
    const-string/jumbo v3, "visibility"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 481
    const-string v3, "layout_width"

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 482
    const-string v3, "layout_height"

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2612
    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2613
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v2, v0

    .line 2614
    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2615
    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v7

    .line 2616
    const-string v4, "dividerHeight"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2617
    const-string v5, "dividerImage"

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    move-object v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;II)V

    .line 2618
    const-string v2, "dividerColor"

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0, v2}, Lcom/ensighten/k;->c(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2632
    :cond_3
    const-class v2, Landroid/widget/Switch;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2633
    move-object v0, p1

    check-cast v0, Landroid/widget/Switch;

    move-object v2, v0

    .line 2638
    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    .line 2639
    if-eqz v3, :cond_f

    .line 2640
    const-string v3, "textOn"

    invoke-virtual {v2}, Landroid/widget/Switch;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2646
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_10

    .line 2647
    invoke-virtual {v2}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2648
    invoke-virtual {v2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v11, v4

    move-object v4, v3

    .line 2659
    :goto_4
    if-eqz v4, :cond_17

    .line 2660
    const-class v3, Landroid/widget/Switch;

    const-string v5, "mSwitchHeight"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2661
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2662
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2663
    const-class v3, Landroid/widget/Switch;

    const-string v5, "mThumbWidth"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2664
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2665
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2666
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2668
    const-string v5, "thumb"

    move-object v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;II)V

    .line 2671
    :goto_5
    if-eqz v11, :cond_4

    .line 2672
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2674
    const-string/jumbo v5, "track"

    mul-int/lit8 v6, v6, 0x2

    move-object v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;II)V

    .line 2701
    :cond_4
    :goto_6
    const-class v2, Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2702
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2703
    const-string v2, "src"

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0, v2}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2704
    const/4 v4, -0x1

    const-string v6, "src"

    move-object v2, p0

    move-object/from16 v5, p2

    move v7, v12

    invoke-direct/range {v2 .. v8}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;ILorg/json/JSONObject;Ljava/lang/String;II)V

    .line 2705
    const-string v2, "src"

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0, v2}, Lcom/ensighten/k;->c(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2717
    :cond_5
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2718
    if-eqz p1, :cond_7

    .line 2722
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 2723
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    .line 2725
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2726
    const-string v5, "pixelSize"

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2728
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    .line 2729
    if-eqz v5, :cond_6

    .line 2730
    const-string/jumbo v6, "typefaceStyle"

    invoke-virtual {v5}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2731
    :cond_6
    const-string v5, "font"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2733
    const-string v4, "gravity"

    invoke-virtual {v2}, Landroid/widget/TextView;->getGravity()I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2734
    const-string v4, "text"

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2735
    const-string v4, "textColor"

    move-object/from16 v0, p2

    invoke-static {v3, v0, v4}, Lcom/ensighten/k;->a(ILorg/json/JSONObject;Ljava/lang/String;)V

    .line 2738
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2739
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "drawableLeft"

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0, v4}, Lcom/ensighten/k;->b(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2740
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "drawableTop"

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0, v4}, Lcom/ensighten/k;->b(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2741
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const-string v4, "drawableRight"

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0, v4}, Lcom/ensighten/k;->b(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2742
    const/4 v3, 0x3

    aget-object v2, v2, v3

    const-string v3, "drawableBottom"

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0, v3}, Lcom/ensighten/k;->b(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 489
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_8

    .line 490
    const-string v2, "textAlignment"

    invoke-virtual {p1}, Landroid/view/View;->getTextAlignment()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 494
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 495
    const-string v2, "background"

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0, v2}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 496
    const/4 v4, -0x1

    const-string v6, "background"

    move-object v2, p0

    move-object/from16 v5, p2

    move v7, v12

    invoke-direct/range {v2 .. v8}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;ILorg/json/JSONObject;Ljava/lang/String;II)V

    .line 497
    const-string v2, "background"

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0, v2}, Lcom/ensighten/k;->c(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 499
    iget-boolean v2, p0, Lcom/ensighten/k;->r:Z

    if-eqz v2, :cond_a

    .line 500
    const-string/jumbo v2, "undefined"

    .line 501
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v3

    .line 502
    if-eqz v3, :cond_9

    .line 3465
    iget-object v4, v3, Lcom/ensighten/N;->c:Landroid/content/res/Configuration;

    .line 503
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v13, :cond_13

    .line 504
    const-string v2, "landscape"

    .line 510
    :cond_9
    :goto_7
    const-string/jumbo v3, "viewController"

    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    const-string v3, "densityDpi"

    iget v4, p0, Lcom/ensighten/k;->p:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 512
    const-string v3, "orientation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ensighten/k;->r:Z

    .line 517
    const-string v2, "background"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 521
    const-string v2, "background"

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0, v2}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 522
    const/4 v4, -0x1

    const-string v6, "background"

    move-object v2, p0

    move-object/from16 v5, p2

    move v7, v12

    invoke-direct/range {v2 .. v8}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;ILorg/json/JSONObject;Ljava/lang/String;II)V

    .line 523
    const-string v2, "background"

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0, v2}, Lcom/ensighten/k;->c(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 526
    :cond_a
    const-string v2, "subviews"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_8
    move v2, v9

    .line 544
    :goto_9
    return v2

    .line 439
    :cond_b
    const-string/jumbo v2, "viewController"

    const/4 v4, 0x1

    aget-object v4, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    const-string v2, "hashID"

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 539
    :catch_0
    move-exception v2

    .line 540
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 541
    invoke-static {v2}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    :cond_c
    move v2, v10

    .line 542
    goto :goto_9

    .line 448
    :cond_d
    :try_start_1
    const-string v2, "fragment"

    const-string/jumbo v4, "xPath:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 455
    :cond_e
    const-string v2, "event"

    iget-object v3, p0, Lcom/ensighten/k;->q:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 2642
    :cond_f
    const-string v3, "textOff"

    invoke-virtual {v2}, Landroid/widget/Switch;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 2650
    :cond_10
    const-class v3, Landroid/widget/Switch;

    const-string v4, "mThumbDrawable"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2651
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2652
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 2653
    const-class v4, Landroid/widget/Switch;

    const-string v5, "mTrackDrawable"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2654
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2655
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    move-object v11, v4

    move-object v4, v3

    goto/16 :goto_4

    .line 2676
    :cond_11
    const-class v2, Landroid/widget/CompoundButton;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2677
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton;

    move-object v2, v0

    .line 2680
    const-class v3, Landroid/widget/CompoundButton;

    const-string v4, "mButtonDrawable"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2681
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2683
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    .line 2684
    if-eqz v4, :cond_12

    move v4, v10

    .line 2686
    :goto_a
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 2687
    const-string v6, "src"

    move-object v2, p0

    move-object/from16 v5, p2

    move v7, v12

    invoke-direct/range {v2 .. v8}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;ILorg/json/JSONObject;Ljava/lang/String;II)V

    goto/16 :goto_6

    :cond_12
    move v4, v9

    .line 2684
    goto :goto_a

    .line 4465
    :cond_13
    iget-object v3, v3, Lcom/ensighten/N;->c:Landroid/content/res/Configuration;

    .line 505
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v9, :cond_9

    .line 506
    const-string v2, "portrait"

    goto/16 :goto_7

    .line 528
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 529
    invoke-static {v2, p1}, Lcom/ensighten/Ensighten;->getXPathAndClassNameForGeneratedResId(ILandroid/view/View;)[Ljava/lang/String;

    move-result-object v2

    .line 530
    if-eqz v2, :cond_15

    .line 531
    const-string/jumbo v3, "viewController"

    const/4 v4, 0x1

    aget-object v2, v2, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    :cond_15
    iget-boolean v2, p0, Lcom/ensighten/k;->r:Z

    if-eqz v2, :cond_16

    .line 534
    const-string/jumbo v2, "viewController"

    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ensighten/k;->r:Z

    .line 537
    :cond_16
    const-string v2, "subviews"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :cond_17
    move v6, v10

    move v7, v10

    goto/16 :goto_5
.end method

.method private b(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 776
    if-eqz p1, :cond_0

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-direct {p0, p1, p2, p3}, Lcom/ensighten/k;->a(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 778
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 779
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 780
    const-string/jumbo v2, "x"

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 781
    const-string/jumbo v2, "y"

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 782
    const-string/jumbo v2, "width"

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 783
    const-string v2, "height"

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 784
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 785
    const-string v2, "rect"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 787
    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 862
    const-class v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 865
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 866
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 867
    invoke-static {v0, p2, p3}, Lcom/ensighten/k;->a(ILorg/json/JSONObject;Ljava/lang/String;)V

    .line 870
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lorg/json/JSONObject;)J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1165
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1166
    :cond_0
    const-wide/16 v0, 0x0

    .line 1177
    :goto_0
    return-wide v0

    :cond_1
    move v1, v0

    .line 1169
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1171
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1172
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1173
    int-to-long v4, v1

    invoke-direct {p0, p1, v2, v3}, Lcom/ensighten/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    add-long/2addr v2, v4

    long-to-int v1, v2

    .line 1169
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1177
    :cond_2
    int-to-long v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public final a(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 10

    .prologue
    .line 1255
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    .line 1256
    :goto_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v0

    .line 1261
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 1262
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1263
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1264
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    .line 1267
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const-string v9, "shadow$"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1268
    const-string v9, "name"

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1269
    const-string/jumbo v7, "type"

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/ensighten/k;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1270
    const-string v7, "modifier"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1273
    const-string/jumbo v7, "value"

    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1277
    :goto_3
    :try_start_2
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1261
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1255
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1280
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    if-nez v0, :cond_5

    .line 1285
    :cond_4
    :goto_4
    return-object v2

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1283
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_4

    :catch_1
    move-exception v5

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 284
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 285
    const/4 p6, 0x0

    .line 326
    :cond_0
    :goto_0
    return-object p6

    .line 286
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v0

    .line 1465
    iget-object v0, v0, Lcom/ensighten/N;->c:Landroid/content/res/Configuration;

    .line 287
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_6

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    :goto_1
    iput v0, p0, Lcom/ensighten/k;->p:I

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/k;->r:Z

    .line 289
    iput-object p5, p0, Lcom/ensighten/k;->q:Ljava/lang/String;

    .line 290
    const-wide/16 v0, 0x0

    .line 291
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 295
    :cond_2
    if-eqz p2, :cond_3

    .line 296
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p2, p6, v2, v3}, Lcom/ensighten/k;->a(Landroid/view/ViewGroup;Lorg/json/JSONObject;ZLandroid/widget/AdapterView;)V

    .line 297
    :cond_3
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 299
    const-string v2, "\tThe view group dump took %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Lcom/ensighten/Utils;->durationToString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    .line 302
    :cond_4
    if-eqz p3, :cond_0

    .line 1950
    if-nez p3, :cond_7

    .line 1951
    const/4 v0, 0x0

    .line 305
    :goto_2
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, p6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    .line 306
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "dump"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 307
    const-string v1, "controller"

    invoke-virtual {v5, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v1, "event"

    invoke-virtual {v5, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-wide/16 v2, 0x0

    .line 311
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v6, v2

    .line 314
    :goto_3
    const-string v1, "%s_jpg.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    const-string v3, "image/jpeg"

    const-string v4, "screenshot"

    invoke-static/range {v0 .. v5}, Lcom/ensighten/k;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 315
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 317
    const-string v2, "\tEncoding took %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Lcom/ensighten/Utils;->durationToString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object p6, v5

    .line 323
    goto/16 :goto_0

    .line 287
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto/16 :goto_1

    .line 1953
    :cond_7
    const-wide/16 v0, 0x0

    .line 1954
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1957
    :cond_8
    const/16 v3, 0x107

    .line 1958
    const/16 v2, 0x1d4

    .line 1959
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_9

    .line 1960
    const/16 v3, 0x1d4

    .line 1961
    const/16 v2, 0x107

    .line 1964
    :cond_9
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1965
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1966
    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 1967
    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    .line 1968
    invoke-virtual {v5, v3, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1969
    invoke-virtual {p3, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1970
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 1972
    const-string v2, "\tThe drawing cache retrieval took %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Lcom/ensighten/Utils;->durationToString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    :cond_a
    move-object v0, v4

    .line 1974
    goto/16 :goto_2

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_b
    move-wide v6, v2

    goto/16 :goto_3
.end method

.method public final a(Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 402
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ensighten/k;->a(Landroid/view/View;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 406
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 407
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 408
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 409
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 410
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3}, Lcom/ensighten/k;->a(Landroid/view/ViewGroup;Lorg/json/JSONObject;)V

    .line 414
    :goto_2
    const-string/jumbo v0, "views"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 406
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 412
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/ensighten/k;->a(Landroid/view/View;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 416
    :catch_0
    move-exception v0

    .line 417
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_0
.end method
