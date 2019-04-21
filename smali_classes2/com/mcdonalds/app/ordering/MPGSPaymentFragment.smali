.class public Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "MPGSPaymentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;,
        Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$JsObject;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mNickName:Ljava/lang/String;

.field private mOneTimePayment:Z

.field private mPaymentID:I

.field private mPaymentTypeRegisterData:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mOneTimePayment:Z

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.MPGSPaymentFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mPaymentTypeRegisterData:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;)Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;
    .param p1, "x1"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.MPGSPaymentFragment"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mPaymentTypeRegisterData:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.MPGSPaymentFragment"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getMpgsHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)Landroid/webkit/WebView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.MPGSPaymentFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.MPGSPaymentFragment"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mNickName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.MPGSPaymentFragment"

    const-string v2, "access$500"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->registerCard(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.MPGSPaymentFragment"

    const-string v2, "access$600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->handleErrCode(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.MPGSPaymentFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mOneTimePayment:Z

    return v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Lcom/mcdonalds/sdk/modules/models/PaymentCard;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.MPGSPaymentFragment"

    const-string v2, "access$800"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->updateNickname(Lcom/mcdonalds/sdk/modules/models/PaymentCard;Ljava/lang/String;)V

    return-void
.end method

.method private getMpgsHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "merchantId"    # Ljava/lang/String;

    .prologue
    const-string v8, "getMpgsHtml"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const/4 v5, 0x0

    .line 172
    .local v5, "mpgsHtml":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 175
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "zh"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 176
    iget-boolean v8, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mOneTimePayment:Z

    if-eqz v8, :cond_0

    .line 177
    const-string v8, "mpgs_noname_tc.html"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 190
    .local v3, "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 191
    .local v7, "r":I
    const/4 v2, 0x0

    .line 194
    .local v2, "fileLength":I
    :goto_1
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 196
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v7

    goto :goto_1

    .line 180
    .end local v2    # "fileLength":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v7    # "r":I
    :cond_0
    const-string v8, "mpgs_tc.html"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 183
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    iget-boolean v8, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mOneTimePayment:Z

    if-eqz v8, :cond_2

    .line 184
    const-string v8, "mpgs_noname.html"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 187
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_2
    const-string v8, "mpgs.html"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 201
    .restart local v2    # "fileLength":I
    .restart local v7    # "r":I
    :cond_3
    if-lez v2, :cond_4

    .line 202
    new-array v1, v2, [B

    .line 203
    .local v1, "contents":[B
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 204
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "zh"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 205
    iget-boolean v8, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mOneTimePayment:Z

    if-eqz v8, :cond_5

    .line 206
    const-string v8, "mpgs_noname_tc.html"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 219
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 220
    new-instance v6, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v6, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v5    # "mpgsHtml":Ljava/lang/String;
    .local v6, "mpgsHtml":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v9, "supportedPaymentMethods.mpgs.libraryURL"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "libURL":Ljava/lang/String;
    const-string v8, "<MERCHANTURL>"

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 223
    .end local v6    # "mpgsHtml":Ljava/lang/String;
    .restart local v5    # "mpgsHtml":Ljava/lang/String;
    :try_start_2
    const-string v8, "<MERCHANTID>"

    invoke-virtual {v5, v8, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 230
    .end local v1    # "contents":[B
    .end local v2    # "fileLength":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "libURL":Ljava/lang/String;
    .end local v7    # "r":I
    :cond_4
    :goto_3
    return-object v5

    .line 209
    .restart local v1    # "contents":[B
    .restart local v2    # "fileLength":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v7    # "r":I
    :cond_5
    const-string v8, "mpgs_tc.html"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_2

    .line 212
    :cond_6
    iget-boolean v8, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mOneTimePayment:Z

    if-eqz v8, :cond_7

    .line 213
    const-string v8, "mpgs_noname.html"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_2

    .line 216
    :cond_7
    const-string v8, "mpgs.html"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_2

    .line 226
    .end local v1    # "contents":[B
    .end local v2    # "fileLength":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v7    # "r":I
    :catch_0
    move-exception v8

    goto :goto_3

    .end local v5    # "mpgsHtml":Ljava/lang/String;
    .restart local v1    # "contents":[B
    .restart local v2    # "fileLength":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "mpgsHtml":Ljava/lang/String;
    .restart local v7    # "r":I
    :catch_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "mpgsHtml":Ljava/lang/String;
    .restart local v5    # "mpgsHtml":Ljava/lang/String;
    goto :goto_3
.end method

.method private handleErrCode(I)V
    .locals 5
    .param p1, "errCode"    # I

    .prologue
    const-string v1, "handleErrCode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    const/4 v0, -0x1

    .line 147
    .local v0, "resId":I
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_2

    .line 148
    const v0, 0x7f090a43

    .line 161
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    const/4 v3, 0x0

    .line 164
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 168
    :cond_1
    return-void

    .line 149
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_3

    .line 150
    const v0, 0x7f090a44

    goto :goto_0

    .line 151
    :cond_3
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_4

    .line 152
    const v0, 0x7f090a45

    goto :goto_0

    .line 153
    :cond_4
    and-int/lit8 v1, p1, 0x10

    if-lez v1, :cond_5

    .line 154
    const v0, 0x7f090a46

    goto :goto_0

    .line 155
    :cond_5
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_6

    .line 156
    const v0, 0x7f090a47

    goto :goto_0

    .line 157
    :cond_6
    and-int/lit8 v1, p1, 0x20

    if-lez v1, :cond_0

    .line 158
    const v0, 0x7f090a48

    goto :goto_0
.end method

.method private registerCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const-string v2, "registerCard"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v2, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f09040c

    invoke-static {v2, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 235
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 236
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mPaymentTypeRegisterData:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mPaymentTypeRegisterData:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->getRedirectUrl()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mPaymentTypeRegisterData:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->getCustomerId()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "customerId":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mOneTimePayment:Z

    new-instance v5, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;

    invoke-direct {v5, p0, p2}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;-><init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Ljava/lang/String;)V

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->registerCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 257
    .end local v1    # "url":Ljava/lang/String;
    .end local v3    # "customerId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateNickname(Lcom/mcdonalds/sdk/modules/models/PaymentCard;Ljava/lang/String;)V
    .locals 13
    .param p1, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const-string v10, "updateNickname"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    aput-object p2, v11, v12

    invoke-static {p0, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    const/4 v9, 0x0

    .line 264
    .local v9, "updatedPayment":Z
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIdentifier()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getAlias()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 265
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIdentifier()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 267
    .local v3, "cardId":I
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mNickName:Ljava/lang/String;

    .line 268
    .local v7, "nickName":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 269
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_1

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "lastFourChars":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 273
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 278
    .end local v0    # "alias":Ljava/lang/String;
    .end local v6    # "lastFourChars":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 281
    const-string v10, "customer"

    invoke-static {v10}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 282
    .local v5, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v5, :cond_5

    .line 283
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v8

    .line 284
    .local v8, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v8, :cond_5

    .line 285
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v4

    .line 286
    .local v4, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    if-eqz v4, :cond_7

    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, "cardFound":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 289
    .local v1, "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIdentifier()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v3, :cond_2

    .line 290
    invoke-virtual {v1, v7}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setNickName(Ljava/lang/String;)V

    .line 291
    const/4 v2, 0x1

    .line 296
    .end local v1    # "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_3
    if-nez v2, :cond_4

    .line 297
    invoke-virtual {p1, v7}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setNickName(Ljava/lang/String;)V

    .line 298
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v2    # "cardFound":Z
    :cond_4
    :goto_0
    new-instance v10, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$4;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$4;-><init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)V

    invoke-virtual {v5, v4, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updatePayments(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 316
    const/4 v9, 0x1

    .line 320
    .end local v4    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    .end local v5    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v8    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_5
    if-nez v9, :cond_6

    .line 321
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 322
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 332
    .end local v3    # "cardId":I
    .end local v7    # "nickName":Ljava/lang/String;
    :cond_6
    :goto_1
    return-void

    .line 301
    .restart local v3    # "cardId":I
    .restart local v4    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    .restart local v5    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .restart local v7    # "nickName":Ljava/lang/String;
    .restart local v8    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .restart local v4    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    invoke-virtual {p1, v7}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setNickName(Ljava/lang/String;)V

    .line 303
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    .end local v3    # "cardId":I
    .end local v4    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    .end local v5    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v7    # "nickName":Ljava/lang/String;
    .end local v8    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_8
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    const v11, 0x7f09033b

    .line 326
    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    const v11, 0x7f090214

    .line 327
    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    const v11, 0x7f0905d4

    const/4 v12, 0x0

    .line 328
    invoke-virtual {v10, v11, v12}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    .line 329
    invoke-virtual {v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v10

    .line 330
    invoke-virtual {v10}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_1
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const v0, 0x7f09086f

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_ONE_TIME_PAYMENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mOneTimePayment:Z

    .line 70
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PAYMENT_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mPaymentID:I

    .line 72
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 76
    const v1, 0x7f0400f5

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f11035f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mWebView:Landroid/webkit/WebView;

    .line 80
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 82
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 83
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 84
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 85
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 86
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;-><init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 105
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$JsObject;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$JsObject;-><init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;)V

    const-string v3, "paymentBridge"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f09040c

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 108
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget v2, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mPaymentID:I

    iget-boolean v3, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->mOneTimePayment:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$2;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$2;-><init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getPaymentTypeRegistrationURL(ILjava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 130
    :cond_0
    return-object v0
.end method
