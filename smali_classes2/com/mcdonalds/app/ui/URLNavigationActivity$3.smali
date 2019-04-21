.class Lcom/mcdonalds/app/ui/URLNavigationActivity$3;
.super Ljava/lang/Object;
.source "URLNavigationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/URLNavigationActivity;->onNavigationDrawerItemSelected(Lcom/mcdonalds/app/ui/models/DrawerItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field final synthetic val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field final synthetic val$drawerItem:Lcom/mcdonalds/app/ui/models/DrawerItem;

.field final synthetic val$finalExtras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/app/ui/models/DrawerItem;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;->this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iput-object p3, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;->val$drawerItem:Lcom/mcdonalds/app/ui/models/DrawerItem;

    iput-object p4, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;->val$finalExtras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 496
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->clearProducts()V

    .line 497
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 498
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 499
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "start_order"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setModuleName(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;->this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;->val$drawerItem:Lcom/mcdonalds/app/ui/models/DrawerItem;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;->val$finalExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->openSelfUrl(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 501
    return-void
.end method
