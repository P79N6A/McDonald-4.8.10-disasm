.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponse;
.super Ljava/lang/Object;
.source "MWErrorResponse.java"


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
.field public data:Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponseData",
            "<TT;>;"
        }
    .end annotation
.end field

.field public ecpResultCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ResultCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
