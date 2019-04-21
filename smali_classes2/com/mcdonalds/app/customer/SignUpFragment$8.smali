.class Lcom/mcdonalds/app/customer/SignUpFragment$8;
.super Ljava/lang/Object;
.source "SignUpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/SignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$8;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$8;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Privacy Policy"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v1, "privacy"

    invoke-static {v1}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "privacyURL":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 869
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$8;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$2100(Lcom/mcdonalds/app/customer/SignUpFragment;Ljava/lang/String;)V

    .line 875
    :goto_0
    return-void

    .line 873
    :cond_0
    const-string v1, "No Privacy Policy URL Defined"

    invoke-static {v1}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method
