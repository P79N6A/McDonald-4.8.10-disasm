.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;
.super Ljava/lang/Object;
.source "MWOfferConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MWAndCondition"
.end annotation


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

.field public hourOfDayConditions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HourOfDayConditions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
