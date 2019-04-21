.class Lcom/mcdonalds/app/ui/URLNavigationActivity$5$1;
.super Ljava/lang/Object;
.source "URLNavigationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/URLNavigationActivity$5;->onRequestPermissionsResult(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ui/URLNavigationActivity$5;

.field final synthetic val$grantResult:I

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/URLNavigationActivity$5;ILjava/lang/String;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ui/URLNavigationActivity$5;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5$1;->this$1:Lcom/mcdonalds/app/ui/URLNavigationActivity$5;

    iput p2, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5$1;->val$requestCode:I

    iput-object p3, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5$1;->val$permission:Ljava/lang/String;

    iput p4, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5$1;->val$grantResult:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5$1;->this$1:Lcom/mcdonalds/app/ui/URLNavigationActivity$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;->val$listener:Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;

    iget v1, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5$1;->val$requestCode:I

    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5$1;->val$permission:Ljava/lang/String;

    iget v3, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5$1;->val$grantResult:I

    invoke-interface {v0, v1, v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;->onRequestPermissionsResult(ILjava/lang/String;I)V

    .line 624
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 625
    return-void
.end method
