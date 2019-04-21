.class Lcom/kochava/base/c$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/base/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/installreferrer/api/InstallReferrerClient;

.field final synthetic b:Lcom/kochava/base/c$a;


# direct methods
.method constructor <init>(Lcom/kochava/base/c$a;Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iput-object p2, p0, Lcom/kochava/base/c$a$1;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "onInstallRefe"

    const/4 v0, 0x5

    :try_start_0
    const-string v1, "IRH"

    const-string v2, "onInstallRefe"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Disconnected"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "status"

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v2, v2, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kochava/base/c$a$1;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v0, v0, Lcom/kochava/base/c$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    const-string v2, "IRH"

    const-string v3, "onInstallRefe"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    invoke-static {v0}, Lcom/kochava/base/c$a;->a(Lcom/kochava/base/c$a;)V

    goto :goto_0
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v0, "onInstallRefe"

    const/4 v0, 0x5

    :try_start_0
    const-string v1, "IRH"

    const-string v2, "onInstallRefe"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Setup Finished"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response Code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/kochava/base/c$a$1;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v3, v3, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v1, "referrer"

    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v3, v3, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v1, "install_begin_time"

    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v3, v3, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v1, "referrer_click_time"

    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v2, v2, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v1, v0, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kochava/base/c$a$1;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v0, v0, Lcom/kochava/base/c$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_1
    if-ne p1, v7, :cond_2

    :try_start_1
    const-string v0, "status"

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v2, v2, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    const-string v2, "IRH"

    const-string v3, "onInstallRefe"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    invoke-static {v0}, Lcom/kochava/base/c$a;->a(Lcom/kochava/base/c$a;)V

    goto :goto_1

    :cond_2
    if-ne p1, v9, :cond_3

    :try_start_2
    const-string v0, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v2, v2, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    if-ne p1, v10, :cond_0

    const-string v0, "status"

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v2, v2, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
