.class Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$4;
.super Ljava/lang/Object;
.source "StoreLocatorContainerFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->checkLocationPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$4;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(ILjava/lang/String;I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantResult"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "onRequestPermissionsResult"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$4;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->access$400(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$4;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->access$300(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    move-result-object v3

    if-nez p3, :cond_2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->start(Z)V

    .line 721
    :cond_0
    if-nez p3, :cond_1

    .line 723
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$4;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 724
    .local v0, "manager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$4;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v3, 0x7f090378

    .line 726
    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v3, 0x7f0904fe

    .line 727
    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v3, 0x7f0905d4

    new-instance v4, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$4$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$4$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$4;)V

    .line 728
    invoke-virtual {v1, v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 735
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 736
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 737
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 742
    .end local v0    # "manager":Landroid/location/LocationManager;
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 719
    goto :goto_0
.end method
