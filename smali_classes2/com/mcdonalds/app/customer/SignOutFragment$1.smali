.class Lcom/mcdonalds/app/customer/SignOutFragment$1;
.super Ljava/lang/Object;
.source "SignOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/SignOutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignOutFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignOutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignOutFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignOutFragment$1;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const-string v0, "onCancel"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignOutFragment$1;->this$0:Lcom/mcdonalds/app/customer/SignOutFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignOutFragment;->access$000(Lcom/mcdonalds/app/customer/SignOutFragment;)V

    .line 72
    return-void
.end method
