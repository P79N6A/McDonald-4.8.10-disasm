.class Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2$1;
.super Ljava/lang/Object;
.source "ChooseSearchMethodFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2$1;->this$1:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;

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

    .line 102
    if-nez p3, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2$1;->this$1:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;

    iget-object v0, v0, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment$2;->this$0:Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->access$100(Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;)V

    .line 105
    :cond_0
    return-void
.end method
