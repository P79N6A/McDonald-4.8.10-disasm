.class Lcom/amap/api/location/b$a;
.super Landroid/os/Handler;
.source "AMapWeather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/location/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amap/api/location/b;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/location/b$a;->a:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 154
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 155
    iget-object v0, p0, Lcom/amap/api/location/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/b;

    .line 156
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v1, v0, Lcom/amap/api/location/b;->b:Lcom/amap/api/location/AMapLocalWeatherListener;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, v0, Lcom/amap/api/location/b;->b:Lcom/amap/api/location/AMapLocalWeatherListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocalWeatherLive;

    invoke-interface {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherListener;->onWeatherLiveSearched(Lcom/amap/api/location/AMapLocalWeatherLive;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 163
    :pswitch_1
    :try_start_1
    iget-object v1, v0, Lcom/amap/api/location/b;->b:Lcom/amap/api/location/AMapLocalWeatherListener;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, v0, Lcom/amap/api/location/b;->b:Lcom/amap/api/location/AMapLocalWeatherListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocalWeatherForecast;

    invoke-interface {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherListener;->onWeatherForecaseSearched(Lcom/amap/api/location/AMapLocalWeatherForecast;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 169
    :pswitch_2
    :try_start_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/location/AMapLocation;

    .line 170
    new-instance v2, Lcom/amap/api/location/b$a$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/amap/api/location/b$a$1;-><init>(Lcom/amap/api/location/b$a;Lcom/amap/api/location/b;Lcom/amap/api/location/AMapLocation;)V

    invoke-virtual {v2}, Lcom/amap/api/location/b$a$1;->start()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 191
    :catch_1
    move-exception v0

    .line 195
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 200
    :pswitch_3
    :try_start_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/location/core/AMapLocException;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 202
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    :try_start_5
    iget-object v2, v0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    move-result v2

    if-ge v3, v2, :cond_3

    .line 204
    :try_start_6
    iget-object v2, v0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 205
    new-instance v4, Lcom/amap/api/location/AMapLocalWeatherLive;

    invoke-direct {v4}, Lcom/amap/api/location/AMapLocalWeatherLive;-><init>()V

    .line 206
    invoke-virtual {v4, v1}, Lcom/amap/api/location/AMapLocalWeatherLive;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 207
    iget-object v2, v0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/location/AMapLocalWeatherListener;

    invoke-interface {v2, v4}, Lcom/amap/api/location/AMapLocalWeatherListener;->onWeatherLiveSearched(Lcom/amap/api/location/AMapLocalWeatherLive;)V

    .line 209
    :cond_1
    iget-object v2, v0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 210
    new-instance v4, Lcom/amap/api/location/AMapLocalWeatherForecast;

    invoke-direct {v4}, Lcom/amap/api/location/AMapLocalWeatherForecast;-><init>()V

    .line 211
    invoke-virtual {v4, v1}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 212
    iget-object v2, v0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/location/AMapLocalWeatherListener;

    invoke-interface {v2, v4}, Lcom/amap/api/location/AMapLocalWeatherListener;->onWeatherForecaseSearched(Lcom/amap/api/location/AMapLocalWeatherForecast;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 202
    :cond_2
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 221
    :cond_3
    :try_start_7
    iget-object v1, v0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 222
    iget-object v0, v0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 223
    :catch_2
    move-exception v0

    .line 227
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 229
    :catch_3
    move-exception v0

    .line 233
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 214
    :catch_4
    move-exception v2

    goto :goto_2

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
