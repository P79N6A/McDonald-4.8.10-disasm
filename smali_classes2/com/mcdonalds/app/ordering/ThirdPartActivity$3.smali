.class Lcom/mcdonalds/app/ordering/ThirdPartActivity$3;
.super Landroid/webkit/WebViewClient;
.source "ThirdPartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/ThirdPartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$3;->this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const-string v1, "onPageFinished"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 149
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/Payment/PaymentReturn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$3;->this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->access$200(Lcom/mcdonalds/app/ordering/ThirdPartActivity;Landroid/net/Uri;)V

    .line 155
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method
