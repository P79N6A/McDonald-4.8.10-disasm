.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$26;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onOfferItemClicked(Lcom/mcdonalds/sdk/modules/models/Offer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

.field final synthetic val$offer:Lcom/mcdonalds/sdk/modules/models/Offer;

.field final synthetic val$selection:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$26;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$26;->val$offer:Lcom/mcdonalds/sdk/modules/models/Offer;

    iput-object p3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$26;->val$selection:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1518
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$26;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$26;->val$offer:Lcom/mcdonalds/sdk/modules/models/Offer;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$26;->val$selection:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$2200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)V

    .line 1519
    return-void
.end method
