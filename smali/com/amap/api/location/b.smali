.class public Lcom/amap/api/location/b;
.super Ljava/lang/Object;
.source "AMapWeather.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/location/b$a;

.field b:Lcom/amap/api/location/AMapLocalWeatherListener;

.field c:Lcom/amap/api/location/a;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/AMapLocalWeatherListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:I

.field private h:Lcom/amap/api/location/AMapLocalWeatherListener;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/location/a;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/b;->i:Z

    .line 45
    iput-object p2, p0, Lcom/amap/api/location/b;->f:Landroid/content/Context;

    .line 46
    iput-object p1, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    .line 47
    new-instance v0, Lcom/amap/api/location/b$a;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/location/b$a;-><init>(Lcom/amap/api/location/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherLive;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v1, Lcom/amap/api/location/AMapLocalWeatherLive;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocalWeatherLive;-><init>()V

    .line 264
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 271
    const-string v2, "lives"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 273
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 274
    const-string/jumbo v2, "weather"

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    const-string v3, "temperature"

    invoke-virtual {p0, v0, v3}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    const-string/jumbo v4, "winddirection"

    invoke-virtual {p0, v0, v4}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 277
    const-string/jumbo v5, "windpower"

    invoke-virtual {p0, v0, v5}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 278
    const-string v6, "humidity"

    invoke-virtual {p0, v0, v6}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 279
    const-string v7, "reporttime"

    invoke-virtual {p0, v0, v7}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocalWeatherLive;->a(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->f(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1, v6}, Lcom/amap/api/location/AMapLocalWeatherLive;->e(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->b(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1, v4}, Lcom/amap/api/location/AMapLocalWeatherLive;->c(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, v5}, Lcom/amap/api/location/AMapLocalWeatherLive;->d(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCity(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCityCode(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->setProvince(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    :cond_0
    :goto_1
    return-object v1

    .line 265
    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->a(Lcom/amap/api/location/core/AMapLocException;)V

    goto :goto_0

    .line 290
    :catch_1
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string v0, "http://restapi.amap.com/v3/weather/weatherInfo?"

    return-object v0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    const-string v1, "output=json&ec=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&extensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/location/core/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherForecast;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 300
    new-instance v4, Lcom/amap/api/location/AMapLocalWeatherForecast;

    invoke-direct {v4}, Lcom/amap/api/location/AMapLocalWeatherForecast;-><init>()V

    .line 302
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 308
    const-string v3, "forecasts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 309
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 310
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 311
    const-string v3, "reporttime"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v4, v3}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Ljava/lang/String;)V

    .line 313
    const-string v3, "casts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 314
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 315
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 316
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 317
    new-instance v7, Lcom/amap/api/location/AMapLocalDayWeatherForecast;

    invoke-direct {v7}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;-><init>()V

    .line 318
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 319
    const-string v8, "date"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 320
    const-string/jumbo v9, "week"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 321
    const-string v10, "dayweather"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    const-string v11, "nightweather"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 323
    const-string v12, "daytemp"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 324
    const-string v13, "nighttemp"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 325
    const-string v14, "daywind"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 326
    const-string v15, "nightwind"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 327
    const-string v16, "daypower"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 328
    const-string v17, "nightpower"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {v7, v8}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->a(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v7, v9}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->b(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v7, v10}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->c(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v7, v11}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->d(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v7, v12}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->e(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v7, v13}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->f(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v7, v14}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->g(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v7, v15}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->h(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->i(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->j(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->setCity(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->setCityCode(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->setProvince(Ljava/lang/String;)V

    .line 342
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    .line 303
    :catch_0
    move-exception v2

    .line 304
    invoke-virtual {v4, v2}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 305
    invoke-virtual {v2}, Lcom/amap/api/location/core/AMapLocException;->printStackTrace()V

    goto/16 :goto_0

    .line 344
    :cond_0
    invoke-virtual {v4, v6}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Ljava/util/List;)V

    .line 347
    :cond_1
    return-object v4
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 352
    if-nez p1, :cond_1

    .line 353
    const-string v0, ""

    .line 359
    :cond_0
    :goto_0
    return-object v0

    .line 355
    :cond_1
    const-string v0, ""

    .line 356
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(ILcom/amap/api/location/AMapLocalWeatherListener;Lcom/amap/api/location/AMapLocation;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 57
    :try_start_0
    iput p1, p0, Lcom/amap/api/location/b;->g:I

    .line 58
    iput-object p2, p0, Lcom/amap/api/location/b;->h:Lcom/amap/api/location/AMapLocalWeatherListener;

    .line 59
    if-nez p3, :cond_4

    .line 60
    iget-object v0, p0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    iget v1, p0, Lcom/amap/api/location/b;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/location/b;->h:Lcom/amap/api/location/AMapLocalWeatherListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/location/b;->i:Z

    if-eqz v0, :cond_3

    .line 85
    :cond_2
    :goto_0
    return-void

    .line 69
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/b;->i:Z

    .line 70
    iget-object v1, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    const-wide/16 v2, -0x1

    const/high16 v4, 0x41200000    # 10.0f

    const-string v6, "lbs"

    const/4 v7, 0x1

    move-object v5, p0

    invoke-virtual/range {v1 .. v7}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 72
    :cond_4
    if-ne p1, v0, :cond_5

    .line 73
    :try_start_1
    const-string v0, "base"

    invoke-virtual {p0, p3, v0, p2}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/amap/api/location/AMapLocalWeatherListener;)V

    .line 75
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 76
    const-string v0, "all"

    invoke-virtual {p0, p3, v0, p2}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/amap/api/location/AMapLocalWeatherListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/amap/api/location/AMapLocalWeatherListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    iput-object p3, p0, Lcom/amap/api/location/b;->b:Lcom/amap/api/location/AMapLocalWeatherListener;

    .line 90
    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)[B

    move-result-object v2

    .line 94
    invoke-direct {p0}, Lcom/amap/api/location/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 95
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    invoke-direct {v1}, Lcom/amap/api/location/core/AMapLocException;-><init>()V

    .line 96
    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-static {}, Lcom/aps/n;->a()Lcom/aps/n;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/location/b;->f:Landroid/content/Context;

    const-string v6, "sea"

    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/aps/n;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :goto_1
    const-string v2, "base"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    if-eqz v0, :cond_2

    .line 109
    invoke-direct {p0, v0, p1}, Lcom/amap/api/location/b;->a(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherLive;

    move-result-object v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 114
    :goto_2
    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocalWeatherLive;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 115
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCity(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCityCode(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->setProvince(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 119
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 120
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v1, v3}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z

    .line 124
    :goto_3
    const-string v1, "all"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    if-eqz v0, :cond_3

    .line 127
    invoke-direct {p0, v0, p1}, Lcom/amap/api/location/b;->b(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherForecast;

    move-result-object v0

    .line 132
    :goto_4
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 133
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 134
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 135
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 111
    :cond_2
    new-instance v1, Lcom/amap/api/location/AMapLocalWeatherLive;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocalWeatherLive;-><init>()V

    .line 112
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string v3, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :cond_3
    new-instance v0, Lcom/amap/api/location/AMapLocalWeatherForecast;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocalWeatherForecast;-><init>()V

    .line 130
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v2, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 99
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_3
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3

    .prologue
    .line 389
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V

    .line 391
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 392
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 393
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 394
    iget-object v1, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z

    .line 403
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/b;->i:Z

    .line 410
    :goto_1
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V

    .line 397
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 398
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "\u5b9a\u4f4d\u5931\u8d25\u65e0\u6cd5\u83b7\u53d6\u57ce\u5e02\u4fe1\u606f"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    .line 399
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 400
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    iget-object v1, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method
