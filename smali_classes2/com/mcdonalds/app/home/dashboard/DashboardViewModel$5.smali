.class Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$5;
.super Ljava/lang/Object;
.source "DashboardViewModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Offer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$5;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/sdk/modules/models/Offer;)I
    .locals 5
    .param p1, "offer1"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "offer2"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    const-string v2, "compare"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    :cond_0
    :goto_0
    return v0

    .line 482
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 483
    goto :goto_0

    .line 484
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCardType()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCardType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCardType()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCardType()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 487
    goto :goto_0

    .line 490
    :cond_4
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.offers.sortOffersByDescendingLocalValidFrom"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 491
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0

    .line 493
    :cond_5
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const-string v0, "compare"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Offer;

    check-cast p2, Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$5;->compare(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/sdk/modules/models/Offer;)I

    move-result v0

    return v0
.end method
