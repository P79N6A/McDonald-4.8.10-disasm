.class public Lcom/mcdonalds/sdk/AsyncException;
.super Ljava/lang/RuntimeException;
.source "AsyncException.java"


# static fields
.field public static final DEFAULT_ERROR_CODE:I = 0x0

.field public static final NOTIFICATION_API_INVALID_ERROR:Ljava/lang/String; = "NOTIFICATION_API_INVALID_ERROR"

.field public static final NOTIFICATION_ASYNC_ERROR:Ljava/lang/String; = "NOTIFICATION_ASYNC_ERROR"


# instance fields
.field private ecpResultCode:Ljava/lang/Integer;

.field protected mErrorCode:I

.field private mRequestUrl:Ljava/lang/String;

.field protected mShortDescription:Ljava/lang/String;

.field private serverCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "ecpResultCode"    # Ljava/lang/Integer;
    .param p2, "serverCode"    # Ljava/lang/Integer;
    .param p3, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/mcdonalds/sdk/AsyncException;->ecpResultCode:Ljava/lang/Integer;

    .line 42
    iput-object p2, p0, Lcom/mcdonalds/sdk/AsyncException;->serverCode:Ljava/lang/Integer;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public static report(Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p0, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 83
    if-nez p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "localizedMessage":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "log.logsToConsole"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    const-class v3, Lcom/mcdonalds/sdk/AsyncException;

    .line 91
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "<no localized message>"

    .line 90
    :goto_1
    invoke-static {v4, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "EXTRA_MESSAGE"

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, ""

    .line 98
    .end local v1    # "localizedMessage":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v2

    .line 104
    .local v2, "nc":Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;
    if-eqz v2, :cond_0

    .line 105
    const-string v3, "NOTIFICATION_ASYNC_ERROR"

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->postNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "nc":Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;
    .restart local v1    # "localizedMessage":Ljava/lang/String;
    :cond_4
    move-object v3, v1

    .line 92
    goto :goto_1
.end method

.method public static report(Ljava/lang/String;)V
    .locals 1
    .param p0, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 72
    :cond_0
    return-void
.end method

.method public static reportAPIInvalidError(Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p0, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 110
    if-nez p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "localizedMessage":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "log.logsToConsole"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    const-class v3, Lcom/mcdonalds/sdk/AsyncException;

    .line 118
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "<no localized message>"

    .line 117
    :goto_1
    invoke-static {v4, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "EXTRA_MESSAGE"

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, ""

    .line 126
    .end local v1    # "localizedMessage":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v2

    .line 132
    .local v2, "nc":Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;
    if-eqz v2, :cond_0

    .line 133
    const-string v3, "NOTIFICATION_API_INVALID_ERROR"

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->postNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "nc":Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;
    .restart local v1    # "localizedMessage":Ljava/lang/String;
    :cond_4
    move-object v3, v1

    .line 119
    goto :goto_1
.end method


# virtual methods
.method public getEcpResultCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mcdonalds/sdk/AsyncException;->ecpResultCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/mcdonalds/sdk/AsyncException;->mErrorCode:I

    return v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mcdonalds/sdk/AsyncException;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getServerCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mcdonalds/sdk/AsyncException;->serverCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mcdonalds/sdk/AsyncException;->mShortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setEcpResultCode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "ecpResultCode"    # Ljava/lang/Integer;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mcdonalds/sdk/AsyncException;->ecpResultCode:Ljava/lang/Integer;

    .line 147
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestUrl"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mcdonalds/sdk/AsyncException;->mRequestUrl:Ljava/lang/String;

    .line 155
    return-void
.end method
