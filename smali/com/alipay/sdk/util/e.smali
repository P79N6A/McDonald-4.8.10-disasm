.class public Lcom/alipay/sdk/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/e$a;
    }
.end annotation


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/android/app/IAlixPay;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Lcom/alipay/sdk/util/e$a;

.field private g:Landroid/content/ServiceConnection;

.field private h:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/util/e$a;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lcom/alipay/android/app/IAlixPay;

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->d:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/alipay/sdk/util/f;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/f;-><init>(Lcom/alipay/sdk/util/e;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    .line 235
    new-instance v0, Lcom/alipay/sdk/util/g;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/g;-><init>(Lcom/alipay/sdk/util/e;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 45
    iput-object p1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/alipay/sdk/util/e;->f:Lcom/alipay/sdk/util/e$a;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/e;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/sdk/util/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-static {p2}, Lcom/alipay/sdk/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/alipay/sdk/util/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "bindService fail"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v1, "biz"

    const-string v2, "ClientBindServiceFailed"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    const-string v0, "failed"

    .line 228
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/alipay/sdk/util/e;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 170
    :try_start_2
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/sdk/data/a;->e()Lcom/alipay/sdk/data/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/data/a;->a()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :try_start_4
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/alipay/sdk/util/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v2, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-static {v2}, Lcom/alipay/sdk/util/m;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 184
    const-string v3, ""

    const-string/jumbo v4, "\u8bf4\u660e\uff1a\u5f53\u524d\u53d1\u751f\u4e86\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u670d\u52a1\u5f02\u5e38\u7684\u60c5\u51b5\u3002\u4e3a\u4e86\u5206\u6790\u54ea\u4e9b\u573a\u666f\u5c06\u5bfc\u81f4\u7ed1\u5b9a\u5931\u8d25\uff0c\u652f\u4ed8\u5b9d\u9700\u8981\u91c7\u96c6\u5f53\u524d\u8fd0\u884c\u7684 App \u540d\u79f0\u8fdb\u884c\u5b89\u5168\u5206\u6790\u3002"

    invoke-static {v3, v4}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v3, "biz"

    const-string v4, "ClientBindFailed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "failed"
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 207
    :try_start_5
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 213
    :goto_2
    :try_start_6
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 218
    :goto_3
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->f:Lcom/alipay/sdk/util/e$a;

    .line 219
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 220
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    .line 221
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    .line 222
    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 224
    iput-boolean v7, p0, Lcom/alipay/sdk/util/e;->e:Z

    goto/16 :goto_0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    :try_start_7
    const-string v3, "biz"

    const-string v4, "BindWaitTimeoutEx"

    invoke-static {v3, v4, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 208
    :catch_2
    move-exception v1

    .line 209
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 214
    :catch_3
    move-exception v1

    .line 215
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 190
    :cond_3
    :try_start_8
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->f:Lcom/alipay/sdk/util/e$a;

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->f:Lcom/alipay/sdk/util/e$a;

    invoke-interface {v0}, Lcom/alipay/sdk/util/e$a;->a()V

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/util/e;->e:Z

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 200
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    .line 207
    :try_start_9
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 213
    :goto_4
    :try_start_a
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 218
    :goto_5
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->f:Lcom/alipay/sdk/util/e$a;

    .line 219
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 220
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    .line 221
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    .line 222
    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 224
    iput-boolean v7, p0, Lcom/alipay/sdk/util/e;->e:Z

    goto/16 :goto_0

    .line 208
    :catch_4
    move-exception v1

    .line 209
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 214
    :catch_5
    move-exception v1

    .line 215
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 201
    :catch_6
    move-exception v0

    .line 203
    :try_start_b
    const-string v1, "biz"

    const-string v2, "ClientBindException"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v0

    .line 207
    :try_start_c
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 213
    :goto_6
    :try_start_d
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    .line 218
    :goto_7
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->f:Lcom/alipay/sdk/util/e$a;

    .line 219
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 220
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    .line 221
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    .line 222
    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 224
    iput-boolean v7, p0, Lcom/alipay/sdk/util/e;->e:Z

    goto/16 :goto_0

    .line 208
    :catch_7
    move-exception v1

    .line 209
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 214
    :catch_8
    move-exception v1

    .line 215
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 206
    :catchall_1
    move-exception v0

    .line 207
    :try_start_e
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    .line 213
    :goto_8
    :try_start_f
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    .line 218
    :goto_9
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->f:Lcom/alipay/sdk/util/e$a;

    .line 219
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 220
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    .line 221
    iput-object v6, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    .line 222
    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->e:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 223
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 224
    iput-boolean v7, p0, Lcom/alipay/sdk/util/e;->e:Z

    :cond_6
    throw v0

    .line 208
    :catch_9
    move-exception v1

    .line 209
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 214
    :catch_a
    move-exception v1

    .line 215
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private a(Lcom/alipay/sdk/util/m$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p1, Lcom/alipay/sdk/util/m$a;->a:Landroid/content/pm/PackageInfo;

    .line 130
    if-eqz v0, :cond_0

    .line 133
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 134
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 135
    const-string v2, "com.alipay.android.app.TransProcessPayActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "biz"

    const-string v2, "StartLaunchAppTransEx"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/sdk/util/e;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/util/e$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->f:Lcom/alipay/sdk/util/e$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    const-string v1, ""

    .line 76
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/data/a;->e()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->d()Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/alipay/sdk/data/a;->e()Lcom/alipay/sdk/data/a;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alipay/sdk/data/a;->l:Z

    .line 81
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    sget-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/alipay/sdk/util/m;->a(Landroid/content/Context;Ljava/util/List;)Lcom/alipay/sdk/util/m$a;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/m$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/m$a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    :cond_2
    const-string v0, "failed"

    .line 116
    :goto_0
    return-object v0

    .line 93
    :cond_3
    iget-object v0, v2, Lcom/alipay/sdk/util/m$a;->a:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lcom/alipay/sdk/util/m;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    const-string v0, "failed"

    goto :goto_0

    .line 98
    :cond_4
    iget-object v0, v2, Lcom/alipay/sdk/util/m$a;->a:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_5

    const-string v0, "com.eg.android.AlipayGphone"

    iget-object v3, v2, Lcom/alipay/sdk/util/m$a;->a:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    :cond_5
    invoke-static {}, Lcom/alipay/sdk/util/m;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/m$a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_6
    :try_start_2
    iget-object v0, v2, Lcom/alipay/sdk/util/m$a;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 108
    :goto_3
    const-string v2, "biz"

    const-string v3, "CheckClientSignEx"

    invoke-static {v2, v3, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 107
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public a()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    .line 233
    return-void
.end method
