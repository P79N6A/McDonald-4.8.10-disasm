.class Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$3;
.super Ljava/lang/Object;
.source "URLNavigationDrawerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 175
    iput-object p1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$3;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

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

    .line 178
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$3;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    const v1, 0x7f11031c

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$000(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;I)V

    .line 179
    return-void
.end method
