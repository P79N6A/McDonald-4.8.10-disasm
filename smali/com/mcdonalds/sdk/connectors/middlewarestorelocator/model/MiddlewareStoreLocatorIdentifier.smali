.class public Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocatorIdentifier.java"


# instance fields
.field public GBLNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gblnumber"
    .end annotation
.end field

.field public storeIdentifier:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storeIdentifier"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method