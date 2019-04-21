.class Lcom/mcdonalds/app/ui/URLNavigationActivity$5;
.super Ljava/lang/Object;
.source "URLNavigationActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;


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


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;->val$listener:Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(ILjava/lang/String;I)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantResult"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "onRequestPermissionsResult"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v8

    aput-object p2, v5, v9

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    const/4 v4, -0x1

    if-ne p3, v4, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v4, p2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 608
    :try_start_0
    iget-object v4, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v4}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 609
    .local v2, "permissionGroup":Landroid/content/pm/PermissionInfo;
    iget-object v4, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v4}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 615
    .end local v2    # "permissionGroup":Landroid/content/pm/PermissionInfo;
    .local v3, "permissionName":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const v5, 0x7f09061f

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "deniedString":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    const v5, 0x7f090620

    .line 617
    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 618
    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    const v5, 0x7f0905d4

    new-instance v6, Lcom/mcdonalds/app/ui/URLNavigationActivity$5$1;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationActivity$5$1;-><init>(Lcom/mcdonalds/app/ui/URLNavigationActivity$5;ILjava/lang/String;I)V

    .line 619
    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 627
    invoke-virtual {v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 628
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 632
    .end local v0    # "deniedString":Ljava/lang/String;
    .end local v3    # "permissionName":Ljava/lang/String;
    :goto_1
    return-void

    .line 610
    :catch_0
    move-exception v1

    .line 611
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 613
    const-string v4, "android.permission."

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "permissionName":Ljava/lang/String;
    goto :goto_0

    .line 630
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "permissionName":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;->val$listener:Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;

    invoke-interface {v4, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;->onRequestPermissionsResult(ILjava/lang/String;I)V

    goto :goto_1
.end method
