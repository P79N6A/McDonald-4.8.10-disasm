.class Lcom/mcdonalds/app/customer/ValidationResendFragment$3;
.super Ljava/lang/Object;
.source "ValidationResendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/ValidationResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/ValidationResendFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$3;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

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

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$3;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->access$200(Lcom/mcdonalds/app/customer/ValidationResendFragment;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$3;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->access$100(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$3;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->access$200(Lcom/mcdonalds/app/customer/ValidationResendFragment;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/ValidationListener;->displayError()V

    .line 214
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$3;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->access$300(Lcom/mcdonalds/app/customer/ValidationResendFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
