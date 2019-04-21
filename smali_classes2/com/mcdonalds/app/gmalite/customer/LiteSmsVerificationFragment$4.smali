.class Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$4;
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
    .line 170
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

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

    .line 173
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS Resend"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->resendSMSCode(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 176
    return-void
.end method
