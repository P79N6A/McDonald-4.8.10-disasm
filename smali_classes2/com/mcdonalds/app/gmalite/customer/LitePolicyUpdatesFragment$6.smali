.class Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$6;
.super Ljava/lang/Object;
.source "LitePolicyUpdatesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$6;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$6;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Decline"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$6;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090495

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 209
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$6;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->access$300(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$6$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$6$1;-><init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$6;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->logout(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 217
    return-void
.end method
