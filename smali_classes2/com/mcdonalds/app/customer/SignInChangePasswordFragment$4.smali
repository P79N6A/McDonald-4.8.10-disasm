.class Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$4;
.super Ljava/lang/Object;
.source "SignInChangePasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$4;->this$0:Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

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

    .line 254
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment$4;->this$0:Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;->access$600(Lcom/mcdonalds/app/customer/SignInChangePasswordFragment;)V

    .line 255
    return-void
.end method
