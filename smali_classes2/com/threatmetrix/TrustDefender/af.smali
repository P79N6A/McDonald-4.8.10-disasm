.class Lcom/threatmetrix/TrustDefender/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/threatmetrix/TrustDefender/af;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "fp_server"    # Ljava/lang/String;
    .param p2, "org_id"    # Ljava/lang/String;
    .param p3, "session_id"    # Ljava/lang/String;
    .param p4, "w"    # Ljava/lang/String;
    .param p5, "timeout"    # I

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/af;->a:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/af;->b:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/af;->c:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/af;->d:Ljava/lang/String;

    .line 17
    const/16 v0, 0x2710

    iput v0, p0, Lcom/threatmetrix/TrustDefender/af;->e:I

    .line 25
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/af;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/af;->b:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/threatmetrix/TrustDefender/af;->c:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/threatmetrix/TrustDefender/af;->d:Ljava/lang/String;

    .line 29
    iput p5, p0, Lcom/threatmetrix/TrustDefender/af;->e:I

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 34
    const/4 v8, 0x0

    .line 35
    .local v8, "socket":Ljava/net/Socket;
    const/4 v5, 0x0

    .line 36
    .local v5, "out":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 37
    .local v6, "output":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    .line 40
    .local v3, "input":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/net/Socket;

    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/af;->a:Ljava/lang/String;

    const/16 v11, 0x1f90

    invoke-direct {v9, v10, v11}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v8    # "socket":Ljava/net/Socket;
    .local v9, "socket":Ljava/net/Socket;
    :try_start_1
    iget v10, p0, Lcom/threatmetrix/TrustDefender/af;->e:I

    invoke-virtual {v9, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 44
    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 46
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .end local v6    # "output":Ljava/io/BufferedWriter;
    .local v7, "output":Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    .end local v3    # "input":Ljava/io/BufferedReader;
    .local v4, "input":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<handle sig=FF44EE55 session_id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/threatmetrix/TrustDefender/af;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " org_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/threatmetrix/TrustDefender/af;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " w="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/threatmetrix/TrustDefender/af;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " />"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 54
    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 56
    const/4 v10, 0x1

    new-array v1, v10, [C

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-char v11, v1, v10

    .line 57
    .local v1, "hashes":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v10, 0xf

    if-ge v2, v10, :cond_0

    .line 59
    invoke-virtual {v7, v1}, Ljava/io/BufferedWriter;->write([C)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 76
    .end local v1    # "hashes":[C
    .end local v2    # "i":I
    :cond_1
    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    const-string v11, "Tidying up"

    invoke-static {v10, v11}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_4
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 89
    :goto_1
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 101
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v6    # "output":Ljava/io/BufferedWriter;
    move-object v8, v9

    .line 116
    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    :cond_2
    :goto_3
    return-void

    .line 85
    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v6    # "output":Ljava/io/BufferedWriter;
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    goto :goto_1

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    goto :goto_2

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v6    # "output":Ljava/io/BufferedWriter;
    move-object v8, v9

    .line 113
    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_3

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 67
    .local v0, "e":Ljava/net/UnknownHostException;
    :goto_4
    :try_start_7
    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    const-string v11, "Failed to connect to the fp server"

    invoke-static {v10, v11, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 76
    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    const-string v11, "Tidying up"

    invoke-static {v10, v11}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-eqz v8, :cond_3

    .line 83
    :try_start_8
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 89
    :cond_3
    :goto_5
    if-eqz v6, :cond_4

    .line 95
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 101
    :cond_4
    :goto_6
    if-eqz v3, :cond_2

    .line 107
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    .line 111
    :catch_4
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    goto :goto_3

    .line 87
    :catch_5
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    goto :goto_5

    .line 99
    :catch_6
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    goto :goto_6

    .line 69
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_7
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    const-string v11, "Failed to read/write to the fp server"

    invoke-static {v10, v11, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 76
    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    const-string v11, "Tidying up"

    invoke-static {v10, v11}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-eqz v8, :cond_5

    .line 83
    :try_start_c
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 89
    :cond_5
    :goto_8
    if-eqz v6, :cond_6

    .line 95
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 101
    :cond_6
    :goto_9
    if-eqz v3, :cond_2

    .line 107
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_3

    .line 111
    :catch_8
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    goto :goto_3

    .line 87
    :catch_9
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    goto :goto_8

    .line 99
    :catch_a
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    goto :goto_9

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_a
    sget-object v11, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    const-string v12, "Tidying up"

    invoke-static {v11, v12}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-eqz v8, :cond_7

    .line 83
    :try_start_f
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 89
    :cond_7
    :goto_b
    if-eqz v6, :cond_8

    .line 95
    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 101
    :cond_8
    :goto_c
    if-eqz v3, :cond_9

    .line 107
    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 113
    :cond_9
    :goto_d
    throw v10

    .line 87
    :catch_b
    move-exception v11

    sget-object v11, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    goto :goto_b

    .line 99
    :catch_c
    move-exception v11

    sget-object v11, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    goto :goto_c

    .line 111
    :catch_d
    move-exception v11

    sget-object v11, Lcom/threatmetrix/TrustDefender/af;->f:Ljava/lang/String;

    goto :goto_d

    .line 76
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_a

    .end local v6    # "output":Ljava/io/BufferedWriter;
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v6    # "output":Ljava/io/BufferedWriter;
    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_a

    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v6    # "output":Ljava/io/BufferedWriter;
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catchall_3
    move-exception v10

    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v6    # "output":Ljava/io/BufferedWriter;
    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_a

    .line 69
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catch_e
    move-exception v0

    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_7

    .end local v6    # "output":Ljava/io/BufferedWriter;
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catch_f
    move-exception v0

    move-object v6, v7

    .end local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v6    # "output":Ljava/io/BufferedWriter;
    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_7

    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v6    # "output":Ljava/io/BufferedWriter;
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catch_10
    move-exception v0

    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v6    # "output":Ljava/io/BufferedWriter;
    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto :goto_7

    .line 65
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catch_11
    move-exception v0

    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto/16 :goto_4

    .end local v6    # "output":Ljava/io/BufferedWriter;
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catch_12
    move-exception v0

    move-object v6, v7

    .end local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v6    # "output":Ljava/io/BufferedWriter;
    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto/16 :goto_4

    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v6    # "output":Ljava/io/BufferedWriter;
    .end local v8    # "socket":Ljava/net/Socket;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v9    # "socket":Ljava/net/Socket;
    :catch_13
    move-exception v0

    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "output":Ljava/io/BufferedWriter;
    .restart local v6    # "output":Ljava/io/BufferedWriter;
    move-object v8, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v8    # "socket":Ljava/net/Socket;
    goto/16 :goto_4
.end method
