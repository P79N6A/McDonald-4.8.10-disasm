.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$27;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->commonOnOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 1550
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$27;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$27;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1553
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$27;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v1, Lcom/mcdonalds/app/offers/OfferActivity;

    const-string v2, "offer_detail"

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$27;->val$extras:Landroid/os/Bundle;

    const/16 v4, 0x56d

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1554
    return-void
.end method
