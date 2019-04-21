.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$6;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->checkIfCurrentStoreIsOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$6;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

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

    .line 570
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 571
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$6;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v1, Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    .line 572
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$6;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 573
    return-void
.end method
