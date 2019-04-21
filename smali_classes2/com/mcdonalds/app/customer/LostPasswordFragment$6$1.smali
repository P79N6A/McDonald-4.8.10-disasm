.class Lcom/mcdonalds/app/customer/LostPasswordFragment$6$1;
.super Ljava/lang/Object;
.source "LostPasswordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/LostPasswordFragment$6;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/customer/LostPasswordFragment$6;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/LostPasswordFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/customer/LostPasswordFragment$6;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$6$1;->this$1:Lcom/mcdonalds/app/customer/LostPasswordFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    const-string v0, "onDismiss"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$6$1;->this$1:Lcom/mcdonalds/app/customer/LostPasswordFragment$6;

    iget-object v0, v0, Lcom/mcdonalds/app/customer/LostPasswordFragment$6;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    const-class v1, Lcom/mcdonalds/app/MainActivity;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->startActivity(Ljava/lang/Class;)V

    .line 203
    return-void
.end method
