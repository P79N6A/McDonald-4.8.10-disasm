.class Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment$1;
.super Ljava/lang/Object;
.source "LargeOrderCallAlertFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->onPositiveButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment$1;->this$0:Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(ILjava/lang/String;I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantResult"    # I

    .prologue
    const-string v0, "onRequestPermissionsResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment$1;->this$0:Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->access$000(Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;)V

    goto :goto_0
.end method
