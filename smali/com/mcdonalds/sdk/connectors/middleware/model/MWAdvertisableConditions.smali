.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;
.super Ljava/lang/Object;
.source "MWAdvertisableConditions.java"


# instance fields
.field public dayOfWeekConditions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DayOfWeekConditions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
