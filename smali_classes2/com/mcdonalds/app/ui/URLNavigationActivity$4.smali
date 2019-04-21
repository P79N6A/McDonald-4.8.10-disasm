.class Lcom/mcdonalds/app/ui/URLNavigationActivity$4;
.super Ljava/lang/Object;
.source "URLNavigationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/URLNavigationActivity;->requestPermission(Ljava/lang/String;IILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field final synthetic val$listener:Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Ljava/lang/String;ILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$4;->this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$4;->val$permission:Ljava/lang/String;

    iput p3, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$4;->val$requestCode:I

    iput-object p4, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$4;->val$listener:Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;

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

    .line 592
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$4;->this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$4;->val$permission:Ljava/lang/String;

    iget v2, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$4;->val$requestCode:I

    iget-object v3, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$4;->val$listener:Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->requestPermission(Ljava/lang/String;ILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    .line 594
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 595
    return-void
.end method
