.class Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$2;
.super Ljava/lang/Object;
.source "LiteSmsVerificationFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/ValidationListener$Callback;


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
    .line 134
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFieldValidationStateChanged(Z)V
    .locals 4
    .param p1, "isValidated"    # Z

    .prologue
    const-string v0, "onFieldValidationStateChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;->access$000(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    return-void
.end method
