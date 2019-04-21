.class Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment$2;
.super Ljava/lang/Object;
.source "LiteSmsVerificationEnterCodeFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/ValidationListener$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;

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

    .line 170
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;->access$000(Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;)V

    .line 171
    return-void
.end method
