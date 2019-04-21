.class Lcom/mcdonalds/app/account/ChangeEmailFragment$3$1;
.super Ljava/lang/Object;
.source "ChangeEmailFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
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
.field final synthetic this$1:Lcom/mcdonalds/app/account/ChangeEmailFragment$3;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangeEmailFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/account/ChangeEmailFragment$3;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3$1;->this$1:Lcom/mcdonalds/app/account/ChangeEmailFragment$3;

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

    .line 291
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ChangeEmailFragment$3$1;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3$1;->this$1:Lcom/mcdonalds/app/account/ChangeEmailFragment$3;

    iget-object v2, v2, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeEmailFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 314
    :goto_0
    return-void

    .line 298
    :cond_0
    if-eqz p3, :cond_1

    .line 299
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3$1;->this$1:Lcom/mcdonalds/app/account/ChangeEmailFragment$3;

    iget-object v2, v2, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeEmailFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f1100d3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    .line 304
    .local v1, "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    invoke-virtual {v1, v5}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setLoggedInDrawerState(Z)V

    .line 306
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "Signed-out"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    .line 309
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 310
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 311
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "show_email_changed_message"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3$1;->this$1:Lcom/mcdonalds/app/account/ChangeEmailFragment$3;

    iget-object v2, v2, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeEmailFragment;

    const-class v3, Lcom/mcdonalds/app/MainActivity;

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method
