.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWValidateDeliveryOrderResponse;
.super Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
.source "MWValidateDeliveryOrderResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;-><init>()V

    return-void
.end method
