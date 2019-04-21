.class public Lcom/mcdonalds/sdk/connectors/middleware/MWException;
.super Lcom/mcdonalds/sdk/AsyncException;
.source "MWException.java"


# static fields
.field public static final INVALID_API_KEY_ERROR_CODE:I = 0x3e9


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "shortDescription"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 19
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->mErrorCode:I

    .line 20
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->mShortDescription:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    .locals 5
    .param p0, "errorCode"    # I

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getMessageResourceId(I)I

    move-result v2

    .line 36
    .local v2, "resourceId":I
    invoke-static {p0}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getShortDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "shortDescription":Ljava/lang/String;
    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getMessageString(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    invoke-direct {v0, p0, v3, v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v0, "exception":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    invoke-static {}, Lcom/mcdonalds/sdk/services/error/ErrorManager;->getInstance()Lcom/mcdonalds/sdk/services/error/ErrorManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/services/error/ErrorManager;->setLastError(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public static fromGeneric()Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    .locals 4

    .prologue
    .line 70
    sget v3, Lcom/mcdonalds/sdk/R$string;->error_generic:I

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getMessageString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "shortDescription":Ljava/lang/String;
    sget v3, Lcom/mcdonalds/sdk/R$string;->error_generic:I

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getMessageString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v0, "exception":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    invoke-static {}, Lcom/mcdonalds/sdk/services/error/ErrorManager;->getInstance()Lcom/mcdonalds/sdk/services/error/ErrorManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/services/error/ErrorManager;->setLastError(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 76
    return-object v0
.end method

.method public static fromResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;)Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    .locals 6
    .param p0, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "errorResourceId":I
    const/4 v0, 0x0

    .line 49
    .local v0, "errorCode":I
    if-nez p0, :cond_1

    .line 50
    sget v1, Lcom/mcdonalds/sdk/R$string;->error_generic:I

    .line 56
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 58
    const/4 v2, 0x0

    .line 66
    :goto_1
    return-object v2

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getResultCode()I

    move-result v5

    if-gez v5, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getResultCode()I

    move-result v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getMessageResourceId(I)I

    move-result v1

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getResultCode()I

    move-result v0

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getShortDescription(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "shortDescription":Ljava/lang/String;
    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getMessageString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "message":Ljava/lang/String;
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    invoke-direct {v2, v0, v4, v3}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v2, "exception":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    invoke-static {}, Lcom/mcdonalds/sdk/services/error/ErrorManager;->getInstance()Lcom/mcdonalds/sdk/services/error/ErrorManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mcdonalds/sdk/services/error/ErrorManager;->setLastError(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method

.method private static getMessageResourceId(I)I
    .locals 5
    .param p0, "errorCode"    # I

    .prologue
    .line 80
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 83
    sget v1, Lcom/mcdonalds/sdk/R$string;->error_generic:I

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    const-string v2, ""

    .line 86
    .local v2, "resourceKey":Ljava/lang/String;
    const/16 v3, 0x3e9

    if-ne p0, v3, :cond_3

    .line 87
    const-string v2, "invalid_api_key_error_message"

    .line 91
    :cond_2
    :goto_1
    invoke-static {v0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 92
    .local v1, "resourceId":I
    if-nez v1, :cond_0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcs_error_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 88
    .end local v1    # "resourceId":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ecp_error_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getMessageString(I)Ljava/lang/String;
    .locals 2
    .param p0, "resourceId"    # I

    .prologue
    .line 117
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 120
    const-string v1, ""

    .line 123
    .end local p0    # "resourceId":I
    :goto_0
    return-object v1

    .restart local p0    # "resourceId":I
    :cond_0
    if-lez p0, :cond_1

    .end local p0    # "resourceId":I
    :goto_1
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local p0    # "resourceId":I
    :cond_1
    sget p0, Lcom/mcdonalds/sdk/R$string;->error_generic:I

    goto :goto_1
.end method

.method private static getResourceId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceKey"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getShortDescription(I)Ljava/lang/String;
    .locals 5
    .param p0, "errorCode"    # I

    .prologue
    .line 104
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 107
    const-string v3, ""

    .line 113
    :goto_0
    return-object v3

    .line 110
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ecp_error_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_short_description"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "resourceKey":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "resourceId":I
    if-lez v1, :cond_1

    .end local v1    # "resourceId":I
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .restart local v1    # "resourceId":I
    :cond_1
    sget v1, Lcom/mcdonalds/sdk/R$string;->error_generic:I

    goto :goto_1
.end method
