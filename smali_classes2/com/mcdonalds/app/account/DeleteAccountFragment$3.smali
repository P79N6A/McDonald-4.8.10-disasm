.class Lcom/mcdonalds/app/account/DeleteAccountFragment$3;
.super Ljava/lang/Object;
.source "DeleteAccountFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/DeleteAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$3;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/DeleteAccountFragment$3;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    if-eqz p3, :cond_0

    .line 221
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$3;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$600(Lcom/mcdonalds/app/account/DeleteAccountFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$3;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$700(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V

    .line 240
    :goto_1
    iget-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$3;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v1, v5}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$002(Lcom/mcdonalds/app/account/DeleteAccountFragment;Z)Z

    .line 241
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$3;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1100d3

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    .line 227
    .local v0, "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setLoggedInDrawerState(Z)V

    .line 231
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Signed-out"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    goto :goto_0

    .line 237
    .end local v0    # "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$3;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v1, v6}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$802(Lcom/mcdonalds/app/account/DeleteAccountFragment;Z)Z

    goto :goto_1
.end method
