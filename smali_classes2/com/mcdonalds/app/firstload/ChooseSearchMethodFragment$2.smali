.class Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;
.super Ljava/lang/Object;
.source "ChooseSearchMethodFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const-string v2, "onClick"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Choose closest"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->access$000(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;)V

    .line 111
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 95
    .local v0, "a":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 96
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    const v2, 0x7f090626

    new-instance v3, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2$1;-><init>(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;)V

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->requestPermission(Ljava/lang/String;IILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->access$100(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;)V

    goto :goto_0
.end method
