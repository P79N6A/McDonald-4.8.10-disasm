.class Lcom/amap/api/location/a$a;
.super Landroid/os/Handler;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/location/a;


# direct methods
.method public constructor <init>(Lcom/amap/api/location/a;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    .line 266
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 268
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/location/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    .line 262
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 263
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 264
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    .line 274
    if-nez p1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_9

    .line 278
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    iget-object v0, v0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_9

    .line 280
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    invoke-static {v1, v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    .line 281
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v1}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    iget-object v0, v0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/i;

    .line 291
    iget-object v1, v0, Lcom/amap/api/location/i;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v1, :cond_5

    .line 292
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/location/AMapLocation;

    .line 293
    iget-object v3, v0, Lcom/amap/api/location/i;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 294
    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-nez v3, :cond_3

    .line 299
    :cond_4
    :try_start_3
    iget-object v3, v0, Lcom/amap/api/location/i;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-interface {v3, v1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 308
    :cond_5
    :goto_3
    :try_start_4
    iget-object v1, v0, Lcom/amap/api/location/i;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v4, v0, Lcom/amap/api/location/i;->a:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v1}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 309
    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v1}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 331
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 284
    :catch_1
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 313
    :cond_6
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 314
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 315
    iget-object v2, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/i;

    iget-object v0, v0, Lcom/amap/api/location/i;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v2, v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V

    .line 314
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 317
    :cond_7
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 320
    :cond_8
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 321
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->c(Lcom/amap/api/location/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v1}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/location/core/d;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V

    .line 325
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 326
    invoke-static {}, Lcom/amap/api/location/core/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "0"

    invoke-static {v0}, Lcom/amap/api/location/core/a;->c(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->d(Lcom/amap/api/location/a;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 301
    :catch_2
    move-exception v1

    goto/16 :goto_3
.end method
