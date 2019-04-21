.class final Lcom/mcdonalds/sdk/utils/SDKUtils$1;
.super Ljava/lang/Object;
.source "SDKUtils.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/utils/SDKUtils;->checkForUpdates(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appBuildConfigVersionName:Ljava/lang/String;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mcdonalds/sdk/utils/SDKUtils$1;->val$appBuildConfigVersionName:Ljava/lang/String;

    iput-object p2, p0, Lcom/mcdonalds/sdk/utils/SDKUtils$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 8
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 35
    if-nez p3, :cond_3

    if-eqz p1, :cond_3

    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;->versionInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;

    if-eqz v5, :cond_3

    .line 37
    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;->versionInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;

    iget-object v2, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->minVersion:Ljava/lang/String;

    .line 38
    .local v2, "minimumVersion":Ljava/lang/String;
    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;->versionInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;

    iget-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->currentVersion:Ljava/lang/String;

    .line 42
    .local v0, "currentVersion":Ljava/lang/String;
    const-string v3, "0.0.0"

    .line 43
    .local v3, "versionNow":Ljava/lang/String;
    const-string v5, "^.*?([0-9]+(\\.[0-9]+)*).*$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 44
    .local v4, "versionPattern":Ljava/util/regex/Pattern;
    iget-object v5, p0, Lcom/mcdonalds/sdk/utils/SDKUtils$1;->val$appBuildConfigVersionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 45
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    :cond_0
    invoke-static {v3, v0}, Lcom/mcdonalds/sdk/utils/SDKUtils;->access$000(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    const-string v5, "app version is current"

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/log/MCDLog;->info(Ljava/lang/String;)V

    .line 52
    iget-object v5, p0, Lcom/mcdonalds/sdk/utils/SDKUtils$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v5, v7, p2, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 68
    .end local v0    # "currentVersion":Ljava/lang/String;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "minimumVersion":Ljava/lang/String;
    .end local v3    # "versionNow":Ljava/lang/String;
    .end local v4    # "versionPattern":Ljava/util/regex/Pattern;
    :goto_0
    return-void

    .line 54
    .restart local v0    # "currentVersion":Ljava/lang/String;
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    .restart local v2    # "minimumVersion":Ljava/lang/String;
    .restart local v3    # "versionNow":Ljava/lang/String;
    .restart local v4    # "versionPattern":Ljava/util/regex/Pattern;
    :cond_1
    invoke-static {v3, v2}, Lcom/mcdonalds/sdk/utils/SDKUtils;->access$000(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    const-string v5, "app version is not current, but at least minimum"

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/log/MCDLog;->info(Ljava/lang/String;)V

    .line 56
    iget-object v5, p0, Lcom/mcdonalds/sdk/utils/SDKUtils$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6, p2, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v5, "app version is below minimum"

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/log/MCDLog;->info(Ljava/lang/String;)V

    .line 60
    iget-object v5, p0, Lcom/mcdonalds/sdk/utils/SDKUtils$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6, p2, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 65
    .end local v0    # "currentVersion":Ljava/lang/String;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "minimumVersion":Ljava/lang/String;
    .end local v3    # "versionNow":Ljava/lang/String;
    .end local v4    # "versionPattern":Ljava/util/regex/Pattern;
    :cond_3
    const-string v5, "Not able to determine if app version is current"

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/log/MCDLog;->info(Ljava/lang/String;)V

    .line 66
    iget-object v5, p0, Lcom/mcdonalds/sdk/utils/SDKUtils$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v5, v7, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/utils/SDKUtils$1;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
