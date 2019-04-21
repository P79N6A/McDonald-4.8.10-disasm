.class Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$5;
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
    .line 249
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

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

    .line 252
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resend Activation Email"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "Clicked Resend Email from Email Verification Activity"

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->access$300(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V

    .line 256
    return-void
.end method
