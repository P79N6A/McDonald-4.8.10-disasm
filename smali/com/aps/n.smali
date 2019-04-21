.class public Lcom/aps/n;
.super Ljava/lang/Object;
.source "NetManager.java"


# static fields
.field private static a:Lcom/aps/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/aps/n;->a:Lcom/aps/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 790
    .line 791
    if-nez p0, :cond_1

    .line 800
    :cond_0
    :goto_0
    return v0

    .line 793
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static a()Lcom/aps/n;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/aps/n;->a:Lcom/aps/n;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/aps/n;

    invoke-direct {v0}, Lcom/aps/n;-><init>()V

    sput-object v0, Lcom/aps/n;->a:Lcom/aps/n;

    .line 68
    :cond_0
    sget-object v0, Lcom/aps/n;->a:Lcom/aps/n;

    return-object v0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 810
    const/4 v0, 0x0

    .line 811
    if-eqz p0, :cond_0

    .line 812
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 814
    :cond_0
    sget-object v1, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 752
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 756
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-static {}, Lcom/amap/api/location/core/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v0, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 763
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 764
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 765
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 769
    :cond_1
    :goto_1
    return-object v0

    .line 758
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/16 v8, 0x50

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 613
    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 616
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_12

    .line 617
    invoke-static {}, Lcom/aps/v;->c()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 621
    invoke-static {p0}, Lcom/aps/n;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_11

    .line 625
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    if-eqz v0, :cond_11

    .line 632
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    :goto_1
    move v6, v0

    .line 727
    :cond_0
    :goto_2
    invoke-static {v1, v6}, Lcom/aps/n;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    const-string v0, "http"

    .line 729
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v1, v6, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 730
    const-string v0, "http.route.default-proxy"

    invoke-interface {v11, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 732
    :cond_1
    sget v0, Lcom/aps/g;->g:I

    invoke-static {v11, v0}, Lcom/aps/v;->a(Lorg/apache/http/params/HttpParams;I)V

    .line 733
    invoke-static {v11, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 734
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 736
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    .line 737
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-direct {v2, v3, v1, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 738
    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 740
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v11, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 741
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 742
    return-object v0

    .line 626
    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    .line 640
    :cond_2
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 644
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 645
    if-eqz v2, :cond_f

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 646
    const-string v0, "apn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 647
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_3

    .line 649
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 650
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "nm|found apn:"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/aps/v;->a([Ljava/lang/Object;)V

    .line 652
    :cond_3
    if-eqz v0, :cond_5

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 653
    invoke-static {}, Lcom/aps/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 656
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_10

    move v1, v9

    .line 661
    :goto_3
    if-nez v1, :cond_4

    .line 662
    :try_start_3
    const-string v0, "10.0.0.200"
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    move v6, v8

    move-object v1, v0

    .line 718
    :goto_4
    if-eqz v2, :cond_0

    .line 719
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 665
    :cond_5
    if-eqz v0, :cond_f

    :try_start_4
    const-string/jumbo v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 666
    invoke-static {}, Lcom/aps/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 669
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v1

    if-nez v1, :cond_e

    move v1, v9

    .line 674
    :goto_6
    if-nez v1, :cond_6

    .line 675
    :try_start_5
    const-string v0, "10.0.0.172"
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    move v6, v8

    move-object v1, v0

    .line 677
    goto :goto_4

    .line 680
    :catch_1
    move-exception v0

    move-object v0, v7

    .line 684
    :goto_7
    :try_start_6
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 685
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 690
    invoke-static {}, Lcom/aps/n;->b()Ljava/lang/String;

    move-result-object v1

    .line 691
    const-string v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_8

    .line 692
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 693
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object v0, v1

    .line 698
    :goto_8
    if-nez v9, :cond_7

    .line 699
    const-string v0, "10.0.0.200"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_7
    move v6, v8

    move-object v1, v0

    .line 718
    :goto_9
    if-eqz v7, :cond_0

    .line 719
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 702
    :cond_8
    :try_start_7
    const-string/jumbo v3, "wap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_c

    .line 703
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 704
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object v0, v1

    move v1, v9

    .line 709
    :goto_a
    if-nez v1, :cond_9

    .line 710
    const-string v0, "10.0.0.200"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_9
    move v6, v8

    move-object v1, v0

    .line 712
    goto :goto_9

    .line 715
    :catch_2
    move-exception v0

    move-object v2, v7

    move-object v1, v7

    .line 716
    :goto_b
    :try_start_8
    invoke-static {v0}, Lcom/aps/v;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 718
    if-eqz v2, :cond_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_c
    if-eqz v2, :cond_a

    .line 719
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 718
    :cond_a
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v7

    goto :goto_c

    .line 715
    :catch_3
    move-exception v0

    move-object v1, v7

    goto :goto_b

    :catch_4
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_b

    .line 680
    :catch_5
    move-exception v0

    move-object v0, v7

    move-object v7, v2

    goto :goto_7

    :catch_6
    move-exception v1

    move-object v7, v2

    goto :goto_7

    :cond_b
    move v1, v10

    goto :goto_a

    :cond_c
    move-object v1, v0

    goto :goto_9

    :cond_d
    move v9, v10

    goto :goto_8

    :cond_e
    move v1, v10

    move-object v0, v7

    goto/16 :goto_6

    :cond_f
    move-object v1, v7

    goto/16 :goto_4

    :cond_10
    move v1, v10

    move-object v0, v7

    goto/16 :goto_3

    :cond_11
    move v0, v6

    move-object v1, v7

    goto/16 :goto_1

    :cond_12
    move-object v1, v7

    goto/16 :goto_2
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 780
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Z
    .locals 2

    .prologue
    .line 824
    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 825
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    const/4 v0, 0x1

    .line 828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 903
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v7

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 904
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/amap/api/location/core/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 905
    :cond_0
    const-string v1, "false"

    aput-object v1, v0, v7

    .line 937
    :cond_1
    :goto_0
    return-object v0

    .line 908
    :cond_2
    :try_start_0
    const-string v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    const-string v2, "X-INFO"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 910
    const-string v3, "X-BIZ"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 911
    const-string v4, "User-Agent"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 918
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 922
    const/4 v5, 0x0

    const-string/jumbo v6, "true"

    aput-object v6, v0, v5

    .line 923
    const/4 v5, 0x1

    aput-object v1, v0, v5

    .line 924
    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 925
    const/4 v1, 0x3

    aput-object v3, v0, v1

    .line 926
    const/4 v1, 0x4

    aput-object v4, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :cond_3
    :goto_1
    aget-object v1, v0, v7

    if-eqz v1, :cond_4

    aget-object v1, v0, v7

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 934
    :cond_4
    const-string/jumbo v1, "true"

    aput-object v1, v0, v7

    goto :goto_0

    .line 928
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 949
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 957
    :goto_0
    if-nez v0, :cond_0

    .line 958
    const-string v0, "null"

    .line 960
    :cond_0
    return-object v0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 955
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/location/core/AMapLocException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_2

    .line 84
    :cond_0
    const/4 v1, 0x0

    .line 256
    :cond_1
    :goto_0
    return-object v1

    .line 86
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/aps/v;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 87
    invoke-static {v7}, Lcom/aps/n;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    .line 88
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 89
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_3
    const/4 v2, 0x0

    .line 92
    const/4 v1, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v3, 0x0

    .line 99
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    const-string v8, ""

    .line 102
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/aps/n;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 103
    :try_start_1
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 108
    :try_start_2
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 109
    const-string v9, "Content-Type"

    const-string v11, "application/x-www-form-urlencoded"

    invoke-virtual {v7, v9, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v9, "User-Agent"

    const-string v11, "AMAP_Location_SDK_Android 1.4.1"

    invoke-virtual {v7, v9, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v9, "Accept-Encoding"

    const-string v11, "gzip"

    invoke-virtual {v7, v9, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v9, "Connection"

    const-string v11, "Keep-Alive"

    invoke-virtual {v7, v9, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v9, "X-INFO"

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v9, "platinfo"

    const-string v11, "platform=Android&sdkversion=%s&product=%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "1.4.1"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "loc"

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v9, "logversion"

    const-string v11, "2.0"

    invoke-virtual {v7, v9, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v9, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {v10, v9, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v7, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 125
    instance-of v1, v2, Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_c

    invoke-interface {v2, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    move-object v9, v1

    .line 126
    :goto_1
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 130
    const/16 v11, 0xc8

    if-ne v1, v11, :cond_15

    .line 131
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 132
    :try_start_3
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 134
    const-string v1, ""

    .line 135
    const-string v11, "charset="

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 136
    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 137
    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 140
    const-string v1, "UTF-8"

    move-object v8, v1

    .line 145
    :goto_2
    invoke-static {v9}, Lcom/aps/n;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v5, v1

    .line 151
    :cond_5
    if-eqz v5, :cond_d

    .line 152
    :try_start_4
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v1

    .line 156
    :goto_3
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x800

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 157
    :try_start_6
    const-string v3, ""

    .line 158
    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 159
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    .line 170
    :catch_0
    move-exception v3

    move-object v3, v5

    move-object v5, v7

    move-object v15, v6

    move-object v6, v2

    move-object v2, v4

    move-object v4, v15

    .line 174
    :goto_5
    :try_start_7
    new-instance v7, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v7, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 200
    :catchall_0
    move-exception v7

    move-object v15, v7

    move-object v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object v1, v15

    move-object/from16 v16, v4

    move-object v4, v2

    move-object v2, v6

    move-object/from16 v6, v16

    :goto_6
    if-eqz v7, :cond_6

    .line 201
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 204
    :cond_6
    if-eqz v2, :cond_7

    .line 205
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 209
    :cond_7
    if-eqz v5, :cond_8

    .line 211
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 219
    :cond_8
    :goto_7
    if-eqz v6, :cond_9

    .line 221
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 231
    :cond_9
    :goto_8
    if-eqz v4, :cond_a

    .line 233
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    .line 243
    :cond_a
    :goto_9
    if-eqz v3, :cond_b

    .line 245
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    .line 200
    :cond_b
    :goto_a
    throw v1

    .line 125
    :cond_c
    :try_start_c
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/HttpClient;

    move-object v1, v0

    invoke-static {v1, v7}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v1

    move-object v9, v1

    goto/16 :goto_1

    .line 154
    :cond_d
    :try_start_d
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_19
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object v4, v1

    goto :goto_3

    .line 161
    :cond_e
    :try_start_e
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    const/4 v8, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_13
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    .line 200
    :goto_b
    if-eqz v7, :cond_f

    .line 201
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 204
    :cond_f
    if-eqz v2, :cond_10

    .line 205
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 209
    :cond_10
    if-eqz v5, :cond_11

    .line 211
    :try_start_f
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    .line 219
    :cond_11
    :goto_c
    if-eqz v6, :cond_12

    .line 221
    :try_start_10
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    .line 231
    :cond_12
    :goto_d
    if-eqz v4, :cond_13

    .line 233
    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c

    .line 243
    :cond_13
    :goto_e
    if-eqz v3, :cond_14

    .line 245
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_d

    .line 256
    :cond_14
    :goto_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 164
    :cond_15
    const/16 v9, 0x194

    if-ne v1, v9, :cond_16

    .line 168
    :try_start_13
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/net/SocketException; {:try_start_13 .. :try_end_13} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 170
    :catch_1
    move-exception v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object v15, v6

    move-object v6, v2

    move-object v2, v4

    move-object v4, v15

    goto/16 :goto_5

    .line 175
    :catch_2
    move-exception v7

    move-object v7, v1

    .line 179
    :goto_10
    :try_start_14
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :catchall_1
    move-exception v1

    goto/16 :goto_6

    .line 180
    :catch_3
    move-exception v7

    move-object v7, v1

    .line 184
    :goto_11
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :catch_4
    move-exception v7

    move-object v7, v1

    .line 189
    :goto_12
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :catch_5
    move-exception v7

    move-object v15, v7

    move-object v7, v1

    move-object v1, v15

    .line 191
    :goto_13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 212
    :catch_6
    move-exception v2

    goto/16 :goto_7

    .line 222
    :catch_7
    move-exception v2

    .line 224
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 234
    :catch_8
    move-exception v2

    .line 236
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9

    .line 246
    :catch_9
    move-exception v2

    .line 248
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    .line 212
    :catch_a
    move-exception v2

    goto :goto_c

    .line 222
    :catch_b
    move-exception v2

    .line 224
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 234
    :catch_c
    move-exception v2

    .line 236
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 246
    :catch_d
    move-exception v2

    .line 248
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    .line 200
    :catchall_2
    move-exception v7

    move-object v15, v7

    move-object v7, v1

    move-object v1, v15

    goto/16 :goto_6

    :catchall_3
    move-exception v3

    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    goto/16 :goto_6

    .line 190
    :catch_e
    move-exception v1

    goto :goto_13

    :catch_f
    move-exception v3

    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    goto :goto_13

    .line 185
    :catch_10
    move-exception v1

    goto :goto_12

    :catch_11
    move-exception v3

    move-object v3, v1

    goto :goto_12

    .line 180
    :catch_12
    move-exception v1

    goto :goto_11

    :catch_13
    move-exception v3

    move-object v3, v1

    goto :goto_11

    .line 175
    :catch_14
    move-exception v1

    goto :goto_10

    :catch_15
    move-exception v3

    move-object v3, v1

    goto :goto_10

    .line 170
    :catch_16
    move-exception v7

    move-object v15, v3

    move-object v3, v5

    move-object v5, v1

    move-object v1, v15

    move-object/from16 v16, v6

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v4, v16

    goto/16 :goto_5

    :catch_17
    move-exception v7

    move-object v15, v3

    move-object v3, v5

    move-object v5, v1

    move-object v1, v15

    move-object/from16 v16, v6

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v4, v16

    goto/16 :goto_5

    :catch_18
    move-exception v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object v15, v6

    move-object v6, v2

    move-object v2, v4

    move-object v4, v15

    goto/16 :goto_5

    :catch_19
    move-exception v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object v15, v6

    move-object v6, v2

    move-object v2, v4

    move-object v4, v15

    goto/16 :goto_5

    :catch_1a
    move-exception v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object v15, v6

    move-object v6, v2

    move-object v2, v4

    move-object v4, v15

    goto/16 :goto_5

    :cond_16
    move-object v1, v8

    goto/16 :goto_b

    :cond_17
    move-object v8, v1

    goto/16 :goto_2
.end method

.method public a([BLandroid/content/Context;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 972
    const-string v9, ""

    .line 973
    invoke-static/range {p2 .. p2}, Lcom/aps/v;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 974
    invoke-static {v12}, Lcom/aps/n;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    .line 987
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 991
    const/4 v1, 0x0

    .line 1091
    :goto_0
    return-object v1

    .line 993
    :cond_0
    const/4 v5, 0x0

    .line 994
    const/4 v2, 0x0

    .line 996
    const/4 v8, 0x0

    .line 997
    const/4 v7, 0x0

    .line 998
    const/4 v6, 0x0

    .line 999
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1000
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1001
    const-string v1, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1002
    const-string/jumbo v1, "zei="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v3, Lcom/aps/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    const-string v1, "&zsi="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v3, Lcom/aps/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1004
    const/4 v3, 0x0

    .line 1005
    const/4 v1, 0x0

    move v11, v1

    move-object v1, v2

    move-object v2, v5

    move-object v5, v9

    :goto_1
    const/4 v9, 0x1

    if-ge v11, v9, :cond_1

    .line 1006
    if-eqz v3, :cond_2

    .line 1089
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1091
    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto :goto_0

    .line 1014
    :cond_2
    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/aps/n;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 1015
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1019
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v4, v1, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1020
    const-string v1, "application/soap+xml;charset="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1021
    const-string v1, "UTF-8"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1022
    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v4, v1, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1023
    const-string v1, "gzipped"

    const-string v9, "1"

    invoke-virtual {v10, v1, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    invoke-static/range {p1 .. p1}, Lcom/aps/v;->a([B)[B

    move-result-object v1

    .line 1028
    new-instance v9, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v9, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1029
    const-string v1, "application/octet-stream"

    invoke-virtual {v9, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v10, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1031
    instance-of v1, v2, Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_8

    invoke-interface {v2, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1032
    :goto_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 1036
    const/16 v14, 0xc8

    if-ne v9, v14, :cond_24

    .line 1037
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v9

    .line 1038
    :try_start_2
    new-instance v8, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v8, v9, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1039
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x800

    invoke-direct {v1, v8, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1040
    :try_start_4
    const-string v6, ""

    .line 1041
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 1042
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1049
    :catch_0
    move-exception v6

    move-object v6, v10

    move-object v7, v2

    move-object v2, v8

    move-object v8, v5

    move-object v5, v9

    .line 1066
    :goto_4
    if-eqz v6, :cond_3

    .line 1067
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1068
    const/4 v6, 0x0

    .line 1070
    :cond_3
    if-eqz v7, :cond_4

    .line 1071
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1072
    const/4 v7, 0x0

    .line 1075
    :cond_4
    if-eqz v5, :cond_5

    .line 1076
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1077
    const/4 v5, 0x0

    .line 1079
    :cond_5
    if-eqz v2, :cond_6

    .line 1080
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 1081
    const/4 v2, 0x0

    .line 1083
    :cond_6
    if-eqz v1, :cond_7

    .line 1084
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1085
    const/4 v1, 0x0

    :cond_7
    move v15, v3

    move-object v3, v1

    move v1, v15

    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v16

    .line 1005
    :goto_5
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    move v15, v1

    move-object v1, v6

    move-object v6, v3

    move v3, v15

    move-object/from16 v16, v4

    move-object v4, v2

    move-object v2, v7

    move-object/from16 v7, v16

    move-object/from16 v17, v5

    move-object v5, v8

    move-object/from16 v8, v17

    goto/16 :goto_1

    .line 1031
    :cond_8
    :try_start_5
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/HttpClient;

    move-object v1, v0

    invoke-static {v1, v10}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v1

    goto :goto_2

    .line 1044
    :cond_9
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1045
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1046
    const/4 v4, 0x0

    .line 1047
    const/4 v3, 0x1

    move v15, v3

    move-object v3, v4

    move-object v4, v8

    move-object v8, v5

    move-object v5, v9

    move-object v9, v1

    move v1, v15

    .line 1066
    :goto_6
    if-eqz v10, :cond_1a

    .line 1067
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1068
    const/4 v6, 0x0

    .line 1070
    :goto_7
    if-eqz v2, :cond_19

    .line 1071
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1072
    const/4 v7, 0x0

    .line 1075
    :goto_8
    if-eqz v5, :cond_a

    .line 1076
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1077
    const/4 v5, 0x0

    .line 1079
    :cond_a
    if-eqz v4, :cond_b

    .line 1080
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1081
    const/4 v4, 0x0

    .line 1083
    :cond_b
    if-eqz v9, :cond_18

    .line 1084
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 1085
    const/4 v2, 0x0

    :goto_9
    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    .line 1087
    goto :goto_5

    .line 1053
    :catch_1
    move-exception v6

    move-object v15, v8

    move-object v8, v5

    move-object v5, v2

    move-object v2, v15

    .line 1066
    :goto_a
    if-eqz v10, :cond_23

    .line 1067
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1068
    const/4 v6, 0x0

    .line 1070
    :goto_b
    if-eqz v5, :cond_22

    .line 1071
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1072
    const/4 v7, 0x0

    .line 1075
    :goto_c
    if-eqz v9, :cond_21

    .line 1076
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1077
    const/4 v5, 0x0

    .line 1079
    :goto_d
    if-eqz v2, :cond_c

    .line 1080
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 1081
    const/4 v2, 0x0

    .line 1083
    :cond_c
    if-eqz v1, :cond_d

    .line 1084
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1085
    const/4 v1, 0x0

    :cond_d
    move v15, v3

    move-object v3, v1

    move v1, v15

    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v16

    .line 1087
    goto/16 :goto_5

    .line 1057
    :catch_2
    move-exception v6

    move-object v15, v8

    move-object v8, v5

    move-object v5, v2

    move-object v2, v15

    .line 1066
    :goto_e
    if-eqz v10, :cond_20

    .line 1067
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1068
    const/4 v6, 0x0

    .line 1070
    :goto_f
    if-eqz v5, :cond_1f

    .line 1071
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1072
    const/4 v7, 0x0

    .line 1075
    :goto_10
    if-eqz v9, :cond_1e

    .line 1076
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1077
    const/4 v5, 0x0

    .line 1079
    :goto_11
    if-eqz v2, :cond_e

    .line 1080
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 1081
    const/4 v2, 0x0

    .line 1083
    :cond_e
    if-eqz v1, :cond_f

    .line 1084
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1085
    const/4 v1, 0x0

    :cond_f
    move v15, v3

    move-object v3, v1

    move v1, v15

    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v16

    .line 1087
    goto/16 :goto_5

    .line 1061
    :catch_3
    move-exception v6

    move-object v15, v8

    move-object v8, v5

    move-object v5, v2

    move-object v2, v15

    .line 1066
    :goto_12
    if-eqz v10, :cond_1d

    .line 1067
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1068
    const/4 v6, 0x0

    .line 1070
    :goto_13
    if-eqz v5, :cond_1c

    .line 1071
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1072
    const/4 v7, 0x0

    .line 1075
    :goto_14
    if-eqz v9, :cond_1b

    .line 1076
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1077
    const/4 v5, 0x0

    .line 1079
    :goto_15
    if-eqz v2, :cond_10

    .line 1080
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 1081
    const/4 v2, 0x0

    .line 1083
    :cond_10
    if-eqz v1, :cond_11

    .line 1084
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1085
    const/4 v1, 0x0

    :cond_11
    move v15, v3

    move-object v3, v1

    move v1, v15

    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v16

    .line 1087
    goto/16 :goto_5

    .line 1066
    :catchall_0
    move-exception v3

    move-object v6, v1

    move-object v7, v8

    move-object v1, v3

    move-object v8, v9

    :goto_16
    if-eqz v10, :cond_12

    .line 1067
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1070
    :cond_12
    if-eqz v2, :cond_13

    .line 1071
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1075
    :cond_13
    if-eqz v8, :cond_14

    .line 1076
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 1079
    :cond_14
    if-eqz v7, :cond_15

    .line 1080
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 1083
    :cond_15
    if-eqz v6, :cond_16

    .line 1084
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1066
    :cond_16
    throw v1

    :cond_17
    move-object v1, v5

    .line 1091
    goto/16 :goto_0

    .line 1066
    :catchall_1
    move-exception v3

    move-object v10, v1

    move-object v1, v3

    goto :goto_16

    :catchall_2
    move-exception v1

    goto :goto_16

    :catchall_3
    move-exception v1

    move-object v8, v9

    goto :goto_16

    :catchall_4
    move-exception v1

    move-object v7, v8

    move-object v8, v9

    goto :goto_16

    .line 1061
    :catch_4
    move-exception v9

    move-object v9, v8

    move-object v10, v1

    move-object v1, v6

    move-object v8, v5

    move-object v5, v2

    move-object v2, v7

    goto :goto_12

    :catch_5
    move-exception v1

    move-object v1, v6

    move-object v9, v8

    move-object v8, v5

    move-object v5, v2

    move-object v2, v7

    goto :goto_12

    :catch_6
    move-exception v1

    move-object v1, v6

    move-object v8, v5

    move-object v5, v2

    move-object v2, v7

    goto :goto_12

    :catch_7
    move-exception v1

    move-object v1, v6

    move-object v15, v8

    move-object v8, v5

    move-object v5, v2

    move-object v2, v15

    goto :goto_12

    .line 1057
    :catch_8
    move-exception v9

    move-object v9, v8

    move-object v10, v1

    move-object v1, v6

    move-object v8, v5

    move-object v5, v2

    move-object v2, v7

    goto/16 :goto_e

    :catch_9
    move-exception v1

    move-object v1, v6

    move-object v9, v8

    move-object v8, v5

    move-object v5, v2

    move-object v2, v7

    goto/16 :goto_e

    :catch_a
    move-exception v1

    move-object v1, v6

    move-object v8, v5

    move-object v5, v2

    move-object v2, v7

    goto/16 :goto_e

    :catch_b
    move-exception v1

    move-object v1, v6

    move-object v15, v8

    move-object v8, v5

    move-object v5, v2

    move-object v2, v15

    goto/16 :goto_e

    .line 1053
    :catch_c
    move-exception v9

    move-object v9, v8

    move-object v10, v1

    move-object v1, v6

    move-object v8, v5

    move-object v5, v2

    move-object v2, v7

    goto/16 :goto_a

    :catch_d
    move-exception v1

    move-object v1, v6

    move-object v9, v8

    move-object v8, v5

    move-object v5, v2

    move-object v2, v7

    goto/16 :goto_a

    :catch_e
    move-exception v1

    move-object v1, v6

    move-object v8, v5

    move-object v5, v2

    move-object v2, v7

    goto/16 :goto_a

    :catch_f
    move-exception v1

    move-object v1, v6

    move-object v15, v8

    move-object v8, v5

    move-object v5, v2

    move-object v2, v15

    goto/16 :goto_a

    .line 1049
    :catch_10
    move-exception v9

    move-object v15, v6

    move-object v6, v1

    move-object v1, v15

    move-object/from16 v16, v8

    move-object v8, v5

    move-object/from16 v5, v16

    move-object/from16 v17, v2

    move-object v2, v7

    move-object/from16 v7, v17

    goto/16 :goto_4

    :catch_11
    move-exception v1

    move-object v1, v6

    move-object v6, v10

    move-object v15, v8

    move-object v8, v5

    move-object v5, v15

    move-object/from16 v16, v2

    move-object v2, v7

    move-object/from16 v7, v16

    goto/16 :goto_4

    :catch_12
    move-exception v1

    move-object v1, v6

    move-object v8, v5

    move-object v5, v9

    move-object v6, v10

    move-object v15, v2

    move-object v2, v7

    move-object v7, v15

    goto/16 :goto_4

    :catch_13
    move-exception v1

    move-object v1, v6

    move-object v7, v2

    move-object v6, v10

    move-object v2, v8

    move-object v8, v5

    move-object v5, v9

    goto/16 :goto_4

    :cond_18
    move-object v2, v9

    goto/16 :goto_9

    :cond_19
    move-object v7, v2

    goto/16 :goto_8

    :cond_1a
    move-object v6, v10

    goto/16 :goto_7

    :cond_1b
    move-object v5, v9

    goto/16 :goto_15

    :cond_1c
    move-object v7, v5

    goto/16 :goto_14

    :cond_1d
    move-object v6, v10

    goto/16 :goto_13

    :cond_1e
    move-object v5, v9

    goto/16 :goto_11

    :cond_1f
    move-object v7, v5

    goto/16 :goto_10

    :cond_20
    move-object v6, v10

    goto/16 :goto_f

    :cond_21
    move-object v5, v9

    goto/16 :goto_d

    :cond_22
    move-object v7, v5

    goto/16 :goto_c

    :cond_23
    move-object v6, v10

    goto/16 :goto_b

    :cond_24
    move v1, v3

    move-object v9, v6

    move-object v3, v4

    move-object v4, v7

    move-object v15, v8

    move-object v8, v5

    move-object v5, v15

    goto/16 :goto_6
.end method

.method public a([BLandroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 416
    invoke-static/range {p2 .. p2}, Lcom/aps/v;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 417
    invoke-static {v7}, Lcom/aps/n;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    .line 418
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 422
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_0
    const/4 v2, 0x0

    .line 425
    const/4 v1, 0x0

    .line 429
    const/4 v6, 0x0

    .line 430
    const/4 v5, 0x0

    .line 431
    const/4 v4, 0x0

    .line 432
    const/4 v3, 0x0

    .line 433
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 434
    const-string v8, ""

    .line 436
    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/aps/n;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 437
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/aps/n;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v10

    .line 445
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/amap/api/location/core/c;->k()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 449
    :try_start_2
    const-string v9, "UTF-8"

    .line 455
    invoke-static/range {p1 .. p1}, Lcom/aps/v;->a([B)[B

    move-result-object v1

    .line 456
    new-instance v12, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v12, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 457
    const-string v1, "application/octet-stream"

    invoke-virtual {v12, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 462
    const-string v1, "Accept-Encoding"

    const-string v13, "gzip"

    invoke-virtual {v7, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v1, "gzipped"

    const-string v13, "1"

    invoke-virtual {v7, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v1, "X-INFO"

    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-virtual {v7, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v1, "X-BIZ"

    const/4 v13, 0x3

    aget-object v13, v10, v13

    invoke-virtual {v7, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v1, "KEY"

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-virtual {v7, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v1, "enginever"

    const-string v13, "4.2"

    invoke-virtual {v7, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v1, 0x4

    aget-object v1, v10, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    aget-object v1, v10, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 471
    const-string v1, "User-Agent"

    const/4 v13, 0x4

    aget-object v13, v10, v13

    invoke-virtual {v7, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_1
    invoke-static {}, Lcom/amap/api/location/core/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 474
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v10, v10, v14

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 475
    const-string/jumbo v13, "ts"

    invoke-virtual {v7, v13, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "scode"

    invoke-virtual {v7, v1, v10}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v1, "platinfo"

    const-string v10, "platform=Android&sdkversion=%s&product=%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "1.4.1"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "loc"

    aput-object v15, v13, v14

    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v1, v10}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v1, "logversion"

    const-string v10, "2.0"

    invoke-virtual {v7, v1, v10}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v1, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v11, v1, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 481
    invoke-virtual {v7, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 485
    instance-of v1, v2, Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_a

    invoke-interface {v2, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    move-object v10, v1

    .line 486
    :goto_0
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 490
    const/16 v12, 0xc8

    if-ne v1, v12, :cond_14

    .line 491
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 492
    :try_start_3
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 493
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 494
    const-string v1, ""

    .line 495
    const-string v12, "charset="

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 496
    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    .line 497
    add-int/lit8 v1, v12, 0x8

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 499
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    move-object v8, v9

    .line 505
    :goto_1
    invoke-static {v10}, Lcom/aps/n;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 509
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v5, v1

    .line 511
    :cond_3
    if-eqz v5, :cond_b

    .line 512
    :try_start_4
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v1

    .line 516
    :goto_2
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x800

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_16
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 517
    :try_start_6
    const-string v3, ""

    .line 518
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 519
    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 530
    :catch_0
    move-exception v3

    move-object v3, v5

    move-object v5, v7

    move-object/from16 v16, v6

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v4, v16

    .line 534
    :goto_4
    :try_start_7
    new-instance v7, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v7, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 556
    :catchall_0
    move-exception v7

    move-object/from16 v16, v7

    move-object v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v4

    move-object v4, v2

    move-object v2, v6

    move-object/from16 v6, v17

    :goto_5
    if-eqz v7, :cond_4

    .line 557
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 560
    :cond_4
    if-eqz v2, :cond_5

    .line 561
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 566
    :cond_5
    if-eqz v5, :cond_6

    .line 568
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 578
    :cond_6
    :goto_6
    if-eqz v6, :cond_7

    .line 580
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 590
    :cond_7
    :goto_7
    if-eqz v4, :cond_8

    .line 591
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 594
    :cond_8
    if-eqz v3, :cond_9

    .line 595
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 556
    :cond_9
    throw v1

    .line 485
    :cond_a
    :try_start_a
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/HttpClient;

    move-object v1, v0

    invoke-static {v1, v7}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v1

    move-object v10, v1

    goto/16 :goto_0

    .line 514
    :cond_b
    :try_start_b
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_15
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v4, v1

    goto :goto_2

    .line 521
    :cond_c
    :try_start_c
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 522
    const/4 v8, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    .line 556
    :goto_8
    if-eqz v7, :cond_d

    .line 557
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 560
    :cond_d
    if-eqz v2, :cond_e

    .line 561
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 566
    :cond_e
    if-eqz v5, :cond_f

    .line 568
    :try_start_d
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    .line 578
    :cond_f
    :goto_9
    if-eqz v6, :cond_10

    .line 580
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    .line 590
    :cond_10
    :goto_a
    if-eqz v4, :cond_11

    .line 591
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 594
    :cond_11
    if-eqz v3, :cond_12

    .line 595
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 599
    :cond_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x0

    :cond_13
    return-object v1

    .line 524
    :cond_14
    const/16 v9, 0x194

    if-ne v1, v9, :cond_15

    .line 528
    :try_start_f
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 530
    :catch_1
    move-exception v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object/from16 v16, v6

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v4, v16

    goto/16 :goto_4

    .line 535
    :catch_2
    move-exception v7

    move-object v7, v1

    .line 539
    :goto_b
    :try_start_10
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :catchall_1
    move-exception v1

    goto/16 :goto_5

    .line 540
    :catch_3
    move-exception v7

    move-object v7, v1

    .line 544
    :goto_c
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    :catch_4
    move-exception v7

    move-object v7, v1

    .line 549
    :goto_d
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :catch_5
    move-exception v7

    move-object v7, v1

    .line 554
    :goto_e
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string v8, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 569
    :catch_6
    move-exception v2

    .line 571
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 581
    :catch_7
    move-exception v2

    .line 583
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    .line 569
    :catch_8
    move-exception v2

    .line 571
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 581
    :catch_9
    move-exception v2

    .line 583
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 556
    :catchall_2
    move-exception v7

    move-object/from16 v16, v7

    move-object v7, v1

    move-object/from16 v1, v16

    goto/16 :goto_5

    :catchall_3
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    goto/16 :goto_5

    .line 550
    :catch_a
    move-exception v1

    goto :goto_e

    :catch_b
    move-exception v3

    move-object v3, v1

    goto :goto_e

    .line 545
    :catch_c
    move-exception v1

    goto :goto_d

    :catch_d
    move-exception v3

    move-object v3, v1

    goto :goto_d

    .line 540
    :catch_e
    move-exception v1

    goto :goto_c

    :catch_f
    move-exception v3

    move-object v3, v1

    goto :goto_c

    .line 535
    :catch_10
    move-exception v1

    goto :goto_b

    :catch_11
    move-exception v3

    move-object v3, v1

    goto :goto_b

    .line 530
    :catch_12
    move-exception v7

    move-object/from16 v16, v3

    move-object v3, v5

    move-object v5, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v6

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v4, v17

    goto/16 :goto_4

    :catch_13
    move-exception v7

    move-object/from16 v16, v3

    move-object v3, v5

    move-object v5, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v6

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v4, v17

    goto/16 :goto_4

    :catch_14
    move-exception v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object/from16 v16, v6

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v4, v16

    goto/16 :goto_4

    :catch_15
    move-exception v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object/from16 v16, v6

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v4, v16

    goto/16 :goto_4

    :catch_16
    move-exception v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object/from16 v16, v6

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v4, v16

    goto/16 :goto_4

    :cond_15
    move-object v1, v8

    goto/16 :goto_8

    :cond_16
    move-object v8, v1

    goto/16 :goto_1
.end method
