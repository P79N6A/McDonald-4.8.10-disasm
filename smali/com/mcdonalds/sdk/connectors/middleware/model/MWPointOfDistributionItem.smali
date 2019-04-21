.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;
.super Ljava/lang/Object;
.source "MWPointOfDistributionItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CURBSIDE:I = 0x4

.field public static final DRIVETHRU:I = 0x2

.field public static final KIOSK:I = 0x8

.field public static final LOBBY:I


# instance fields
.field public digitalServices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DigitalServices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;",
            ">;"
        }
    .end annotation
.end field

.field public locationId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LocationID"
    .end annotation
.end field

.field public pod:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "POD"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
