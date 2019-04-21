.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderBarCodeView;
.super Ljava/lang/Object;
.source "MWOrderBarCodeView.java"


# instance fields
.field public barCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BarCode"
    .end annotation
.end field

.field public orderViewResult:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderView"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
