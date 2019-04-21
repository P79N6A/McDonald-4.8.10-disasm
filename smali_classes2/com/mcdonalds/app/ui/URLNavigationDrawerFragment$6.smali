.class Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$6;
.super Ljava/lang/Object;
.source "URLNavigationDrawerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->showDialog(I)V
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
    .line 193
    iput-object p1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$6;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

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

    .line 197
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 198
    return-void
.end method
