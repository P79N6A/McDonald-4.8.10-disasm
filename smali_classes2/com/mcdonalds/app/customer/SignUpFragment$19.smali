.class Lcom/mcdonalds/app/customer/SignUpFragment$19;
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
    .line 1473
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$19;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1477
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment$19;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1478
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1479
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment$19;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1480
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1506
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment$19;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$3000(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    .line 1508
    return-void
.end method
