.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWBarCodeData;
.super Ljava/lang/Object;
.source "MWBarCodeData.java"


# instance fields
.field public barCodeContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BarCodeContent"
    .end annotation
.end field

.field public qrCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "QrCode"
    .end annotation
.end field

.field public randomCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RandomCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
