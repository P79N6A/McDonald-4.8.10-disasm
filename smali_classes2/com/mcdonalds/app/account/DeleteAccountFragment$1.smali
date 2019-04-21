.class Lcom/mcdonalds/app/account/DeleteAccountFragment$1;
.super Ljava/lang/Object;
.source "DeleteAccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/DeleteAccountFragment;->deleteAccount()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$1;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$1;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$002(Lcom/mcdonalds/app/account/DeleteAccountFragment;Z)Z

    .line 121
    iget-object v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$1;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$100(Lcom/mcdonalds/app/account/DeleteAccountFragment;Z)V

    .line 124
    iget-object v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$1;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0901c3

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 126
    iget-object v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$1;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Account Delete"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    const-string v1, "no reason supplied"

    iget-object v2, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment$1;->this$0:Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->access$200(Lcom/mcdonalds/app/account/DeleteAccountFragment;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->deregister(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 129
    return-void
.end method
