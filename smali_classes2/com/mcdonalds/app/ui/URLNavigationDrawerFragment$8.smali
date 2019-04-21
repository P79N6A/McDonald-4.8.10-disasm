.class Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$8;
.super Ljava/lang/Object;
.source "URLNavigationDrawerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->setUp(ILandroid/support/v4/widget/DrawerLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$8;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$8;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$600(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)Landroid/support/v4/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 345
    return-void
.end method
