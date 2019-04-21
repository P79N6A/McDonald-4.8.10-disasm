.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
.super Ljava/lang/Object;
.source "MWJSONResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResultCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ResultCode"
    .end annotation
.end field

.field private mStatusCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse<TT;>;"
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->mResultCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->mResultCode:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->mStatusCode:I

    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->mData:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 30
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse<TT;>;"
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->mResultCode:I

    .line 31
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 34
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse<TT;>;"
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->mStatusCode:I

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWJSONResponse{mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
