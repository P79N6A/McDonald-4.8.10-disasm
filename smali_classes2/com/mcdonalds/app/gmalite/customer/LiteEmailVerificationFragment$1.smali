.class Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$1;
.super Ljava/lang/Object;
.source "LiteEmailVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Customer Support"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->getCustomerSupportUrl()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "link":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "attributes":Landroid/os/Bundle;
    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "analytics_title"

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    const v4, 0x7f090874

    .line 120
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const-class v3, Lcom/mcdonalds/app/web/WebActivity;

    const-string v4, "web"

    invoke-virtual {v2, v3, v4, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    .end local v0    # "attributes":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v2, "No Customer Support URL Defined"

    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method