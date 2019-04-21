.class public Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnectorUtils;
.super Ljava/lang/Object;
.source "MiddlewareConnectorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionFromResults(Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;Lcom/mcdonalds/sdk/AsyncException;)Lcom/mcdonalds/sdk/AsyncException;
    .locals 3
    .param p0, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 32
    .local v0, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_1

    .line 33
    move-object v0, p1

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getResultCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getResultCode()I

    move-result v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_2
    if-nez p0, :cond_0

    .line 39
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    goto :goto_0
.end method

.method public static isUsingECP3()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "connectors.Middleware.eCPVersion"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "ECPVersionConfig":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, "version":I
    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    const/4 v2, 0x1

    .line 54
    .end local v1    # "version":I
    :cond_0
    return v2
.end method

.method public static isUsingECP311()Z
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "connectors.Middleware.eCPVersion"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "ECPVersionConfig":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3.1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
