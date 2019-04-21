.class Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$12;
.super Ljava/lang/Object;
.source "LiteSignUpFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/ValidationListener$Callback;


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
    .line 681
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFieldValidationStateChanged(Z)V
    .locals 4
    .param p1, "isValidated"    # Z

    .prologue
    const/4 v3, 0x0

    const-string v0, "onFieldValidationStateChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->access$500(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 686
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$12;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->access$000(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    .line 687
    return-void
.end method
