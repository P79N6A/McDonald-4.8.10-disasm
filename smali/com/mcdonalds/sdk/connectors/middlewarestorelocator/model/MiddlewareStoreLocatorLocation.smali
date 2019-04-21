.class public Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorLocation;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocatorLocation.java"


# instance fields
.field public latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lat"
    .end annotation
.end field

.field public longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lon"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
