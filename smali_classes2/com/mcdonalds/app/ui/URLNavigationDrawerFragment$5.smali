.class Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;
.super Ljava/lang/Object;
.source "URLNavigationDrawerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    iput p2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->val$id:I

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

    .line 204
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 205
    iget v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->val$id:I

    const v1, 0x7f11031a

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "zh"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/LanguageUtil;->changeAppLanguage(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$100(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$200(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;Landroid/widget/TextView;)V

    .line 208
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$300(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$400(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;Landroid/widget/TextView;)V

    .line 209
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$500(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)V

    .line 216
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "en"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/LanguageUtil;->changeAppLanguage(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$300(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$200(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;Landroid/widget/TextView;)V

    .line 213
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$100(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$400(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;Landroid/widget/TextView;)V

    .line 214
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;->this$0:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->access$500(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)V

    goto :goto_0
.end method
