.class public Lcom/mcdonalds/sdk/connectors/cybersource/CSException;
.super Lcom/mcdonalds/sdk/AsyncException;
.source "CSException.java"


# instance fields
.field mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mcdonalds/sdk/AsyncException;-><init>()V

    .line 18
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CSException;->mErrorCode:I

    .line 19
    return-void
.end method


# virtual methods
.method public getLocalizedMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 23
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cybersource_error_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CSException;->mErrorCode:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "resourceKey":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 28
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    .end local v1    # "resourceId":I
    .end local v2    # "resourceKey":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 31
    .restart local v1    # "resourceId":I
    .restart local v2    # "resourceKey":Ljava/lang/String;
    :cond_0
    sget v3, Lcom/mcdonalds/sdk/R$string;->error_generic:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 34
    .end local v1    # "resourceId":I
    .end local v2    # "resourceKey":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method
