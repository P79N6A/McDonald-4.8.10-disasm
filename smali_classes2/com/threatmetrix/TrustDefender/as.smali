.class Lcom/threatmetrix/TrustDefender/as;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private final a:Lcom/threatmetrix/TrustDefender/u;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/threatmetrix/TrustDefender/u;)V
    .locals 1
    .param p1, "m_jsInterface"    # Lcom/threatmetrix/TrustDefender/u;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 13
    const-class v0, Lcom/threatmetrix/TrustDefender/as;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/as;->b:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/as;->a:Lcom/threatmetrix/TrustDefender/u;

    .line 18
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/as;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onJsAlert() -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/as;->a:Lcom/threatmetrix/TrustDefender/u;

    invoke-virtual {v0, p3}, Lcom/threatmetrix/TrustDefender/u;->a(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 26
    const/4 v0, 0x1

    return v0
.end method
