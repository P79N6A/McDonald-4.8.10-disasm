.class Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$3;
.super Ljava/lang/Object;
.source "LiteSmsVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

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

    .line 163
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "smsCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Continue"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/app/util/LoginManager;->verifySMSCode(Ljava/lang/String;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 167
    return-void
.end method
