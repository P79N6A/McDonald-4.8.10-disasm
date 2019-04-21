.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponseData;
.super Ljava/lang/Object;
.source "MWErrorResponseData.java"


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
.field public backEndResponse:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BackendResponse"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponseData;, "Lcom/mcdonalds/sdk/connectors/middleware/model/MWErrorResponseData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
