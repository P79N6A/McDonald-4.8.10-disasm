.class Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$9;
.super Ljava/lang/Object;
.source "LiteSignUpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$9;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

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

    .line 622
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$9;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Privacy Policy"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v2, "privacy"

    invoke-static {v2}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "privacyURL":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 628
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 629
    .local v0, "attributes":Landroid/os/Bundle;
    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v2, "analytics_title"

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$9;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    const v4, 0x7f09089e

    .line 632
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$9;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    const-class v3, Lcom/mcdonalds/app/web/WebActivity;

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 641
    .end local v0    # "attributes":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 639
    :cond_0
    const-string v2, "No Privacy Policy URL Defined"

    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method
