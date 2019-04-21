.class public Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;
.super Ljava/lang/Object;
.source "DCSResponse.java"


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
.field private details:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private statusCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusCode"
    .end annotation
.end field

.field public statusDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusDescription"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetails()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;->details:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse<TT;>;"
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;->statusCode:I

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;->statusDescription:Ljava/lang/String;

    return-object v0
.end method
