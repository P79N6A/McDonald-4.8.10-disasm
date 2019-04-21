.class Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$2;
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
    .line 225
    iput-object p1, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$2;->this$0:Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$2;->this$0:Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$2;->this$0:Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;

    const-string v2, "interface.aboutMcDonald.charity"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->access$100(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->access$002(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$2;->this$0:Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;

    const v1, 0x7f0906b6

    invoke-static {v0, v4, v1}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->access$200(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;ZI)V

    .line 230
    return-void
.end method
