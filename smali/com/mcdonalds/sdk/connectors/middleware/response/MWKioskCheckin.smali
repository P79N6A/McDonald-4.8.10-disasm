.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckin;
.super Ljava/lang/Object;
.source "MWKioskCheckin.java"


# instance fields
.field private mBarcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Barcode"
    .end annotation
.end field

.field private mRandomCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RandomCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckin;->mBarcode:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckin;->mRandomCode:Ljava/lang/String;

    return-object v0
.end method
