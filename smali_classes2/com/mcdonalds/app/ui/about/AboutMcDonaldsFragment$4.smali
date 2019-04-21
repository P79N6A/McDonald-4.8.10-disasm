.class Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$4;
.super Ljava/lang/Object;
.source "AboutMcDonaldsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$4;->this$0:Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "dialIntent":Landroid/content/Intent;
    const-string v1, "tel:+852 3762 1620"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$4;->this$0:Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method
