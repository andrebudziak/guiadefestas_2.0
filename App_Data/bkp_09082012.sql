USE [guiadefestacuritiba_]
GO
/****** Object:  User [uguiadefestacuritiba]    Script Date: 08/09/2012 10:31:18 ******/
CREATE USER [uguiadefestacuritiba] FOR LOGIN [uguiadefestacuritiba] WITH DEFAULT_SCHEMA=[uguiadefestacuritiba]
GO
/****** Object:  Schema [uguiadefestacuritiba]    Script Date: 08/09/2012 10:30:24 ******/
CREATE SCHEMA [uguiadefestacuritiba] AUTHORIZATION [uguiadefestacuritiba]
GO
/****** Object:  Table [dbo].[sinonimo_anuncio]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinonimo_anuncio](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[codigo_sinonimo] [int] NOT NULL,
	[codigo_anuncio] [int] NOT NULL,
 CONSTRAINT [PK_sinonimo_anuncio] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_sinonimo_anuncio] ON [dbo].[sinonimo_anuncio] 
(
	[codigo_anuncio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_sinonimo_codigo_sinonimo] ON [dbo].[sinonimo_anuncio] 
(
	[codigo_sinonimo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[sinonimo_anuncio] ON
INSERT [dbo].[sinonimo_anuncio] ([codigo], [codigo_sinonimo], [codigo_anuncio]) VALUES (1, 2, 7)
INSERT [dbo].[sinonimo_anuncio] ([codigo], [codigo_sinonimo], [codigo_anuncio]) VALUES (2, 5, 7)
INSERT [dbo].[sinonimo_anuncio] ([codigo], [codigo_sinonimo], [codigo_anuncio]) VALUES (3, 5, 86)
INSERT [dbo].[sinonimo_anuncio] ([codigo], [codigo_sinonimo], [codigo_anuncio]) VALUES (4, 5, 206)
INSERT [dbo].[sinonimo_anuncio] ([codigo], [codigo_sinonimo], [codigo_anuncio]) VALUES (5, 5, 42)
INSERT [dbo].[sinonimo_anuncio] ([codigo], [codigo_sinonimo], [codigo_anuncio]) VALUES (6, 2, 42)
INSERT [dbo].[sinonimo_anuncio] ([codigo], [codigo_sinonimo], [codigo_anuncio]) VALUES (7, 2, 206)
INSERT [dbo].[sinonimo_anuncio] ([codigo], [codigo_sinonimo], [codigo_anuncio]) VALUES (8, 4, 206)
INSERT [dbo].[sinonimo_anuncio] ([codigo], [codigo_sinonimo], [codigo_anuncio]) VALUES (9, 8, 7)
INSERT [dbo].[sinonimo_anuncio] ([codigo], [codigo_sinonimo], [codigo_anuncio]) VALUES (10, 9, 7)
INSERT [dbo].[sinonimo_anuncio] ([codigo], [codigo_sinonimo], [codigo_anuncio]) VALUES (11, 7, 86)
SET IDENTITY_INSERT [dbo].[sinonimo_anuncio] OFF
/****** Object:  Table [dbo].[sinonimo]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sinonimo](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[sinonimo] [varchar](150) NOT NULL,
 CONSTRAINT [PK_sinonimo] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sinonimo] ON
INSERT [dbo].[sinonimo] ([codigo], [sinonimo]) VALUES (2, N'festas')
INSERT [dbo].[sinonimo] ([codigo], [sinonimo]) VALUES (3, N'ben 10')
INSERT [dbo].[sinonimo] ([codigo], [sinonimo]) VALUES (4, N'princesas')
INSERT [dbo].[sinonimo] ([codigo], [sinonimo]) VALUES (5, N'salão grande')
INSERT [dbo].[sinonimo] ([codigo], [sinonimo]) VALUES (6, N'video games')
INSERT [dbo].[sinonimo] ([codigo], [sinonimo]) VALUES (7, N'salão pequeno')
INSERT [dbo].[sinonimo] ([codigo], [sinonimo]) VALUES (8, N'salão com dança')
INSERT [dbo].[sinonimo] ([codigo], [sinonimo]) VALUES (9, N'salão com jogos')
SET IDENTITY_INSERT [dbo].[sinonimo] OFF
/****** Object:  Table [dbo].[oferta]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[oferta](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](100) NULL,
	[miniatura] [varchar](200) NULL,
	[oferta] [varchar](200) NULL,
	[desconto] [varchar](100) NULL,
	[de] [varchar](100) NULL,
	[por] [varchar](100) NULL,
	[economia] [varchar](100) NULL,
	[validade] [datetime] NULL,
	[texto] [text] NULL,
	[codigo_anuncio] [int] NULL,
	[status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[oferta] ON
INSERT [dbo].[oferta] ([codigo], [descricao], [miniatura], [oferta], [desconto], [de], [por], [economia], [validade], [texto], [codigo_anuncio], [status]) VALUES (1, N'1 Torta Média + 100 (salgados ou doces)', N'13334739645804.jpg', N'13334739645804.jpg', N'65%', N'R$ 170,00', N'R$ 59,90', N'R$ 110,00', CAST(0x0000A06200000000 AS DateTime), N'<table border="0" cellpadding="0" cellspacing="0" height="295" width="800">
 <tbody>
  <tr>
   <td valign="top" width="785">
    <b><font face="Tahoma" size="4">Kit Festa Sabor Del&iacute;cia</font></b>
    <p style="margin-top: 0px; margin-bottom: 5px;">
     <font face="Tahoma" size="4"><b>1 Torta M&eacute;dia + 100 (salgados ou doces)</b></font></p>
    <p align="justify">
     <font face="Tahoma" size="2">Quem resiste ao sabor de tortas feitas com muito amor, carinho e dedica&ccedil;&atilde;o, que garantem qualidade dos produtos? &Eacute; assim que a Kit Festa Sabor Del&iacute;cia mant&eacute;m seus fieis clientes, dedicando a eles saborosas tortas doces e salgadas, al&eacute;m dos seus diversos doces e salgados que v&atilde;o do mais comum at&eacute; os mais finos. Kit Festa sabor Del&iacute;cia chegou para facilitar a sua vida. Estamos fortemente focados em satisfazer as exig&ecirc;ncias e expectativas de nossos clientes com rela&ccedil;&atilde;o a sabor e qualidade do que produzimos, e para mantermos essa qualidade nossos produtos s&atilde;o feitos com ingredientes selecionados e com uma camada caprichada nos seus recheios.</font></p>
    <p>
     <font face="Tahoma" size="2"><b>ENDERE&Ccedil;O</b><br />
     Avenida Constela&ccedil;&atilde;o, N.105, Monte Serrat, Rua Professor Go&eacute;s Calmon, n. 50, S&atilde;o Caetano </font></p>
    <p>
     <font face="Tahoma" size="2"><b>TELEFONE</b><br />
     (71) 3214.6599 / 3316.3447 </font></p>
    <p>
     <font face="Tahoma" size="2"><b>E-MAIL</b><br />
     <a href="mailto:kitfestasabordelicia@hotmail.com" style="text-decoration: none;"><font color="#000000">kitfestasabordelicia@hotmail.com</font></a></font></p>
    <p>
     &nbsp;</p>
    <table border="0" cellpadding="0" cellspacing="0" width="785">
     <tbody>
      <tr>
       <td valign="top" width="375">
        <p style="margin-top: 0px; margin-bottom: 10px;">
         <b><font face="Tahoma" size="4">Destaque da Oferta</font></b></p>
        <ul>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Kit Festa Sabor Del&iacute;cia</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Experi&ecirc;ncia no segmento;</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">1 torta m&eacute;dia de di&acirc;metro 30cm;</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">composi&ccedil;&atilde;o da quantidade, dentre as 100 unidades do kit, de doces e salgados fica a escolha do cliente;</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Op&ccedil;&otilde;es de sabor do bolo: Prest&iacute;gio, Coco, Floresta Negra, Baunilha, Mista, Chocolate e Brigadeiro;</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Op&ccedil;&otilde;es de recheio da torta: Coco, Chocolate, Ameixa, Doce de leite (exceto para os bolos Floresta negra e Prestigio que tem recheio pr&oacute;prio);</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Op&ccedil;&otilde;es de Doces: Brigadeiro, Casadinho, Beijinho, Prestigio, Moranguinho, Trufa de Maracuj&aacute;, Trufa de Lim&atilde;o, Trufa de Brigadeiro, Trufa de Coco, Trufa de Ameixa, Trufa de Prest&iacute;gio;</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Op&ccedil;&otilde;es de salgados: Quibe, Coxinha, Croquete de carne, Croquete de Queijo e Presunto, Croquete de Frango), Boliviano, Empada de Queijo, Empada de Carne, Empada de Frango, Bolinho de Camar&atilde;o, Risole de Queijo e presunto, Risole de Camar&atilde;o, Risole de Carne Risole de Frango, Pastel de Forno de Frango, Pastel de Forno de Camar&atilde;o;</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Pode ser retirado no local ou delivery (+ taxas); </font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Atendimento personalizado.</font></p>
         </li>
        </ul>
       </td>
       <td valign="top" width="35">
        &nbsp;</td>
       <td valign="top" width="375">
        <p style="margin-top: 0px; margin-bottom: 10px;">
         <b><font face="Tahoma" size="4">Regulamento da Oferta</font></b></p>
        <ul>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">1 torta m&eacute;dia + 100 doces ou salgados. De R$ 170,00 por R$ 59,50;</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Cupom v&aacute;lido por 11.04.2012 a 11.10.2012;</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Taxas Delivery sob consulta;</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Agendamento deve ser realizado com 48h de anteced&ecirc;ncia;</font></p>
         </li>
         <li>
          <p style="margin-top: 0px; margin-bottom: 10px;">
           <font face="Tahoma" size="2">Indispens&aacute;vel a entrega do cupom no momento da utiliza&ccedil;&atilde;o da oferta; </font></p>
         </li>
        </ul>
       </td>
      </tr>
     </tbody>
    </table>
   </td>
   <td width="15">
    &nbsp;
    <p>
     &nbsp;</p>
   </td>
  </tr>
 </tbody>
</table>
', 204, 1)
INSERT [dbo].[oferta] ([codigo], [descricao], [miniatura], [oferta], [desconto], [de], [por], [economia], [validade], [texto], [codigo_anuncio], [status]) VALUES (2, N'1 Torta Média', N'torta.jpg', N'torta.jpg', N'45%', N'R$ 49,90', N'R$ 29,90', N'R$ 20,00', CAST(0x0000A06200000000 AS DateTime), N'', 204, 1)
SET IDENTITY_INSERT [dbo].[oferta] OFF
/****** Object:  Table [dbo].[logo]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logo](
	[codigo] [int] NULL,
	[descricao] [nvarchar](200) NULL,
	[codigo_anuncio] [int] NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_codigo] ON [dbo].[logo] 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_codigo_anuncio] ON [dbo].[logo] 
(
	[codigo_anuncio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (236, N'276.jpg', 276)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (3, N'195.jpg', 195)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (2, N'194.jpg', 194)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (5, N'4.jpg', 4)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (18, N'3.jpg', 3)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (9, N'86.jpg', 86)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (11, N'50.jpg', 50)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (13, N'16.jpg', 16)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (15, N'17.jpg', 17)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (16, N'173.jpg', 173)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (19, N'85.jpg', 85)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (20, N'1.jpg', 1)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (21, N'197.jpg', 197)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (24, N'117.jpg', 117)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (25, N'22.jpg', 22)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (27, N'198.jpg', 198)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (28, N'93.jpg', 93)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (29, N'132.jpg', 132)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (30, N'199.jpg', 199)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (32, N'143.jpg', 143)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (34, N'157.jpg', 157)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (35, N'201.jpg', 201)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (37, N'141.jpg', 141)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (39, N'106.jpg', 106)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (42, N'54.jpg', 54)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (43, N'24.jpg', 24)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (44, N'204.jpg', 204)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (45, N'25.jpg', 25)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (47, N'206.jpg', 206)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (49, N'21.jpg', 21)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (50, N'95.jpg', 95)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (51, N'84.jpg', 84)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (53, N'116.jpg', 116)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (54, N'244.jpg', 244)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (57, N'37.jpg', 37)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (59, N'207.jpg', 207)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (60, N'208.jpg', 208)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (61, N'209.jpg', 209)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (63, N'211.jpg', 211)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (64, N'192.jpg', 192)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (65, N'138.jpg', 138)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (66, N'212.jpg', 212)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (67, N'151.jpg', 151)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (69, N'8.jpg', 8)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (70, N'52.jpg', 52)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (71, N'33.jpg', 33)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (73, N'188.jpg', 188)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (74, N'127.jpg', 127)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (76, N'125.jpg', 125)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (77, N'213.jpg', 213)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (78, N'36.jpg', 36)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (80, N'74.jpg', 74)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (82, N'246.jpg', 246)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (83, N'38.jpg', 38)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (84, N'149.jpg', 149)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (87, N'44.jpg', 44)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (89, N'247.jpg', 247)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (92, N'215.jpg', 215)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (93, N'191.jpg', 191)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (94, N'53.jpg', 53)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (96, N'47.jpg', 47)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (98, N'154.jpg', 154)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (99, N'12.jpg', 12)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (101, N'248.jpg', 248)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (102, N'179.jpg', 179)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (103, N'217.jpg', 217)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (105, N'27.jpg', 27)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (107, N'219.jpg', 219)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (108, N'218.jpg', 218)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (109, N'35.jpg', 35)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (110, N'60.jpg', 60)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (111, N'26.jpg', 26)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (112, N'61.jpg', 61)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (113, N'62.jpg', 62)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (114, N'133.jpg', 133)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (116, N'99.jpg', 99)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (117, N'221.jpg', 221)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (118, N'63.jpg', 63)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (120, N'64.jpg', 64)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (121, N'41.jpg', 41)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (123, N'249.jpg', 249)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (125, N'67.jpg', 67)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (127, N'68.jpg', 68)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (128, N'69.jpg', 69)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (130, N'339.jpg', 70)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (132, N'139.jpg', 139)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (134, N'76.jpg', 76)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (135, N'253.jpg', 253)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (136, N'187.jpg', 187)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (138, N'185.jpg', 185)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (140, N'224.jpg', 224)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (141, N'34.jpg', 34)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (142, N'126.jpg', 126)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (144, N'225.jpg', 225)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (146, N'129.jpg', 129)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (147, N'183.jpg', 183)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (148, N'83.jpg', 83)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (149, N'92.jpg', 92)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (150, N'227.jpg', 227)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (151, N'193.jpg', 193)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (152, N'228.jpg', 228)
GO
print 'Processed 100 total records'
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (155, N'15.jpg', 15)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (156, N'101.jpg', 101)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (157, N'260.jpg', 260)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (193, N'148.jpg', 148)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (194, N'255.jpg', 255)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (197, N'90.jpg', 90)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (198, N'160.jpg', 160)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (200, N'122.jpg', 122)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (202, N'238.jpg', 238)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (203, N'124.jpg', 124)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (205, N'136.jpg', 136)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (206, N'239.jpg', 239)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (209, N'123.jpg', 123)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (210, N'79.jpg', 79)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (211, N'10.jpg', 10)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (216, N'144.jpg', 144)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (217, N'145.jpg', 145)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (218, N'243.jpg', 243)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (220, N'262.jpg', 262)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (221, N'263.jpg', 263)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (232, N'265.jpg', 265)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (226, N'267.jpg', 267)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (225, N'266.jpg', 266)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (227, N'268.jpg', 268)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (228, N'271.jpg', 271)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (233, N'273.jpg', 273)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (235, N'275.jpg', 275)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (4, N'171.jpg', 171)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (6, N'5.jpg', 5)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (8, N'13.jpg', 13)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (10, N'181.jpg', 181)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (12, N'11.jpg', 11)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (14, N'14.jpg', 14)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (86, N'42.jpg', 42)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (88, N'137.jpg', 137)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (91, N'46.jpg', 46)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (97, N'48.jpg', 48)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (100, N'216.jpg', 216)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (222, N'264.jpg', 264)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (231, N'272.jpg', 272)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (234, N'274.jpg', 274)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (17, N'196.jpg', 196)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (160, N'131.jpg', 131)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (161, N'256,jpg', 256)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (162, N'82.jpg', 82)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (163, N'65.jpg', 65)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (164, N'51.jpg', 51)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (165, N'229.jpg', 229)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (166, N'230.jpg', 230)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (167, N'231.jpg', 231)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (169, N'128.jpg', 128)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (170, N'146.jpg', 146)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (171, N'114.jpg', 114)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (172, N'73.jpg', 73)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (173, N'258.jpg', 258)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (174, N'182.jpg', 182)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (175, N'121.jpg', 121)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (176, N'110.jpg', 110)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (177, N'112.jpg', 112)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (178, N'259.jpg', 259)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (179, N'113.jpg', 113)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (180, N'257.jpg', 257)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (181, N'71.jpg', 71)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (182, N'232.jpg', 232)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (183, N'177.jpg', 177)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (184, N'115.jpg', 115)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (185, N'233.jpg', 233)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (186, N'234.jpg', 234)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (187, N'49.jpg', 49)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (188, N'235.jpg', 235)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (189, N'140.jpg', 140)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (190, N'119.jpg', 119)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (191, N'87.jpg', 87)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (192, N'81.jpg', 81)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (195, N'236.jpg', 236)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (196, N'237.jpg', 237)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (199, N'252.jpg', 252)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (201, N'89.jpg', 89)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (204, N'134.jpg', 134)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (207, N'240.jpg', 240)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (208, N'241.jpg', 241)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (212, N'184.jpg', 184)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (213, N'242.jpg', 242)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (214, N'118.jpg', 118)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (215, N'142.jpg', 142)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (219, N'7.jpg', 7)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (22, N'88.jpg', 88)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (26, N'56.jpg', 56)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (31, N'200.jpg', 200)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (33, N'19.jpg', 19)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (36, N'159.jpg', 159)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (38, N'202.jpg', 202)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (40, N'66.jpg', 66)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (41, N'203.jpg', 203)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (46, N'205.jpg', 205)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (48, N'135.jpg', 135)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (52, N'39.jpg', 39)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (55, N'156.jpg', 156)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (56, N'176.jpg', 176)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (58, N'245.jpg', 245)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (62, N'210.jpg', 210)
GO
print 'Processed 200 total records'
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (68, N'94.jpg', 94)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (72, N'104.jpg', 104)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (75, N'30.jpg', 30)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (79, N'55.jpg', 55)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (81, N'214.jpg', 214)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (85, N'40.jpg', 40)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (90, N'80.jpg', 80)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (95, N'130.jpg', 130)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (106, N'18.jpg', 18)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (229, N'270.jpg', 270)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (230, N'269.jpg', 269)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (23, N'6.jpg', 6)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (104, N'45.jpg', 45)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (115, N'220.jpg', 220)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (119, N'20.jpg', 20)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (122, N'147.jpg', 147)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (124, N'250.jpg', 250)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (126, N'222.jpg', 222)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (129, N'223.jpg', 223)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (131, N'72.jpg', 72)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (133, N'175.jpg', 175)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (137, N'77.jpg', 77)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (139, N'254.jpg', 254)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (143, N'2.jpg', 2)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (145, N'226.jpg', 226)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (153, N'97.jpg', 97)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (154, N'100.jpg', 100)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (158, N'261.jpg', 261)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (159, N'31.jpg', 31)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (339, N'379.jpg', 379)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (341, N'381.jpg', 381)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (342, N'382.jpg', 382)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (343, N'383.jpg', 383)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (344, N'384.jpg', 384)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (345, N'385.jpg', 385)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (346, N'386.jpg', 386)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (347, N'387.jpg', 387)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (348, N'388.jpg', 388)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (350, N'390.jpg', 390)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (352, N'392.jpg', 392)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (353, N'394.jpg', 394)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (356, N'396.jpg', 396)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (357, N'397.jpg', 397)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (360, N'400.jpg', 400)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (361, N'401.jpg', 401)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (363, N'403.jpg', 403)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (365, N'404.jpg', 404)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (366, N'405.jpg', 405)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (367, N'406.jpg', 406)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (368, N'407.jpg', 407)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (370, N'409.jpg', 409)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (372, N'411.jpg', 411)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (373, N'413.jpg', 413)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (374, N'412.jpg', 412)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (375, N'414.jpg', 414)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (376, N'415.png', 415)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (378, N'417.jpg', 417)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (379, N'418.jpg', 418)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (380, N'419.jpg', 419)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (382, N'420.jpg', 420)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (309, N'349.jpg', 349)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (310, N'350.jpg', 350)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (311, N'350.jpg', 350)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (313, N'352.jpg', 352)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (314, N'354.jpg', 354)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (315, N'355.jpg', 355)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (316, N'356.jpg', 356)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (317, N'357.jpg', 357)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (318, N'358.jpg', 358)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (319, N'359.jpg', 359)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (320, N'360.jpg', 360)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (321, N'361.jpg', 361)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (325, N'365.jpg', 365)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (322, N'362.jpg', 362)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (323, N'363.png', 363)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (324, N'364.jpg', 364)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (326, N'366.jpg', 366)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (327, N'367.jpg', 367)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (328, N'368.jpg', 368)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (329, N'369.jpg', 369)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (330, N'370.jpg', 370)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (332, N'372.jpg', 372)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (333, N'373.jpg', 373)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (334, N'374.jpg', 374)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (335, N'375.jpg', 375)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (336, N'376.jpg', 376)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (337, N'377.jpg', 377)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (338, N'378.jpg', 378)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (340, N'380.jpg', 380)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (351, N'391.jpg', 391)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (355, N'395.jpg', 395)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (362, N'402.JPG', 402)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (349, N'389.png', 389)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (364, N'403.jpg', 403)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (354, N'393.jpg', 393)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (240, N'279.jpg', 279)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (241, N'281.jpg', 281)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (242, N'283.jpg', 283)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (243, N'284.jpg', 284)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (244, N'282.jpg', 282)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (245, N'285.jpg', 285)
GO
print 'Processed 300 total records'
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (246, N'286.jpg', 286)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (247, N'287.jpg', 287)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (248, N'288.jpg', 288)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (250, N'290.jpg', 290)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (251, N'291.jpg', 291)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (252, N'292.jpg', 292)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (253, N'293.jpg', 293)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (254, N'295.jpg', 295)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (255, N'294.jpg', 294)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (256, N'296.jpg', 296)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (257, N'297.jpg', 297)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (258, N'298.jpg', 298)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (259, N'299.jpg', 299)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (260, N'300.jpg', 300)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (261, N'301.jpg', 301)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (262, N'302.jpg', 302)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (263, N'303.jpg', 303)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (264, N'304.jpg', 304)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (265, N'305.jpg', 305)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (266, N'306.jpg', 306)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (267, N'307.jpg', 307)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (268, N'308.jpg', 308)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (270, N'310.jpg', 310)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (271, N'311.jpg', 311)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (272, N'312.jpg', 312)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (273, N'314.jpg', 314)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (274, N'313.jpg', 313)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (275, N'315.jpg', 315)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (276, N'316.jpg', 316)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (277, N'317.jpg', 317)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (278, N'318.jpg', 318)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (279, N'319.jpg', 319)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (280, N'320.jpg', 320)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (281, N'321.jpg', 321)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (282, N'324.jpg', 324)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (283, N'323.jpg', 323)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (284, N'322.jpg', 322)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (285, N'325.jpg', 325)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (286, N'327.jpg', 327)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (287, N'328.jpg', 328)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (288, N'329.jpg', 329)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (289, N'330.jpg', 330)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (290, N'331.jpg', 331)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (291, N'332.jpg', 332)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (292, N'333.jpg', 333)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (293, N'334.jpg', 334)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (294, N'335.jpg', 335)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (295, N'336.jpg', 336)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (296, N'337.jpg', 337)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (297, N'338.jpg', 338)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (298, N'339.jpg', 339)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (302, N'341.jpg', 341)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (303, N'343.jpg', 343)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (304, N'344.jpg', 344)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (306, N'346.jpg', 346)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (307, N'326.jpg', 326)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (237, N'277.jpg', 277)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (238, N'278.jpg', 278)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (239, N'280.jpg', 280)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (249, N'289.jpg', 289)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (269, N'309.jpg', 309)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (299, N'342.jpg', 342)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (300, N'340.jpg', 175)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (305, N'345.jpg', 345)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (308, N'348.jpg', 348)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (301, N'340.jpg', 340)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (312, N'351.jpg', 351)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (331, N'371.jpg', 371)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (358, N'399.jpg', 399)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (359, N'398.jpg', 398)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (381, N'420.jpg', 157)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (369, N'408.jpg', 408)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (371, N'410.png', 410)
INSERT [dbo].[logo] ([codigo], [descricao], [codigo_anuncio]) VALUES (377, N'416.jpg', 416)
/****** Object:  Table [dbo].[local_banner]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[local_banner](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](50) NULL,
	[prioridade] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[local_banner] ([codigo], [descricao], [prioridade]) VALUES (1, N'Principal', NULL)
INSERT [dbo].[local_banner] ([codigo], [descricao], [prioridade]) VALUES (2, N'Lateral Direito', NULL)
INSERT [dbo].[local_banner] ([codigo], [descricao], [prioridade]) VALUES (3, N'Superior - Lado Direito', NULL)
INSERT [dbo].[local_banner] ([codigo], [descricao], [prioridade]) VALUES (4, N'Superior Categoria - Central', NULL)
INSERT [dbo].[local_banner] ([codigo], [descricao], [prioridade]) VALUES (5, N'Superior Categoria - Lado Esquerdo', NULL)
INSERT [dbo].[local_banner] ([codigo], [descricao], [prioridade]) VALUES (6, N'Superior Central', NULL)
INSERT [dbo].[local_banner] ([codigo], [descricao], [prioridade]) VALUES (7, N'Superior - Lado Esquerdo', NULL)
INSERT [dbo].[local_banner] ([codigo], [descricao], [prioridade]) VALUES (8, N'Superior Categoria - Lado Direito', NULL)
INSERT [dbo].[local_banner] ([codigo], [descricao], [prioridade]) VALUES (9, N'Superior Central (Index)', NULL)
INSERT [dbo].[local_banner] ([codigo], [descricao], [prioridade]) VALUES (10, N'Superior Lado Esquerdo (Index)', NULL)
INSERT [dbo].[local_banner] ([codigo], [descricao], [prioridade]) VALUES (11, N'Superior Lado Direito (Index)', NULL)
/****** Object:  Table [dbo].[link]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[link](
	[codigo] [int] NULL,
	[codigo_anuncio] [int] NULL,
	[orkut] [varchar](200) NULL,
	[facebook] [varchar](200) NULL,
	[twitter] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [idx_link_anuncio] ON [dbo].[link] 
(
	[codigo_anuncio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (44, 253, N'', N'http://www.facebook.com/#!/profile.php?id=100001942384399', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (47, 388, N'', N'https://www.facebook.com/pages/Viviane-Varhau-Fotografia/206907756043988', N'https://twitter.com/#!/ViviVarhau')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (48, 401, N'', N'https://www.facebook.com/pages/Viviane-Varhau-Fotografia/206907756043988', N'https://twitter.com/#!/ViviVarhau')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (49, 79, N'', N'http://pt-br.facebook.com/trevisartestudio', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (51, 405, N'http://www.orkut.com.br/Main#Profile?uid=2104090652899577035', N'http://www.facebook.com/profile.php?id=100003935234231&ref=tn_tnmn ', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (52, 406, N'', N'http://www.facebook.com/algodaodoce.fotografia', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (53, 413, N'', N'http://www.facebook.com/#!/aline.carvalhoatelier', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (54, 411, N'', N'http://www.facebook.com/vibe.cwb', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (55, 418, N'', N'http://www.facebook.com/#!/espacoalegria.eventos', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (56, 420, N'', N'https://www.facebook.com/atomofotoevideo', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (1, 227, N'http://www.orkut.com.br/Main#Profile?rl=lo&uid=10751732321620627588', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (2, 266, N'http://www.orkut.com.br/Main#Profile?rl=mp&uid=2513398699514913528', N'http://www.facebook.com/PinguinhoKids', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (3, 114, N'http://www.orkut.com.br/Main#Profile?rl=ls&uid=5159383617969606933', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (4, 271, N'http://www.orkut.com.br/Main#Profile?uid=2127705939372796&rl=t', N'http://www.facebook.com/home.php?#!/profile.php?id=100000680451013', N'http://twitter.com/cataventofest')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (8, 110, N'http://www.orkut.com.br/Main#Profile?rl=mp&uid=266257505765356054', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (7, 244, N'http://www.orkut.com.br/Main#Profile?uid=17440732589221800901', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (9, 280, N'', N'http://www.facebook.com/pages/Evandro-Varhau-Fotografia/130606360330169', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (10, 284, N'http://www.orkut.com.br/Main#Profile.aspx?origin=is&uid=3089083035336849792', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (11, 201, N'http://www.orkut.com.br/Main#Profile?uid=414967410695726554', N'http://pingodemelbiscuit.hdfree.com.br', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (12, 121, N'http://www.orkut.com.br/Main#Profile?rl=mp&uid=12322106106921912493', N'http://www.facebook.com/mokwastudio', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (13, 267, N'http://www.orkut.com.br/Main#Profile?uid=15641929048952935479', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (14, 218, N'http://www.orkut.com.br/Main#Profile?uid=14833053632926274176', N'http://facebook.com/koval.fotografias', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (15, 131, N'http://www.orkut.com.br/Main#Profile?rl=mp&uid=5431924009902119052', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (16, 265, N'http://www.orkut.com.br/Main#Profile?rl=ls&uid=15908669216635955710', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (17, 309, N'http://www.orkut.com.br/Main#Profile?rl=ls&uid=10189615542471592691', N'facebook.com/artfestas.analu', N'http://twitter.com/Artfestas_analu')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (18, 308, N'http://www.orkut.com.br/Main#Home?rl=t', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (19, 302, N'http://www.orkut.com.br/Main#Profile.aspx?origin=is&uid=8846678779246844907', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (20, 310, N'http://www.orkut.com.br/Main#Profile?uid=2120032946772589628', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (21, 177, N'http://www.orkut.com.br/Main#Profile?uid=16263342251060183328 ', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (22, 197, N'http://www.orkut.com.br/Main#Profile?uid=13595694061759705494&rl=t', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (23, 262, N'http://www.orkut.com.br/Main#Profile?uid=16736261861966209995', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (24, 89, N'http://www.orkut.com.br/Main#Profile?uid=14958476705589503477', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (25, 336, N'http://www.orkut.com.br/Profile.aspx?uid=728012346877082668 ', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (26, 335, N'http://www.orkut.com.br/Community?cmm=108590678', N'http://www.facebook.com/pages/The-Original-Funny-Bands/178528898829503', N'http://twitter.com/#!/FunnyBandsBr')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (27, 182, N'http://www.orkut.com.br/Main#Profile?uid=5750267889952559511', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (28, 69, N'http://www.orkut.com.br/Main#Profile?uid=13247667180057792218', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (29, 344, N'', N'http://www.facebook.com/profile.php?id=100000110151030', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (30, 341, N'', N'http://www.facebook.com/profile.php?id=100002448520488&v=info', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (31, 357, N'http://www.orkut.com.br/Main#Profile?uid=10808552902007811931', N'', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (32, 362, N'', N'https://www.facebook.com/pages/Sublime-Salgados-Doces-e-Bolos/231841496842874?sk=info', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (33, 370, N'', N'http://www.facebook.com/pages/Fabr%C3%ADcia-Sampaio-Fotografia/175788259171525', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (34, 148, N'http://www.orkut.com.br/Main#Profile?uid=12867866789945970424', N'http://www.facebook.com/roseli.takla', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (35, 134, N'', N'http://www.facebook.com/pages/STAMPA-PHOTO-Fotografia/286665338039903?ref=ts&sk=wall', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (36, 196, N'https://accounts.google.com/ServiceLogin?service=orkut&hl=pt-BR&rm=false&continue=http://www.orkut.com/RedirLogin?msg%3D0%26page%3Dhttp://www.orkut.com.br/Home&cd=BR&passive=true&skipvpage=true&sendve', N'http://pt-br.facebook.com/people/Aquarela-Kids-Buffet-Buffet/100001023922198', N'http://twitter.com/#!/aquarelakidsbuf')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (37, 374, N'http://www.orkut.com.br/Main#Profile?uid=3870999027372721241', N'http://www.facebook.com/communitystandards#!/profile.php?id=100002666250473', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (38, 376, N'', N'http://www.facebook.com/novaimagem.fotografias', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (39, 385, N'', N'https://www.facebook.com/pages/Sunny-Festas/371480532864737 ', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (40, 387, N'', N'http://www.facebook.com/pages/Aline-Muller-Fotografia/242210422532557?ref=tn_tnmn', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (41, 389, N'http://www.orkut.com.br/Main#Profile?uid=7389042329554101723', N'http://www.facebook.com/pages/Eli-Emi-Doce-Arte/240943469321858', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (42, 392, N'', N'https://www.facebook.com/InovaSomELuzLtda', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (43, 252, N'', N'http://www.facebook.com/scalasom?ref=tn_tnmn', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (45, 397, N'', N'http://www.facebook.com/profile.php?id=100002045568314', N'https://twitter.com/#!/tucofestas')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (46, 398, N'', N'http://www.facebook.com/#!/pages/Treszerocinco-Floresventos/205313646240751', N'')
INSERT [dbo].[link] ([codigo], [codigo_anuncio], [orkut], [facebook], [twitter]) VALUES (50, 402, N'', N'www.facebook.com/especialitta', N'')
/****** Object:  Table [dbo].[destaque]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destaque](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[destaque] [text] NULL,
	[status] [int] NULL,
	[tipo_destaque] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[destaque] ON
INSERT [dbo].[destaque] ([codigo], [destaque], [status], [tipo_destaque]) VALUES (1, N'<p>
 <font color="#00a89c" face="Swis721 Hv BT" size="5">Festa Destaque . . . . . . . . . . . . . . . . . . . . . . . . . . .</font></p>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
 <tbody>
  <tr>
   <td width="304">
    <p style="margin-top: 0px; margin-bottom: 17px;">
     <img border="0" height="405" src="destaque/homes/bolotema.jpg" width="286" /></p>
   </td>
   <td valign="top">
    <p style="margin-top: 0px; margin-bottom: 4px;">
     <b><font face="Tahoma" size="4">Pinte e Comemore!</font></b></p>
    <p style="margin-top: 0px; margin-bottom: 4px;">
     <font face="Tahoma" size="2"><b>Inspira&ccedil;&atilde;o nas cores e na famosa t&eacute;cnica de aquarela.</b></font></p>
    <p align="justify" style="margin-top: 0px; margin-bottom: 9px;">
     <font face="Tahoma" size="2">Admiradora de materiais org&acirc;nicos e das artes, a decoradora Maria Carolina da Costa e Silva sempre busca novidades para compor decora&ccedil;&otilde;es de festas. Por isso, pensou no tema Aquarela, onde tintas, pinc&eacute;is, cores e tecidos foram empregados com harmonia. Para compor o cen&aacute;rio foram penduradas tiras coloridas de musseline de seda na parede, atas da mesa principal, que foi coberta com tecido de Lino bege. </font></p>
    <p align="justify" style="margin-top: 0px; margin-bottom: 9px;">
     <font face="Tahoma" size="2">Pompons de l&atilde; foram pendurados na parede onde acontecem as Oficinas de Artes, durante a festa.</font></p>
    <p align="justify" style="margin-top: 0px; margin-bottom: 9px;">
     <font face="Tahoma" size="2">Uma mesa com algumas cadeirinhas servem &agrave;s crian&ccedil;as que curtem criar seus trabalhos manuais. &ldquo;As crian&ccedil;as tamb&eacute;m adoram vestir avental, pintar e deixar a imagina&ccedil;&atilde;o rolar&rdquo;, destaca a decoradora. </font></p>
    <p align="justify" style="margin-top: 0px; margin-bottom: 9px;">
     <font face="Tahoma" size="2">O Bolo chama a aten&ccedil;&atilde;o porque tem as crian&ccedil;as pintando e brincando. </font></p>
   </td>
  </tr>
 </tbody>
</table>
<p>
 &nbsp;</p>
', 1, 1)
SET IDENTITY_INSERT [dbo].[destaque] OFF
/****** Object:  Table [dbo].[convite_categoria]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[convite_categoria](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[codigo_cliente] [int] NOT NULL,
	[codigo_convite] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[convite_categoria] ON
INSERT [dbo].[convite_categoria] ([codigo], [codigo_cliente], [codigo_convite]) VALUES (1, 3, 90)
SET IDENTITY_INSERT [dbo].[convite_categoria] OFF
/****** Object:  Table [dbo].[convite]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[convite](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[codigo_cliente] [int] NULL,
	[cep] [varchar](20) NULL,
	[bairro] [varchar](100) NULL,
	[cidade] [varchar](200) NULL,
	[endereco] [varchar](300) NULL,
	[telefone] [varchar](50) NULL,
	[email] [varchar](300) NULL,
	[site] [varchar](400) NULL,
	[status] [int] NULL,
	[descricao] [varchar](200) NULL,
	[foto] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[convite] ON
INSERT [dbo].[convite] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [descricao], [foto]) VALUES (1, 3, N'0000000', N'Santa Felicidade', N'Curitiba', N'Rua Francisco Dallalibera, 883', N'(41) 3364-7146 / 9904-1756', N'arcadenoebuffetinfantil@yahoo.com.br', N'www.arcadenoebuffet.com.br', 1, N'Parque Infantil / Salão de Festas', N'jardim (1).jpg')
SET IDENTITY_INSERT [dbo].[convite] OFF
/****** Object:  Table [dbo].[conta_receber]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[conta_receber](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[codigo_cliente] [int] NOT NULL,
	[vencimento] [datetime] NOT NULL,
	[valor] [money] NOT NULL,
	[nosso_numero] [varchar](20) NULL,
	[documento] [varchar](20) NULL,
	[observacao] [text] NULL,
	[status] [int] NOT NULL,
	[boleto] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[conta_receber] ON
INSERT [dbo].[conta_receber] ([codigo], [codigo_cliente], [vencimento], [valor], [nosso_numero], [documento], [observacao], [status], [boleto]) VALUES (1, 4, CAST(0x00009FBA00000000 AS DateTime), 49.9000, N'00004151211', N'B14151211', N' Boleto Gerado Automaticamente pelo sistema. Dia: 15/12/2011 13:49:45', 1, N'00004151211.pdf')
SET IDENTITY_INSERT [dbo].[conta_receber] OFF
/****** Object:  Table [dbo].[cliente]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[codigo] [int] NOT NULL,
	[razao_social] [varchar](200) NULL,
	[cnpj] [varchar](30) NULL,
	[cpf] [varchar](20) NULL,
	[rg] [varchar](20) NULL,
	[endereco] [varchar](300) NULL,
	[cep] [varchar](20) NULL,
	[bairro] [varchar](100) NULL,
	[cidade] [varchar](200) NULL,
	[email] [varchar](300) NULL,
	[responsavel] [varchar](200) NULL,
	[telefone] [varchar](50) NULL,
	[nome_fantasia] [varchar](200) NULL,
	[login] [varchar](100) NULL,
	[senha] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [idx_codigo] ON [dbo].[cliente] 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nome_fantasia] ON [dbo].[cliente] 
(
	[nome_fantasia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_razao_social] ON [dbo].[cliente] 
(
	[razao_social] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (276, N'Kit Festas - Eventon', N'', N'', N'', N'', N'', N'', N'', N'', N'Adriana', N'', N'Truffas Douradas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (277, N'Isabel Cristina Dantas Bomfim', N'xx', N'044.480.179-07', N'8.360.736-0', N'professora Terezinha de Camargo, 146', N'83.504-580', N'Almirante Tamandaré', N'Paraná', N'ic.bomfim@uol.com.br', N'Isabel', N'', N'Classe & Arte', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (278, N'Maria Caroline Scremin Feijó', N'XX', N'787.664.359-00', N'5.206.802.9', N'Rua Mato Grosso, 1666', N'80630-070', N'Viila Guaira', N'Curitiba', N'ciadosbaloes2010@hotmail.com', N'Caroline', N'(41) 3527-9902/9138-9902', N'Cia dos Balões', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (279, N'Adriana Fatima de Souza', N'XX', N'877.757.009-04', N'', N'Rua Cruzeiro do Oeste, 210', N'80290-190', N'Passauna', N'Curitiba', N'adrisousa1972@hotmail.com', N'Adriana', N'(41) 3285-2348', N'Sapeca e Peralta', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (280, N'Evandro Varhau dos Santos', N'XX', N'018.196.615-80', N'0943496306', N'Rua João Antunes Branco, 90, sob 06', N'82220-410', N'Barreirinha', N'Curitiba', N'varhau@gmail.com', N'Evandro', N'(41) 3379-8517 / 8852-8084', N'Evandro Varhau', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (281, N'Everaldo Carrano', N'XX', N'877.12.209-82', N'6.156.183-8', N'Rua Jasmim, 79-B', N'83535-000', N'Boa Vista 1', N'Campo Magro', N'não tem ', N'Everaldo-Cenourinha', N'(41)3274-1180/3677-7251', N'Disk Alegrias', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (282, N'Rosangela Lakosky', N'XX', N'914.875.609-15', N'6.391.554-8', N'Av Senador Salgado Filho, 3553 - LJ 04', N'81570-000', N'Uberaba', N'Curitiba', N'cumpalupasfestas@yahoo.com.br', N'Rosangela(proprietaria)', N'(41) 3618-7645 / 9672-2270', N'Cumpalupas Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (283, N'cliente 277', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Eventos MKG', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (284, N'Gizelle de Paula Guimarães', N'XX', N'006.494.439-50', N'6.796.696.1', N'Rua Francisco de Paula Guimarães, 680', N'80.540-040', N'Ahú', N'Curitiba', N'gijikasouza@hotmail.com', N'Gizelle', N'(41) 3078-2674/9949-5202/9922-8525', N'Gijica Brinquedos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (285, N'Luiz Marcio Vacilotto', N'04.543.335/0001-07', N'xx', N'92161242', N'Rua Brasilio Itiberê, 1130', N'80215-140', N'Rebouças', N'Curitiba', N'homempizza@homempizza.com.br', N'Luiz', N'(41) 3334-1515/3019-1997', N'Homem Pizza', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (286, N'Suecarol Terezinha de Abreu', N'xx', N'167314099-87', N'415889-0', N'Rua Jesuino Lopes, 63', N'80310610', N'Seminario', N'Curitiba', N'elenice_331@hotmail.com', N'Elenice', N'(41) 3274-1922', N'Girassol Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (287, N'Adelair D. Retcheski', N'xx', N'450.126.959-68', N'1866299', N'Antonio Dariva, 206', N'81220-010', N'Campo Comprido', N'Curitiba', N'adelair@terra.com.br', N'Dela / Rosana', N'(41) 3274-4005', N'Belle Chef Gastronomia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (288, N'Rui Rocha', N'08.336.652/0001-03', N'xx', N'9.421.110-7', N'Rua Alfredo Bufren, 183, ap 1107', N'80020-240', N'Centro', N'Curitiba', N'produtor9@hotmail.com', N'Rui', N'(41) 9923-8857', N'Art Inove Produções', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (289, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Xixo Festas - Decorações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (290, N'Castilho e Staszak Entretenimento Ltda', N'11412638/0001-56', N'xx', N'90505358-24', N'Rua Brigadeiro Franco, 345 apto 44', N'80430-210', N'Merces', N'Curitiba', N'maosdeceracuritiba@hotmail.com', N'Carlos Castilho', N'(41) 7816-2977', N'Mãos de Cera', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (291, N'Valdir Perpetuo Duarte', N'XX', N'111.869.288-83', N'2.085.084.6', N'Rua Paulo Jacomel, 128', N'81.570-240', N'Uberaba', N'Curitiba', N'festsom.ilumination@yahoo.com.br', N'Valdir', N'(41) 3206-2780/9672-0252', N'Festsom Curitiba', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (292, N'Eliane Ribeiro da Silva', N'xx', N'877.730.909-04', N'76649430', N'Rua desmb. Cid Campelo, 4367', N'81350-260', N'CIC', N'Curitiba', N'criandosonhos@yahoo.com.br', N'Eliane', N'(41) 3345-1801', N'Criando Sonhos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (293, N'Juliane Silva Araujo', N'xx', N'044.171.979-11', N'77494766', N'Rua Mal. Cardoso Junior, 947', N'81530-420', N'Jardim das Americas', N'Curitiba', N'juwelju@hotmail.com', N'Juliane', N'(41) 3039-9583', N'Espaço Jardins Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (312, N'Brilho Festas Ltda', N'04.607.799/0001-30', N'xx', N'xx', N'Rua Reinaldo Issberner, 535', N'82900-370', N'Cajuru', N'Curitiba', N'claude.rocha@hotmail.com', N'Claudete Rocha', N'(41)3365-8535', N'Brilho Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (295, N'Vladislau Perbiche', N'xx', N'008631819-53', N'446714', N'Rua Wanda dos Santos Mullmann 1166 bloco 4 apto 62', N'83.323-400', N'Tarumã', N'Pinhais', N'recantosaomiguel@hotmail.com', N'Adriana', N'(41) 8821 2768', N'Recanto São Miguel', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (316, N'Ligia M Ressel Buhr', N'11.634.879/0001-40', N'xx', N'xx', N'Rua Dr Bley Zornig, 3001', N'81750-430', N'Boqueirão', N'Curitiba', N'', N'artefestas10@uol.com.br', N'(41) 3039-3771/9114-5260', N'Artes Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (297, N'Priscila de Paula Souza', N'xx', N'859.283.1398-34', N'4.506.293-7/PR', N'Rua Prof.Pedro Viriato Parigot de Souza, 1900, bl 03, ap 02', N'81200-100', N'Mossunguê', N'Curitiba', N'deccore@terra.com.br', N'Priscila', N'(41) 9236-7436', N'Deccore Balões', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (298, N'Leonardo Gomez Mascaro', N'020.753.369-54', N'xx', N'xx', N'Rua Alferes Poli, 414, sl 32', N'80230-090', N'Centro', N'Curitiba', N'gomezstudio@gmail.com', N'Gomez', N'(41)3232-5194', N'Studio Gomez', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (299, N'Festa Fácil Ind Com Panificios e Confeitaria Ltda', N'06.191.297/0001-04', N'xx', N'xx', N'Rua Iris de Campos, 231', N'81220-390', N'Campo Comprido', N'Curitiba', N'contato@festafacilcongelados.com.br', N'Iwerson', N'(41) 3274-3517', N'Festa Fácil Congelados', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (300, N'Rulian Geraldo da Silva Lima', N'xx', N'010.326.369-12', N'93947576', N'Rua Pres Humberto do Alencar Castelo Branco, 1593', N'83430-000', N'JD Paulista', N'Campina Grande do Sul', N'aroma-brasil@bol.com.br', N'Rulian', N'(41) 9232-1681 / 8885-8072', N'Aroma Brasil', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (301, N'El Zimermann Com Repres Comercial Ltda', N'03.266.084/0001-06', N'xx', N'xx', N'Rua Des Wethphalen, 2555', N'80220-030', N'Rebouças', N'Curitiba', N'adegamalbec@gmail.com', N'Edson', N'(41) 3019-9131 / 9973-0584 / 9968-6113', N'Adega Malbec', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (302, N'Mariza Barchik', N'xx', N'027.023.709-77', N'70529939', N'Rua Ten Cel Servando Loyola e Silva, 851, ap24 bl06', N'82220-030', N'Barreirinha', N'Curitiba', N'mbarchik@hotmail.com', N'Mariza', N'(41) 3585-4332/8438-8232', N'Mariza e Rosana Doces ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (303, N'ALESSANDRA M. HLADCZUK BORBA ', N'xx', N'023.858.899-86', N'6253393-5', N'Av Manoel Ribas, 2132', N'80810-000', N'Merces', N'Curitiba', N'alemhb@yahoo.com.br', N'Alessandra', N'(41) 3335-3333', N'Lolly Boom Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (304, N'Tania Valentim', N'xx', N'688.590.829-00', N'4.650.826-2', N'Rua João Parolin, 320, sobrado 65', N'80220-290', N'Prado Velho', N'Curitiba', N'taniavalentimfotografias@yahoo.com.br', N'Tania', N'(41) 9618-5414', N'Tania Valentim Fotografias', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (305, N'Leoni Ricardo Tedesco', N'', N'639.311.259-04', N'xx', N'Travessa Itália, 72', N'80030-080', N'Alto da Glória', N'Curitiba', N'villabambinni@gmail.com', N'Jaqueline/Duciara/Ricardo', N'(41)3254-4194', N'Chácara Vila Dei Nonni', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (306, N'Master Noivas Com Loc de Trajes Ltda', N'07.709.927/0001-44', N'xx', N'xx', N'Rua Scharfemberg de Quadros, 2660', N'83005-090', N'Centro', N'SJ Pinhais', N'master-noivas@hotmail.com', N'Josias Cardoso', N'(41) 3556-3175', N'Master Noivas ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (307, N'RC Algarve Comercio e Transporte', N'10.341.230/0001-78', N'xx', N'xx', N'Rua Primeiro de Maio, 718', N'81810-000', N'Xaxim', N'Curitiba', N'raquel_claiton@hotmail.com', N'Raquel', N'(41)3346-8404/9675-2498/3246-8271', N'Lololy Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (318, N'Edson Lioz Mazarão', N'xx', N'020.944.069-46', N'4694098-9', N'Rua Dom Alberto Gonçalves, 556', N'80510-340', N'Mercês', N'Curitiba', N'edinhomaza@hotmail.com', N'Edson', N'(41) 3205-0406', N'Planeta Kids', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (321, N'Ana Paula Dalagrana', N'xx', N'072.821.089-43', N'10.392.623-8', N'Rua Padre Victor Dewor, 66', N'81280-100', N'Campo Comprido', N'Curitiba ', N'anapaula_dallagrana@hotmail.com', N'Ana', N'(41) 3373-3619 / 8824 -4034 / 9656-1885', N'Dj Tom & Dj Ana', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (322, N'Nilceu Martim Ribeiro', N'xx', N'200.484.249-00', N'1.032.992', N'Av da Integração, 1.000', N'82820-110', N'Bairro Alto', N'Curitiba', N'nilceu0@gmail.com', N'Nilceu', N'(41) 9101-0486', N'Salão de Festas Duponto', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (325, N'Dirceu Pavanello', N'xx', N'005.817.099-50', N'3.579.179/SC', N'Prof Luiz Carlos Pereira da Silva, 93', N'80215-360', N'Jd Botanico', N'Curitiba', N'supercrepes@hotmail.com', N'Andreia/Dirceu', N'(41) 3363-7076', N'Super Crepes', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (326, N'235-TURMA DO TIO PIPOCA REC E EVENTOS ', N'10.546.980/0001-86', N'xx', N'xx', N'Rua Mal. Humberto de A.C.Branco, 986 lj 01', N'82.530-020', N'Cristo Rei', N'Curitiba', N'contato@tiopipoca.com.br', N'Natasha', N'(41) 3044-4821/ 9946-9988 / 7817-5132', N'Queiroz de Macedo - Design de Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (328, N'Luciano de Souza', N'xx', N'027.188.009-09', N'7.124.259.5', N'Rua Catarina dos Santos da Silva, 73', N'81350-730', N'CIC', N'Curitiba', N'lucio_trakinas@hotmail.com', N'Luciano', N'(41) 3245-6608', N'Lolly Pupy Brinquedos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (371, N'ViviLu Festas', N'13.625.784/0001-95', N'xx', N'xx', N'Rua José de Oliveira Franco, 288', N'82840-000', N'Bairro Alto', N'Curitiba', N'vivi_cerimonial@hotmail.com', N'Viviani e Luciani', N'(41) 3238-0299', N'ViviLu Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (374, N'Felicce Festas', N'13.344.902/0001-97', N'xx', N'xx', N'Av. Mal. Floriano Peixoto, 6839', N'81650-000', N'Boqueirão', N'Curitiba', N'comercial@buffetbrink.com.br', N'Ana Paula', N'(41) 3527-2000 / 8833-8541', N'Buffet Brink', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (375, N'Josiane Ramos de Oliveira', N'xx', N'006.391.069-19', N'6685700-0', N'Rua Cleto da Silva 1512', N'81670450', N'Boqueirão', N'Curitiba', N'familiasanduiche@hotmail.com', N'Josiane', N'(41)3151-6033/84933166', N'Família Sanduíche', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (376, N'Paulo Cesar Garcia Fotografias', N'11.252.834/0001-00', N'xx', N'xx', N'Rua Francisco Rocha, 1691 Lj 01', N'80730-390', N'Bigorrilho', N'Curitiba', N'novaimagemfotografias@hotmail.com', N'Paulo', N'(41) 3336-4744 / 9618-7891', N'Studio Nova Imagem ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (377, N'Queila A.Bernardes-Festas e Eventos ME', N'14.465.423/0001-91', N'', N'8.918.248.9', N'Prof. Nivaldo Braga, 1635', N'82810-150', N'Capão da Imbuia', N'Curitiba', N'casquinhafestas@uol.com.br', N'Ocimar', N'(41) 3267-2380/9243-5012', N'Casquinha Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (378, N'Amabile Catarin Tavares', N'xx', N'083.698.719-50', N'9.632.623-8', N'Rua Francisco Derosso, 5325 ap. 28', N'81770-00', N'Alto Boqueirão', N'Curitiba', N'contato@convitescatarin.com.br', N'Amabile', N'(41) 3286-4525', N'Convites Catarin', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (381, N'Queila A.Bernardes-Festas e Eventos ME', N'14.465.423/0001-91', N'', N'8.928.248.9', N'Rua Guilherme Ceolin, 511', N'83321-220', N'Vargem Grande', N'Pinhais', N'tequinhafestas@hotmail.com', N'Queila Bernardes', N'(41) 3369-1884/8518-4289', N'Tequinha Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (382, N'Deliciosos - Doces Artesanais', N'12.576.206/0001-43', N'xx', N'10392804-4', N'Rua Napoleão Bonaparte, 1435 cs 01', N'82820-270', N'Bairro Alto', N'Curitiba', N'contato@deliciosos.com.br', N'Jamila', N'(41) 9207-3440', N'Deliciosos Doces Artesanais', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (383, N'Pozinho Magico Ltda', N'13.369.504/0001-25', N'xx', N'xx', N'R. Des. Westphalen, 622 sala 31', N'80.010-110', N'Centro', N'Curitiba', N'kethelin@hotmail.com', N'Kethelin', N'(41) 9146-8702', N'Pozinho Mágico ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (384, N'Vanda Maria dos Santos', N'xx', N'659.057.505-30', N'0882124242/BA', N'Rua Pretextato Taborda Junior, 1084', N'80330-090', N'Portão', N'Curitiba', N'vanndabaiana@gmail.com', N'Vannda', N'41 9822-7678 / 3643-0914', N'Vannda Baiana-Personal Chef', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (385, N'Caroline Regina Gomes Szatkowski', N'xx', N'005.854.729-04', N'6308381-0', N'Av. Getulio Vargas, 2445  loja 04', N'80240-040', N'Agua Verde', N'Curitiba', N'sunnyfestas@hotmail.com', N'Caroline', N'(41) 3077-7135/3779-7130/9650-2102', N'Sunny Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (386, N'Karine Mathias', N'', N'053.704.079-08', N'91215209', N'Rua Aracaju, 773', N'82930-080', N'Cajuru', N'Curitiba', N'karinemathisdoces@hotmail.com', N'Karin ou Karine', N'(41) 3039-8052', N'Karine Mathias', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (388, N'Sueli Aquino de Oliveira', N'xx', N'009.181.778-12', N'10830944', N'Rua Maguari, 140', N'82015-490', N'São Braz', N'Curitiba', N'salgadosdelivery@yahoo.com.br', N'Sueli', N'(41) 3273-1063', N' Casinha de Guloseimas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (389, N'Larissa Maria Bittencourt Chaves Silva', N'xx', N'050.629.434-00', N'xx', N'Rua Eng. Niepce da Silva, 290 ap. 63 bl E', N'80610-280', N'Portão', N'Curitiba', N'contato@eliemidocearte.com.br', N'Larissa', N'(41) 3329-9630 / 9979-3220', N'Eli Emi Doce Arte', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (390, N'Eliane Gonçalves dos santos', N'13.936.231/0001-52', N'xx', N'xx', N'Av. Pres. Kennedy, 1265', N'80220-201', N'Rebouças', N'Curitiba', N'espacodosbaixinhos@bol.com.br', N'Joel / Eliane', N'(41) 3387-7278 / 8430-1504', N'Espaço dos Baixinhos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (391, N'Andressa de Andrade', N'xx', N'057.423.249-44', N'93430085', N'Rua Manoel de Souza Ramos, 49', N'83409-690', N'Atuba', N'Colombo', N'docesaborconfeitaria@live.com', N'Andressa', N'(41) 8530-2824', N'Doce Sabor Confeitaria', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (392, N'Angelito Lopes', N'xx', N'682.194.409-10', N'4.489.626-5', N'Rua José Ferreira Vaz, 66', N'82920-130', N'Cajuru', N'Curitiba', N'inovasomeluz@gmail.com', N'Angelito', N'(41) 3365-0990/9639-2932', N'Inovasom Eventos Som e Luz', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (393, N'Priscila Ribeiro dos Santos', N'xx', N'008.986.149-37', N'8047338-9', N'Rua  Senges, 126', N'83410-170', N'Guaraituba', N'Colombo', N'priscila.rbr@gmail.com', N'Priscila', N'(41) 3666-5225 / 9644-0439', N'Aprymore Lembrancinhas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (394, N'Marcelle Swinka', N'xx', N'019.823.309-45', N'6106397-8', N'Rua Alexandre Gutierrez, 352', N'80240-130', N'Agua Verde', N'Curitiba', N'marcelleswinka@hotmail.com', N'Marcelle', N'(41) 9274-7325', N'A Festa é Sua', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (396, N'Michelle Telles de de Mattos', N'13.554.904/0001-00', N'xx', N'9544993-0', N'Rua Nicolau Scheleder do Carmo, 358 Sl 5', N'83413-450', N'', N'Colombo', N'sininhocasadefestas@hotmail.com', N'Michelle', N'(41) 3606-2908 ', N'Sininho Casa de Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (400, N'Rosilene Mariano', N'xx', N'050.183.309-96', N'8.376.609-3', N'Rua Adir Pedroso, 777 Bl 01 Ap 18', N'83065-110', N'Afonso Pena', N'São José dos Pinhais', N'animefestasinfantis@gmail.com', N'Rosilene', N'(41) 9924-7099', N'Anime Festas Infantis', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (401, N'Viviane Varhau', N'xx', N'004.332.429-06', N'6873238-7', N'Rua Jorge Bonn, 146', N'82600-290', N'Bacacheri', N'Curitiba', N'contato@vivianevarhau.com.br', N'Viviane', N'(41) 9258-5371 / 3077-0238', N'Viviane Varhau Fotografia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (402, N'Noelle Thamirys de Oliveira', N'xx', N'055.355.129-00', N'8.774.450-7', N'Rua Olavo Bilac, 215', N'83508-380', N'Tanguá', N'Almirante Tamandaré', N'especialittadecoracoes@hotmail.com', N'Noelle', N'(41) 3657-6888 / 9832-7722', N'Especialittá Decorações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (405, N'Daniele de Freitas Pedroso', N'xx', N'027.862.519-31', N'6217414-5', N'Rua Felisbino Passos, 70', N'82620-230', N'Tingui', N'Curitiba', N'danielefreitas12@hotmail.com', N'Daniele', N'(41) 3045-9747 / 8810-2811', N'Pimpolhos Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (407, N'Connectnet Comercia Ltda', N'03.867.723/0001-80', N'xx', N'xx', N'Rua Almirante Gonçalves, 2620', N'80250-150', N'Água Verde', N'Curitiba', N'cristina@connectnetweb.com.br', N'Cristina', N'(41) 3039-0306', N'Connectnet Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (409, N'Cristiane K Hoshino Rouver Assopra Buffet', N'15.208.054/0001-14', N'', N'', N'Rua Ana Saliba Nassar, 242', N'83.704-520', N'Fazenda Velha', N'Araucária', N'contato@assoprabuffet.com.br', N'Cristiane', N'(41) 3607-1233', N'Assopra Buffet Infantil', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (410, N'Marcos Roberto Bianco Pereira', N'xx', N'834.264.509-68', N'3.831.506-4', N'Av. Iguaçu, 2920 - ap 25', N'80240-031', N'Agua Verde', N'Curitiba', N'chacaratiodudu@hotmail.com', N'Marcos', N'(41) 9674-7626', N'Chácara Tio Dudu', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (413, N'Aline Renata Souza Carvalho', N'', N'046.177.309.07', N'9.029.114-9', N'Rua Coronel Wallace Scott Murray, 725', N'82.640-170', N'Santa Candida', N'Curitiba', N'alinejlc@hotmail.com', N'Aline', N'(41) 3238-2022 / 9827-4000', N'Aline Carvalho Atelier', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (414, N'Keity Zamarian', N'xx', N'041.109.129-89', N'6.850.846-0', N'Rua João Bettega, 1831 Lj 02', N'81070-001', N'Portão', N'Curitiba', N'tuleconvites@hotmail.com', N'Keity', N'(41) 3045-9652', N'Tule Convites', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (416, N'Gustavo Domingues Wanderley', N'xx', N'053.583.449-77', N'8.839.215-9', N'Av. Republica Argentina, 452 sla 107', N'80420-210', N'Água Verde', N'Curitiba', N'gw@gwfotografia.com.br', N'Gustavo', N'(41) 3029-8800 / 9995-1899', N'GW Fotografia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (417, N'ANGELA CARAMORI CAPUCHO', N'', N'032824139-39 ', N'57823020', N'RUA PADRE ANCHIETA  360', N'80410-030', N'MERCES', N'Curitiba', N'angelacaramori@hotmail.com', N'Angela', N'(41) 3016-8298', N'Bê-a-Bá da Festa Convites', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (419, N'Giselle Amorim da Silva', N'xx', N'064.913.079-05', N'10.471.156-1', N'', N'83505-725', N'Almirante Tamadaré', N'Paraná', N'giselleamorimfotografias@yahoo.com.br', N'Giselle / fabio', N'(41) 3699-1255/9938-4350/8473-0659', N'Giselle Amorim Fotografia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (379, N'Patricia Tortato Monteiro', N'xx', N'016.946.469-55', N'5.576.008-0', N'R. Batista da Costa, 1242', N'81810-190', N'Xaxim', N'Curitiba', N'lelemandafestas@gmail.com', N'Patricia', N'(41) 3346-9323 / 9965-4065', N'Lelemanda Festas e Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (398, N'Ana Cristina Beltrami', N'xx', N'491.369.929-68', N'', N'Rua Duilio Calderari, 140 csa 02', N'80040-250', N'Hugo Lange', N'Curitiba', N'treszerocinco@hotmail.com', N'Ana', N'', N'Três Zero Cinco Flores & Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (408, N'Eduardo Henrique Nemetz Vargas', N'', N'089.099.199-57', N'10.174.454-0', N'Rua Mauricio Ricardo dos Santos, 411', N'82710-390', N'Cachoeira', N'Curitiba', N'eduardonemetz@hotmail.com', N'Eduardo', N'(41) 3585-1848 / 9245-6513', N'Casa do Brinquedo', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (411, N'Adriano Ribeiro da Luz', N'xx', N'080.121.069-0', N'12.374.036-0', N'Rua Batista da Costa, 615', N'81.810-190', N'Xaxim', N'Curitiba', N'vibecwb@live.com', N'Shirley', N'(41) 3268-4594', N'Vibe CWB Som & Iluminação', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (415, N'Luiz H. Ceschin Chaberek', N'xx', N'007.746.079-04', N'7.845.490-3', N'Rua Eng. Rebouças, 212', N'83035-450', N'Cidade Jardim', N'São José Pinhais', N'ribeirodayene@ig.com.br', N'Luiz', N'(41) 3035-1697', N'Daye Ribeiro Atelie', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (418, N'Marcio Ricardo Cit', N'xx', N'794.776.909-53', N'4.521.442-7', N'Rua Diogo Mugiatti, 2456 ', N'81750-440', N'Boqueirão', N'Curitiba', N'evento.espacoalegria@terra.com.br', N'Marcio', N'(41) 3016-8536', N'Espaço Alegria Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (420, N'Karina das Neves', N'', N'053.799.159-06', N'91413388', N'Rua Nossa Senhora do Rocio, 239', N'82720-250', N'Santa Candida', N'Curitiba', N'karinakneves@hotmail.com', N'Karina', N'(41) 3356-2180', N'Átomo Foto e Vídeo', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (349, N'324 - RAQUEL COGITSKEI', N'', N'040.136.559-00', N'040.136.559-00', N' Santa Bernadete, 730, ap 33, bloco F', N'81.010-200', N'Portão', N'Curitiba', N'kitfestacuritiba@hotmail.com', N'Raquel', N'(41) 3276-9682 / 9816-5003', N'Disk Festas Curitiba', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (350, N'Silvia Regina Kaziuk Glovacki', N'', N'086.703.399-19', N'12.736.230-0', N'Rua Eng Eduardo Afonso Nadolny, 474, ', N'81460-310', N'CIC', N'Curitiba', N'silbuenoglovacki@hotmail.com', N'Silvia', N'(41) 3327-6883', N'Lua de Mel Cestas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (353, N'Luciano Pereira de Carvalho Decorações em Festas', N'10.864.928/0001-78', N'xx', N'xx', N'Rua Paulino de Siqueira Cortes, 202', N'80030-730', N'Centro', N'São JOsé dos Pinhais', N'cellifestas@hotmail.com', N'Luciano/Monica', N'(41) 3382-1065/9686-5333', N'Celli Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (354, N'Erivaldo Gueres Ltda', N'11.708.607/0001-47', N'', N'', N'Rua José Gusso, 57', N'81.070-390', N'Fazendinha', N'Curitiba', N'analuzfestas2011@hotmail.com', N'Dhyennifer Evana Gures', N'(41) 3039-3607', N'Analuz Festas Infantis', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (355, N'Tatiana Natali de Souza', N'', N'018.806.109-65', N'6.777.513-9', N'Rua Joaquina de Stica, 57', N'83.413-260', N'Atuba', N'Colombo', N'tati_festas@hotmail.com', N'Tati', N'(41) 3562-8625/8460-2475', N'Tati Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (356, N'Andrea Flor Germano-Fotógrafa', N'xx', N'768.393.209-44', N'4.716.182-7', N'Rua José Lopes dos Santos, 264', N'82300-250', N'Santo Inácio', N'Curitiba', N'andreaproducao@andreaflor.com.br', N'Andrea', N'(41) 3527-1884', N'Andrea Flor', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (357, N'Marilene Amorim', N'', N'003.898.129-78', N'700000237', N'Rua Dr Bley Zornig, 2120, loja 04', N'81750-430', N'Boqueirão', N'Curitiba', N'babyfestasinfantis@hotmail.com', N'Marilene Amorim', N'(41) 3344-7374', N'Baby Festas Infantis', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (358, N'Buffet Infantil Spiro Giro Ltda ', N'14.465.375/0001-31', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Buffet Spiro Giro', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (359, N'067-FUN JUNGLE BUFFET INFANTIL LTDA', N'08.739.288/0001-22', N'xx', N'xx', N'Rua Maria Alpalice Zaramella Grande, 54', N'82.030-340', N'Sta Felicidade', N'Curitiba', N'contato@funclubparties.com.br', N'Vanessa', N'(41) 3273-3950', N'Fun Club Parties', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (360, N'Studio DVA', N'00.219.096/0001-30', N'xx', N'xx', N'Rua Fernando Amaro, 81', N'80050-120', N'Alto da XV', N'Curitiba', N'reginaldodva@gmail.com', N'Reginaldo', N'(41) 3362-0437', N'Studio DVA', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (361, N'Felicita Menegotto Beppler Sade', N'xx', N'026.751.589-84', N'5.787.362-0', N'Rua José Nicco, 717', N'81200-300', N'Ecoville', N'Curitiba', N'brigadeiro@buffetbrigadeiroecia.com.br', N'Felicitá', N'(41)3206-1660', N'Buffet Brigadeiro & Cia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (362, N'João Eduardo Rizzo', N'xx', N'075.440.219-39', N'9.317.075-0', N'Rua Paulo J. Buso, 134 Csa 2', N'82410-260', N'Sta. Felicidade', N'Curitiba', N'sublime.contato@hotmail.com', N'Eduardo', N'(41) 3364-8604/9152-0752', N'Verdadeiro sabor', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (363, N'Gloria Boese Padilha', N'xx', N'530.317.689-49', N'xx', N'Rua Cel. Dulcidio, 303  Apto 41', N'80420-170', N'Batel', N'Curitiba', N'globopad@gmail.com', N'Gloria', N'(41)9936-2944', N'Oficina de Arte Infantil', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (364, N'Rei Leão Festas & Eventos', N'03.449.860/0001-03', N'xx', N'xx', N'Carlos Dietzsch, 465', N'80.030-000', N'Portão', N'curitiba', N'reileaofestas@hotmail.com  ', N'Rose', N'(41)3229-9649', N'Arauna Lembrancinhas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (365, N'Nadia Caroline Banak', N'xx', N'053.037.409-57', N'9.757293-3', N'Rua Juiz Danilo Bertolin Précoma, 387', N'53035-340', N'Cidade Jardim', N'São José dos Pinhais', N'nadia_gowert@hotmail.com', N'Nadia', N'(41)3058-1034/8838-7779', N'Nadi Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (366, N'Daniele Oliveira de Pontes', N'xx', N'037.841.339-24', N'xx', N'Rua José Waltemyr da Costa Lima 93', N'', N'Pinhais', N'Paraná', N'belafestadecoracoes@bol.com.br', N'Dani', N'(4) 3663-9244/8504-1880', N'Bela Festa Decorações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (367, N'Dorian Denise S. Mendes', N'xx', N'504.400.479-00', N'3.671.733-5', N'R. Pedro Caetano M. Follador, 375', N'80330-130', N'Portão', N'Curitiba', N'doriann@onda.com.br', N'Dorian', N'(41)3229-6329', N'Doriann Mendes Fotografias', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (368, N'Roseli Luzia Menegusso', N'06.253.795/0001-26', N'xx', N'4.810.898-9', N'Rua Herbert Neal, 260', N'80310-330', N'Santa Quiteria', N'Curitiba', N'festasmenegusso@terra.com.br', N'Roseli', N'(41) 3274-1282', N'Festas Menegusso', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (369, N'209-CARLOS REZENDE', N'xx', N'044.588.249-29', N'', N'Rua Paula Gomes, 227 - Apto 204', N'80.510-070', N'São Francisco', N'Curitiba', N'contato@estudiocb.com.br ', N'Carlos', N'3205-3640 / 4101-3640 / 9643-3674', N'Visitas de Papai Noel', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (370, N'Fabricia Duque de Sampaio', N'xx', N'034.758.059-95', N'7.785.473-8', N'Rua Heitor Baggio Vidal, 116', N'82.840-010', N'Bairro Alto', N'Curitiba', N'fabricia_sampaio@hotmail.com', N'Fabricia', N'(41) 3151-3698/8849-8808', N'Fabricia Sampaio', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (373, N'Kayra Maite Boaretto Farah', N'14.431.679/0001-88', N'470.987.759-91', N'6181448-5', N'Rua Tereza Olineck, 50', N'82.930-310', N'Cajuru', N'Curitiba', N'kayrafarah@hotmail.com', N'Kayra Farah', N'(41) 9995-3893', N'KF Arte em Biscuit', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (372, N'Mistura e Mistura Com. Alim. Ltda ME', N'14.497.230/0001-12', N'xx', N'xx', N'Rua Itacolomi, 1143', N'81070-150', N'Portão', N'Curitiba', N'curitiba@dilenetortas.com.br', N'Marcio', N'(41)3095-1377', N'Dilene Tortas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (380, N'Ana Paula Bruch Martins', N'xx', N'05145549911', N'47514736', N'R. Henrique Martins Torres, 1049 cs 01', N'81750-080', N'Boqueirão', N'Curitiba', N'anaerobertofesta@hotmail.com', N'Ana', N'(41) 3042-2180 / 8485-4610', N'Ana e Roberto Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (387, N'Aline Geralda Alves Domingues', N'xx', N'043.305.339-95', N'7.760.783-8', N'Rua Willibaldo Kaiser, 338', N'81170-590', N'CIC', N'Curitiba', N'alinemuller@alinemuller.com.br', N'Aline ou Charles', N'(41) 3046-0104', N'Aline Müller Fotografia', NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (395, N'Cricia Medeiros Jordan', N'xx', N'879.852.504-25', N'451.082', N'Rua Euclides da Cunha, 1387', N'80730-360', N'Bigorrilho', N'Curitiba', N'criciajordan@yahoo.com.br', N'Cricia', N'(41) 3336-9926 / 9856-5555', N'Enjoy Parties Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (403, N'Joselene Antonia Koyama', N'xx', N'961.917.329-53', N'55642524', N'Rua Primo Lourenço Tosin, 970', N'81050-290', N'Novo Mundo', N'Curitiba', N'jokoyama@hotmail.com', N'Joselene', N'(41) 3093-9063 / 9637-3837', N'Koyamas Espaço para Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (404, N'Juliana Ribas de Castro', N'xx', N'048.392.109-26', N'6128891-0', N'Rua Ten. João Gomes da Silva, 228', N'80810-100', N'Merces', N'Curitiba', N'juejukids@gmail.com', N'', N'', N'Ju&Ju Kids Fotografias Infantis', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (397, N'Silvio Luiz Dezonet Junior ', N'13.058.070/0001-42', N'xx', N'xx', N'Rua Ver. Constante Pinto', N'82510-240', N'Bacacheri', N'Curitiba', N'contato@tucofestaseventos.com', N'Silvio', N'(41) 3256-5539 / 8813-0509', N'Tuco Festas & Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (406, N'Adriana Rocha da Silva', N'xx', N'045.755.319-79', N'8779014-2', N'Rua Francisco Baptista da Silva, 91', N'82310356', N'Orleans', N'Curitiba', N'contato@algodãodocefotografia.com.br', N'Adriana', N'(41) 3273-4304 / 9634-9634-3931', N'Algodão Doce Fotografia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (399, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Franklin Balões', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (412, N'Daniele Oliveira pontes', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Provençal Arte em MDF', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (1, N'A C Festas Infantis Ltda', N'06319062/0001-47', N'xx', N'xx', N'Rua Prof Assis Goncalves, 1195', N'80620-250', N'Água Verde', N'Curitiba', N'amazingpointbuffet@yahoo.com.br', N'Eliane', N'(41) 3343-5363', N'Amazing Point', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (2, N'A J Damazio Festas', N'07564159/0001-88', N'xx', N'xx', N'Av. Candido Hartmann, 3.840', N'82010-310', N'Sta. Felicidade', N'Curitiba', N'karin_festas@yahoo.com.br', N'Karin/Anderson', N'(41) 3274-0674/9904-1756', N'Karin Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (3, N'A.C.G Almeida e Cia Ltda', N'07285727/0001-01', N'xx', N'xx', N'Rua Francisco Dallalibera, 883', N'82030-290', N'Santa Felicidade', N'Curitiba', N'contato@arcadenoebuffet.com.br	', N'Adinan', N'(41) 3364-7146', N'Arca de Noé Buffet Infantil', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (4, N'Abracadabra Buffet de Festas', N'05.424.550/0001-51', N'XX', N'xx', N'Av. Senador Souza Naves, 1586', N'80050-040', N'Cristo Rei', N'Curitiba', N'abracadabra@abracadabrafesta.com.br', N'Margarete/Debora', N'(41) 3019-6647', N'Abracadabra Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (5, N'Aconchego Eventos Ltda', N'05.964.419/0001-87', N'XX', N'XX', N'Rua Celestino Junior, 522', N'80510-000', N'São Francisco', N'Curitiba', N'buffet@aconchegoeventos.com.br', N'Maria Fernanda/Andressa', N'(41) 3024-8604', N'Aconchego Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (6, N'Adalberto Pavanello Com Gen Alimenticios Ltda', N'06.296.154/0001-59', N'xx', N'xx', N'Rua Dr. Carlos de Carvalho, 42', N'80410-170', N'Centro', N'Curitiba', N'armazempavanello@hotmail.com', N'Adalberto', N'(41) 3322-4043 / 3085-0516', N'Armazém Pavanello', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (7, N'Adori Festas Ltda', N'09.230.356/0001-96', N'xx', N'xx', N'Rua Dr.Carvalho Chaves, 1.224', N'80220-010', N'Parolin', N'Curitiba', N'adorifestas@pop.com.br', N'Adriana', N'(41) 3027-6409', N'Adori Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (8, N'Alcir Alexandre Betinardi', N'xx', N'016.321.249-04', N'xx', N'Estrada da Ribeira, Km 109, 510', N'82560-170', N'Imbuial', N'Colombo', N'espacofestaimbuial@hotmail.com', N'Alcir', N'(41) 9622-5782/9631-9520', N'Chacara Betinardi', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (10, N'Adriane Regina Nadolny', N'xx', N'850.711.619-15', N'xx', N'Av Paraná, 4.038', N'82620-360', N'Boa Vista ', N'Curitiba', N'trupe.da.festa@hotmail.com', N'Adriane', N'(41) 3356-5417/8415-2506', N'Trupe da Festa', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (11, N'Aladdin Org.Anim de Festas Eventos Ltda.', N'01.908.517/0001-46', N'xx', N'xx', N'Rua Major Theolindo Ferreira Ribas, 764		', N'81630-100', N'Hauer', N'Curitiba', N'aladdin@aladdinfestas.com.br', N'Luciana', N'(41) 3276-3108/8418-8690', N'Aladdin Festas e Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (12, N'Alaor Vallejo Camargo - ME', N'01.263.176/0001-07', N'xx', N'xx', N'Av. Nossa Sra. da Luz, 1593', N'82520-060', N'Jardim Social', N'Curitiba', N'duranfestas@hotmail.com', N'Alaor/Debora', N'(41) 3015-7520/9133-8625', N'Duran Festas & Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (13, N'Alexandra de Oliveira Feller', N'xx', N'859.955.689-49', N'xx', N'Rua Francisco Guilherme Bahr, 378', N'82620-070', N'Santa Candida', N'Curitiba', N'aleart@aleartfestas.com.br', N'Alexandra', N'(41) 3256-3007/9611-0034', N'Ale Artes', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (14, N'Amanda Carla dos Santos da Costa', N'xx', N'050.919.549-02', N'', N'Rua Engenheiro Antonio Batista Ribas, 428', N'82800-130', N'Tarumã', N'Curitiba', N'animaniafestas@hotmail.com', N'Amanda', N'(41) 3365-9415/8441-5220', N'Animania Festas e Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (15, N'Amon Luxor Festas', N'10.410.997/0001-01', N'xx', N'xx', N'Rua da Trindade, 219', N'82920-120', N'Cajuru', N'Curitiba', N'luxorfestas@hotmail.com', N'Gerson Lopes', N'(41) 3267-7737/8836-2515', N'Luxor Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (16, N'Ana Paula Nascimento Luder', N'xx', N'804.014.149-49', N'xx', N'Rua Aracaju, 594', N'82930-080', N'Cajuru', N'Curitiba', N'apnl1970@uol.com.br', N'Ana Paula', N'(41) 3267-4817/9129-4816', N'Ana Paula Bolos e Doces ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (17, N'Antonio Carlos Aparecido Tripoli', N'xx', N'958.649.628-72', N'xx', N'Rua Dr. Levy Buquera, 500 ap 24 bl I', N'82700-420', N'Sitio Cercado', N'Curitiba', N'erika_tripoli@hotmail.com', N'Antonio Carlos', N'(41) 3356-2142/9673-1576', N'Antonio Carlos Garçom', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (18, N'Angela Aparecida Maros', N'xx', N'667.105.709-59', N'3.974.290-0', N'Rua Rio Guaporé, 321', N'82840-320', N'Bairro Alto', N'Curitiba', N'estilofestas@brturbo.com.br', N'Angela', N'(41) 3367-7824/9623-4070', N'Estilo Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (19, N'Angelita Szenkowicz Maier', N'11.572.239/0001-52', N'864328779-20', N'xx', N'Rua Sebastião Sperjon, 213', N'83.090-000', N'São Marcos', N'S. J. dos Pinhais', N'angelita@atelierfestaecia.com.br', N'Angelita', N'(41) 3382-3894 / 9104-1257 / 3283-4228', N'Atelier Festas e Cia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (20, N'Antonio Marcos Monteiro', N'xx', N'039.534.369-02', N'xx', N'Rua Euvaristo Guidolim, 122', N'83413-644', N'Maua', N'Colombo', N'flairman-bartender@hotmail.com', N'Marcos', N'(41) 3562-3352/9178-7660', N'Flairman Bartender', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (21, N'Anuar Charif Buffet de Festas', N'08.613.914/0001-30', N'xx', N'xx', N'Av Iguaçu, 1745', N'80250-190', N'Água Verde', N'Curitiba', N'anuarcharif@yahoo.com.br', N'Anuar', N'(41) 3223-0100', N'Buffet Collors', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (22, N'Aroma Di Festa', N'06.954.016/0001-10', N'xx', N'xx', N'Rua Araças, 99', N'81540-510', N'Jardim das Américas', N'Curitiba', N'aromadifesta@aromadifesta.com.br', N'Orlando', N'(41) 3369-2471/9908-2758', N'Aroma Di Festa', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (24, N'Beatriz Ribeiro Pacheco', N'xx', N'031.034.469-77', N'xx', N'Av Pres Affonso Camargo, 5011', N'82810-000', N'Capao da Imbuia', N'Curitiba', N'beatriz.1000@hotmail.com', N'Beatriz', N'(41) 3366-9369 / 9193-5448', N'Bia Bi e Bibi', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (25, N'Big Festas - Lisiane Alves', N'01.791.527/0001-44', N'xx', N'xx', N'Rua Pe.Germano Mayer, 1147', N'80040-170', N'Alto da XV', N'Curitiba', N'bigfestas@terra.com.br', N'Lisiane', N'(41) 3262-1000 / 3335-4444', N'Big Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (26, N'Buffet Festa Mágica', N'03.403.245/0001-58', N'xx', N'xx', N'Rua Ronald Jose Carboni, 318', N'82810-120', N'Capão da Imbuia', N'Curitiba', N'festamagicactba@hotmail.com', N'Silvana / Lidia', N'(41) 3266-4001 / 9197-6007', N'Festa Mágica', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (27, N'Buffet Infantil Reino da Festa Ltda', N'01.253.077/0001-36', N'XX', N'XX', N'Rua Rio Grande do Norte, 1991', N'80630-100', N'Vila Guaira', N'Curitiba', N'celmachic@hotmail.com', N'', N'(41) 3333-9792/3014-0804', N'Estação Criança Buffet ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (30, N'Carla Fabiane Capelli C de Oliveira', N'08.751.875/0001-37', N'XX', N'XX', N'Av Senador Salgado Filho, 480', N'80215-270', N'Prado Velho', N'Curitiba', N'contato@buffetcomemorekids.com.br', N'Jeferson/Carla', N'(41) 3334-1122/3334-6000', N'Comemore Kids Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (31, N'Carlos Jetam', N'xx', N'044.274.689-00', N'xx', N'Estrada da Ribeira, 105 km 107 Chacara Vitta', N'83408-000', N'Imbuial', N'Colombo', N'magicojetam@yahoo.com.br', N'Carlos', N'(41) 3085-7380/9175-8306', N'Mágico Jetam', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (33, N'Cine Fest', N'xx', N'xx', N'xx', N'Rua Manoel de Souza Dias Negrão, 1223', N'82540-070', N'Boa Vista ', N'Curitiba', N'contato@cinefest.com.br', N'Franklin', N'(41) 3209-9302 / 9637-0184', N'Cinefest', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (34, N'Claudio Roberto Pereira de Souza', N'xx', N'587.868.219-20', N'xx', N'Rua Benedicto Berillo Fangueiro, 243-B', N'81540-420', N'Jardim das Américas', N'Curitiba', N'crps@ig.com.br', N'Claudio', N'(41) 3266-6266/9104-6266', N'Jingle e Jajaco Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (35, N'Cominesi e Kopp Ltda', N'01.062.138/0001-88', N'xx', N'xx', N'Av Des Hugo Simas, 2071', N'80520-250', N'Jardim Schaffer', N'Curitiba', N'fantasyfestas@brturbo.com.br', N'Patricia', N'(41) 3338-9929', N'Fantasy Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (36, N'Cores e Sabores Eventos Ltda', N'04.743.184/0001-30', N'xx', N'xx', N'Rua Mons. Manoel Vicente, 1318', N'80620-230', N'Água Verde', N'Curitiba', N'coresesabores@terra.com.br', N'Susi', N'(41) 3329-2166/3039-2166', N'Cores e Sabores', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (37, N'Correia e Lobo Ltda', N'06.094.359/0001-51', N'xx', N'xx', N'Rua Al. D.Pedro II, 750', N'80420-060', N'Batel', N'Curitiba', N'contato@unidunitebuffet.com.br', N'', N'(41) 3342-3864', N'Buffet Uni Duni Te', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (38, N'CR Menon', N'03.917.075/0001-20', N'xx', N'xx', N'Rua José de Oliveira Franco, 1173', N'82840-000', N'Bairro Alto', N'Curitiba', N'criartfestas@gmail.com', N'Carmem', N'(41) 3238-3447/3026-8635', N'Criart Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (39, N'Leandra Sartorio', N'xx', N'253.185.928-48', N'xx', N'Av Candido Hartmann, 936', N'80710-570', N'Merces', N'Curitiba', N'buffetcentopeia@terra.com.br', N'Leandra', N'(41) 3024-0878', N'Buffet Infantil Centopeia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (40, N'Curitiboom Buffet Infantil ltda', N'08.644.438/0001-14', N'xx', N'xx', N'Rua Alberto Folloni, 599', N'80540-000', N'Ahú', N'Curitiba', N'contato@curitiboom.com.br', N'Sergio', N'(41) 3018-5511', N'Curitiboom Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (41, N'Daniel Cepluki', N'xx', N'819.178.219-72', N'xx', N'Rua Francisco Derosso, 2585 lj 1', N'81830-610', N'Xaxim', N'Curitiba', N'fofolandia@pop.com.br', N'Daniel', N'(41) 3378-8612/3275-8662', N'Fofolândia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (42, N'Danieli Oliveira de Pontes', N'xx', N'037.841.339-24', N'xx', N'Rua Huxley 907', N'83408-180', N'Atuba', N'Colombo', N'danieli_op@hotmail.com', N'Dani', N'(41) 3621-7794 / 9223-4499', N'Dani Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (44, N'Decore & Arte Promoções e Eventos', N'04.346.776/0001-19', N'xx', N'xx', N'Rua Irmã Flavia Borlet, 2.068', N'81630-170', N'Hauer', N'Curitiba', N'decore_arte@hotmail.com', N'Rosangela Bachega', N'(41) 3278-8083/9953-0544', N'Decore & Arte', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (45, N'Denise Rodbard Falat', N'xx', N'496.874.099-91', N'xx', N'Rua Nardy Muller da Costa, 651', N'81220-060', N'Campo Comprido', N'Curitiba', N'espaco.original@yahoo.com.br; denise@esteio.com.br; drfalat@brturbo.com.br', N'Denise', N'(41) 3274-3435/9681-6460', N'Espaço Original', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (46, N'Divina Festa - Festas e Eventos Ltda', N'07.292.547/0001-57', N'xx', N'xx', N'Rua Marcelino Chamapgnat, 122', N'80.710-250', N'Mercês', N'Curitiba', N'divinafesta@divinafesta.com.br', N'Susara/Ricardo', N'(41) 3023-1803', N'Divina Festa', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (47, N'Mixsound Som e Iluminação Ltda', N'04.684.688/0001-27', N'xx', N'xx', N'Rua Antonio Buso, 150', N'82960-210', N'Cajuru', N'Curitiba', N'rosangelacope@terra.com.br', N'Rosangela', N'(41) 3039-0114 / 9685-1885', N'Doremy Festas e Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (48, N'Drika Trika Festas Ltda', N'05.162.328/0001-28', N'xx', N'xx', N'Rua Jose Cadilhe, 659', N'80620-240', N'Agua Verde', N'Curitiba', N'drikatrika@pop.com.br', N'Adri/Marcelo', N'(41) 3014-6254/8415-5186', N'Drika Trika Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (49, N'Dulcineia Julia Toaldo', N'xx', N'428.339.499-87', N'xx', N'Rua Joao Reffo, 326', N'82410-000', N'Sta. Felicidade', N'Curitiba', N'contato@pertuttifestas.com.br', N'Dulcineia', N'(41) 3364-8933', N'Per Tutti Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (50, N'Edinamara Antunes Olgado', N'xx', N'860.115.889-72', N'xx', N'Rua Octavio Schiavon, 276', N'82800-360', N'Capão da Imbuia', N'Curitiba', N'salaoalgodaodoce@hotmail.com', N'Ednamara', N'(41) 3267-4164', N'Algodão Doce Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (51, N'Edlaura Franco Gutierres', N'04.869.613/0001-10', N'xx', N'xx', N'Av Frederico Lambertucci, 943', N'81330-000', N'Fazendinha', N'Curitiba', N'maniabrinquedos@terra.com.br', N'Edlaura/Claudia', N'(41) 3022-7356/3288-9140', N'Mania Brinquedos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (52, N'Ednamar N Maruo', N'xx', N'962.411.959-72', N'xx', N'Rua Fernando Simas, 1859', N'80710-660', N'Mercês', N'Curitiba', N'nanamimaruo@bol.com.br', N'Ednamar', N'(41) 3335-5841/9902-1966', N'Ciamambarte', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (53, N'Edson do Nascimento', N'xx', N'015.991.689-52', N'xx', N'Rua Artur Bailo, 95', N'81200-180', N'Mossunguê', N'Curitiba', N'docesurpresa@onda.com.br', N'Edson', N'(41) 3019-6543/9687-3164', N'Doce Surpresa', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (54, N'Elisabeth do Rocio  Franco de Souza', N'xx', N'026.996.799-09', N'xx', N'Rua Benedito Bley, 66', N'82930-130', N'Vila Oficinas', N'Curitiba', N'betifestas@hotmail.com', N'Beti/Valmor', N'(41) 3267-1430/9165-5276', N'Beti Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (55, N'Elton Adam', N'xx', N'030.664.249-28', N'xx', N'Rua Ary Barroso, 696', N'80630-010', N'Boa Vista', N'Curitiba', N'crepepepe@hotmail.com', N'Tatiana', N'(41) 3022-7971/9996-2133', N'Crepe Pepe', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (56, N'Emanuel Alves Oliveira', N'xx', N'991.055.949-87', N'xx', N'Rua João Dembisnki, 1213', N'81270-330', N'Fazendinha', N'Curitiba', N'emanuelalves7@hotmail.com', N'Emanuel', N'(41) 3077-7887/9174-5154', N'Art & Art', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (60, N'Feliz Cidade Festas', N'03.481.487/0001-60', N'xx', N'xx', N'Rua Rodrigues Alves, 179', N'80240-460', N'Batel', N'Curitiba', N'buffetfelizcidade@yahoo.com.br', N'Sueli', N'(41) 3013-5069', N'Feliz Cidade Buffet Infantil', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (61, N'Festa Premium Ltda', N'06.029.777/0001-65', N'xx', N'xx', N'Rua Eurides Cunha, 224', N'80320-010', N'Portão', N'Curitiba', N'festapremium@festapremium.com.br', N'Ana Rita', N'(41) 3342-4447', N'Festa Premium', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (62, N'Festa.com Comercio e Eventos Ltda', N'04.755.909/0001-00', N'xx', N'xx', N'Rua Pe Germano Mayer, 1776', N'80040-170', N'Hugo Lange', N'Curitiba', N'festa.com@onda.com.br', N'Cassia', N'(41) 3362-3246/3263-1335', N'Festa.com Buffet Infantil', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (63, N'Fina Festas Buffet Infantil Ltda', N'07.625.567/0001-00', N'xx', N'xx', N'Rua Arthur Bindo, 17', N'82030-330', N'Santa Felicidade', N'Curitiba', N'contato@finafestas.com.br', N'xx', N'(41) 3273-2672', N'Fina Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (64, N'Flor Festas Decorações e Eventos ltda', N'07.995.365/0001-42', N'xx', N'xx', N'Rua Eduardo Sprada, 1039', N'81220-000', N'Sta.Quiteria', N'Curitiba', N'contato@florfestas.com.br', N'Ludmila', N'(41) 3269-1602 / 9967-9359', N'Flor Festas e Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (65, N'Francielli de Lima', N'xx', N'002.550.429-40', N'xx', N'Rua João Bettega, 1230 - lj 04', N'81070-001', N'Portão', N'Curitiba', N'manasfestas@manasfestas.com', N'Francieli', N'(41) 3345-1600/9179-1212', N'Manas Festas & Decorações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (66, N'Francis Vianna', N'xx', N'026.256.299-59', N'xx', N'Av Prudente de Moraes, 711', N'80430-220', N'Mercês', N'Curitiba', N'francisvianna@yahoo.com.br', N'Francis', N'(41) 3223-2555', N'Benvenuto Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (67, N'Fun Jungle Buffet Infantil Ltda', N'08.739.288/0001-22', N'xx', N'xx', N'Rua Maria A. Zaramella Grande, 54', N'82030-340', N'Santa Felicidade', N'Curitiba', N'buffetfunjungle@hotmail.com', N'Vanessa', N'(41) 3273-3950', N'Fun Jungle Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (68, N'Gigaboom Festas e Eventos Ltda', N'07.259.802/0001-60', N'xx', N'xx', N'Rua Puru, 293', N'80540-280', N'Jardim Social', N'Curitiba', N'gigaboom@gigaboom.com.br', N'Addriane/Alesandra', N'(41) 3015-0513', N'Giga Boom Festas & Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (69, N'Gisele Gabardo', N'xx', N'479.164.949-49', N'xx', N'Av Pref Erasto Gaertner, 1717, bloco B-100', N'82515-000', N'Bacacheri', N'Curitiba', N'giselegabardo@yahoo.com.br', N'Gisele', N'(41) 3026-5322/9198-9196', N'Gisele Gabardo', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (70, N'Glaci Terezinha Andretta', N'xx', N'846.363.009-04', N'xx', N'Rua Alexandre Gutierrez, 219', N'80240-130', N'Água Verde', N'Curitiba', N'xx', N'D.Glacy', N'(41) 3342-7944', N'Planeta Festas - Ahú', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (71, N'Glaci Terezinha Andretta', N'xx', N'846.363.009-04', N'xx', N'Rua Alexandre Gutierrez, 219', N'80240-130', N'Água Verde', N'Curitiba', N'novabaloes@hotmail.com', N'Eliane', N'(41) 3079-5584/8802-7924', N'Nova Balões', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (72, N'Graciella Pozzo', N'xx', N'359.216.769-34', N'xx', N'Rua Curupis, 1624', N'80330-040', N'Portão', N'Curitiba', N'gc_arte@yahoo.com.br', N'Graciela', N'(41) 3329-3712/9906-6910', N'Grazia Arte - Personalizados', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (73, N'Guildo Saravia', N'xx', N'005.619.039-56', N'xx', N'Rua Alvim Jareski, 06', N'81315-510', N'Agua Verde', N'Curitiba', N'paraguildo@hotmail.com', N'Guildo', N'(41) 3085-0409/3092-0288', N'Megabalões & Delivery', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (74, N'Guilherme Aurélio Gonçalves de Melo', N'xx', N'696.402.031-49', N'xx', N'Rua Augusto de Mari, 2542', N'83390-300', N'Vila Guaíra', N'Curitiba', N'crepesabor@hotmail.com', N'Guildo', N'(41) 3653-4081/7813-6775', N'Crepe Sabor', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (76, N'Happy Land Buffet', N'06.106.743/0001-27', N'xx', N'xx', N'Av Anita Garibaldi, 1498', N'82200-530', N'Ahú', N'Curitiba', N'happylandbuffet@hotmail.com', N'Josilson/Juliana', N'(41) 3014-3008', N'Happy Land Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (77, N'Harmonia das Festas', N'04.890.518/0001-07', N'xx', N'xx', N'Av Jacob Macanhan, 201', N'83324-510', N'Jd Pedro Demeterco', N'Pinhais', N'harmonia@harmoniadasfestas.com.br', N'Shirlei', N'(41) 3668-6495', N'Harmonia das Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (79, N'Ilana Trevisan', N'xx', N'977.658.809-34', N'xx', N'Rua Estanislau Krowinski, 70 - D', N'81020-160', N'Novo Mundo', N'Curitiba', N'trevisart@gmail.com', N'Ilana', N'(41) 9258-5101', N'Trevisart Estúdio', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (80, N'Jacqueline de Castro Pampuch', N'xx', N'284.998.671-20', N'xx', N'Av Desembargador Hugo Simas, 3524', N'80520-250', N'Bom Retiro', N'Curitiba', N'deliciaschvovo@yahoo.com.br', N'Jaqueline', N'(41) 3338-8462/9201-1372', N'Delicias da Vovó', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (81, N'Alice do Rocio Santos Nemetz', N'xx', N'536.328.429-49', N'xx', N'Rua Howell Lewis Fry, 10', N'82710-380', N'Cachoeira', N'Curitiba', N'', N'Alice', N'(41) 3585-3065', N'Ratimbum Brinquedos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (82, N'JMP Organizações de Festas LTDA', N'07.105.481/0001-49', N'xx', N'xx', N'Rua Castro, 144', N'80620-300', N'Água Verde', N'Curitiba', N'janaina.pegorini@creapr.org.br', N'Janaina', N'(41) 3024-1567/3016-6173', N'Maison Bombom Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (83, N'João Roberto Cassiano da Cruz', N'xx', N'041.510.839-01', N'xx', N'Rua Carlito Dissenha, 580, casa laranja', N'83015-716', N'Costeira', N'São José dos Pinhais', N'lauritatortas@yahoo.com.br', N'Amanda', N'(41) 3278-9299 / 8882-5700', N'Laurita Tortas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (84, N'José Germanus Casa de Festas-ME', N'82.387.598/0001-88', N'xx', N'xx', N'Rua Antonio Scorsin, 404', N'82300-490', N'Santa Felicidade', N'Curitiba', N'alegria-festa@hotmail.com', N'Marcia / José Germanus', N'(41) 3085-1543/3372-5360', N'Buffet Immaginare', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (85, N'Julia Com de Art Festas e Presentes Ltda', N'05.942.649/0001-45', N'xx', N'xx', N'Rua Francisco Derosso, 797, lojas 06/07', N'81710-000', N'Xaxim', N'Curitiba', N'arco_festas@hotmail.com', N'Conceição Amorim', N'(41) 3014-9630', N'Arco Iris Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (86, N'087-A.F. TUNALA COM ART. FESTAS ME', N'14.724.809/0001-70', N'xx', N'xx', N'Rua Alberto Bolliger, 754', N'82300-490', N'Juvevê', N'Curitiba', N'alegria-festa@hotmail.com', N'Marcia / José Germanus ', N'(41) 3353-2267 / 4102-9496 / 9841-9552', N'Alegria da Festa', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (87, N'A.F.TUNALA COM ARTIGOS PARA FESTAS ME', N'14.724.809/0001-70', N'xx', N'xx', N'Rua Alberto Bolliger, 754', N'82300-490', N'Juvevê', N'Curitiba', N'alegria-festa@hotmail.com', N'Marcia / José Germanus ', N'(41)3353-2267/4102-9496', N'Qualifestas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (88, N'Juliana de Souza ', N'xx', N'767.288.469-72', N'xx', N'Rua Cruz Machado, 530, lj01', N'80410-170', N'Centro', N'Curitiba', N'armazemgiulianna@hotmail.com', N'Juliana', N'(41) 3085-8530/8856-9568', N'Armazém Giulianna', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (89, N'Kelly Martins Coelho Bertolini', N'xx', N'028.447.979-97', N'xx', N'Av Pres Getulio Vargas, 2445, lj06', N'80240-040', N'Água Verde', N'Curitiba', N'kelly_coelho@yahoo.com.br', N'Kelly', N'(41) 8415-8782/7814-3862', N'Seven Kids', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (90, N'Leda Rodrigues de Souza', N'xx', N'540.297.089-00', N'xx', N'Rua Professor Dario Velozo, 661', N'80230-050', N'Vila Isabel', N'Curitiba', N'salgadinhosdaju@gmail.com', N'Leda/Juliane', N'(41) 3343-3941/3244-1657', N'Salgadinhos da Ju', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (92, N'L''equipe Crepe', N'xx', N'056.282.409-07', N'xx', N'Rua Desembargador Motta, 2.899', N'80430-200', N'Centro', N'Curitiba', N'contato@lequipecrepe.com.br', N'', N'(41) 3323-6999/9619-8184', N'Lequipe Crepe', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (93, N'Liege Cristina Furtado', N'xx', N'583.867.770-15', N'xx', N'Rua Edmundo Saporski, 220', N'83005-270', N'São cristovão', N'Curitiba', N'liegefurtado@ig.com.br; arteavoada@arteavoadabaloes.com.br', N'Liege', N'(41) 3556-3827/9186-7480', N'Arte Avoada Balões', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (94, N'Liliane Zontta', N'xx', N'042.241.869-26', N'xx', N'Rua Angelo Gai, 1050', N'81940-340', N'Umbará', N'Curitiba', N'contato@chacarazontta.com.br', N'Liliane', N'(41) 3348-1767', N'Chácara do Zontta', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (95, N'Lima Buffet Infantil Ltda', N'08.226.348/0001-03', N'xx', N'xx', N'Rua Maria Gabardo Mendes, 278', N'81070-030', N'Portão', N'Curitiba', N'hiphappyfestas@hiphappyfestas.com.br', N'', N'(41) 3345-2222', N'Buffet Hip Happy', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (97, N'Lua e Leon Festas e Decorações', N'04.077.799/0001-75', N'xx', N'xx', N'Rua Felisberto Flore D''Orazio, 297-A', N'82410-460', N'Santa Felicidade ', N'Curitiba', N'luaeleon@luaeleon.com.br', N'Rose', N'(41) 3364-8441/9919-6069', N'Lua e Leon Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (99, N'Luis Mello', N'xx', N'115.450.891-91', N'xx', N'Rua Manoel Pedro, 344', N'80035-030', N'Cabral', N'Curitiba', N'luizfestiva@gmail.com', N'Luis', N'(41) 3527-6524/9134-6661', N'Festiva Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (100, N'Luiz Antonio da Silva', N'xx', N'020.654.889-30', N'xx', N'Rua Epaminondas Ribeiro, 1051', N'81460-355', N'Cic', N'Curitiba', N'amarcondes@bol.com.br', N'Adriana/Luiz', N'(41) 3569-4498/9904-4928', N'Luiz Decorador', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (101, N'Luzi Tereza Borges', N'xx', N'045.456.119-90', N'xx', N'Rua Irmã Flavia Borlet, 451', N'81630-170', N'Hauer', N'Curitiba', N'luzdeluar@luzdeluar.com.br', N'D.Luzi', N'(41) 3276-8148 / 9632-0525', N'Luz de Luar', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (104, N'Marcia de Lima Freitas', N'xx', N'870.506.179-20', N'xx', N'Rua Serafim França, 91, casa 01', N'81010-330', N'Novo Mundo', N'Curitiba', N'contato@clickartefotos.com.br', N'Marcia', N'(41) 3387-3887 / 8819-7654', N'Click Arte Fotos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (106, N'Passos e Passos Buffet Infantil', N'07.307.099/0001-18', N'xx', N'xx', N'Rua Gutemberg, 137', N'80420-030', N'Batel', N'Curitiba', N'atendimento@beehappyeventos.com.br', N'', N'(41) 3233-0909/9614-4409', N'Bee Happy Festas & Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (110, N'Molekada Festas Infantis', N'06.915.247/0001-14', N'xx', N'xx', N'Rua Cid Marcondes de Albuquerque, 1292', N'81050-240', N'Pinheirinho', N'Curitiba', N'molekadafestas@hotmail.com', N'Silvia/Juliana', N'(41) 3246-2365 / 8881-9761', N'Molekada Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (112, N'Molinas Hair', N'xx', N'xx', N'xx', N'Av Anita Garibaldi, 2602', N'82210-000', N'Ahú', N'Curitiba', N'contato@molinashair.com.br', N'Sabrina/Cremilda/Elcio', N'(41) 3354-3392', N'Molinas Hair', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (113, N'Mundo Mágico das Bolinhas', N'01.486.264/0001-60', N'xx', N'xx', N'Rua Brigadeiro Franco, 396', N'80430-210', N'Merces', N'Curitiba', N'bolinhas@mundomagicodasbolinhas.com.br', N'Tania', N'(41) 3232-1099', N'Mundo Mágico das Bolinhas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (114, N'Nickel & Igreja Eventos Ltda', N'09.283.044/0001-40', N'xx', N'xx', N'Av dos Estados 1250, lj 04', N'80610-040', N'Água Verde', N'Curitiba', N'megdecor@gmail.com ', N'Marcia', N'(41) 3363-4929 / 9141-4525', N'Mega Decorações & Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (115, N'Oficina do Biscuit', N'07.619.156/0001-02', N'xx', N'xx', N'Rua Palmeiras, 545, Complem. 24', N'80620-110', N'Água Verde', N'Curitiba', N'oficinadobiscuit@hotmail.com', N'Luciano', N'(41) 3521-0877', N'Oficina do Biscuit', NULL, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (116, N'P A C Alves e Cia ltda', N'05.769.525/0001-00', N'xx', N'xx', N'Rua Cap. Virginio de O. Mello, 18', N'80510-110', N'Mercês', N'Curitiba', N'festejando@terra.com.br', N'Simone', N'(41) 3338-8447', N'Buffet Infantil Festejando', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (117, N'Patricia Danieli da Rocha', N'xx', N'004886679-25', N'66710804', N'Rua Vicente Geronasso, 63', N'82560-270', N'Boa Vista', N'Curitiba', N'contato@aromacriativo.com.br', N'Paty', N'(41) 9242-6808', N'Aroma Criativo', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (118, N'Priscila Raiter Cassol', N'07.862.810/0001-04', N'xx', N'x', N'Av Victor Ferreira do Amaral, 2.782', N'82810-350', N'Tarumã', N'Curitiba', N'prc.cassol@hotmail.com', N'Priscilla', N'(41) 3076-6264', N'Tutti Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (119, N'Pura Imaginação Festas e Eventos Ltda', N'00464722/0001-05', N'xx', N'xx', N'Rua Visconde do Rio Branco, 228', N'80410-000', N'Mercês', N'Curitiba', N'contato@puraimaginacao.com.br	', N'Celina', N'(41) 3232-2367', N'Pura Imaginação Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (121, N'Rachel H.Mokwa', N'xx', N'028211459-93', N'xx', N'Rua Primeiro Ministro Brochado da Rocha, 221', N'82120-100', N'Bom Retiro', N'Curitiba', N'mokwastudio@gmail.com', N'Raquel', N'(41) 4102-9476', N'Mokwa Stúdio', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (122, N'Regiane Lima Pinto', N'xx', N'978.845.379-15', N'xx', N'República Guarani ,10', N'82860-020', N'Atuba', N'Colombo', N'regiane@servfesta.com.br', N'Regiane', N'(41) 3606-3482 / 9187-6498', N'Serv Festa', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (123, N'Rejane Maldaner', N'xx', N'610720609-49', N'', N'Rua Ana Berta Roskamp, 1.022, sob 4', N'81530-250', N'Jardim das Américas', N'Curitiba', N'tocadopirilampo@pop.com.br', N'Rejane', N'(41) 3018-7930/9115-8622', N'Toca do Pirilampo', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (124, N'Robson Mendonça ', N'xx', N'028.421.449-37', N'xx', N'Rua Leão Sallum, 843', N'82540-050', N'Boa Vista', N'Curitiba', N'soundplay_eventos@yahoo.com.br', N'Robson', N'(41) 3203-1597 / 9665-5171', N'Sound Play', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (125, N'Confeitaria Rosinha Ltda', N'03.275.043/0001-78', N'xx', N'9018767543', N'Av Anita Garibaldi, 1451', N'82530-250', N'Ahú', N'Curitiba', N'confeitariarosinha1@yahoo.com.br', N'Eloisa', N'(41) 3078-0708', N'Confeitaria Rosinha', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (126, N'Salete Marilus Lucca Tessari', N'xx', N'403.314.580-04', N'xx', N'Rua Dr Leão Mocelin, 140', N'82030-230', N'Sta. Felicidade', N'Curitiba', N'saletetessari@hotmail.com', N'Salete', N'(41) 3297-3396/9971-6467', N'Kãntinho Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (127, N'Salete Tachewiski Daniel', N'04662825/0001-22', N'xx', N'xx', N'Rua Orestes Codega, 380', N'81150-200', N'Pinheirinho', N'Curitiba', N'comemore.datas@uol.com.br', N'Salete ', N'(41) 3014-9843 / 9986-9106', N'Comemore Dattas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (128, N'Sandra R.Gurek', N'xx', N'874565839-00', N'xx', N'Rua Justiniano de Mello e Silva, 475', N'82530-150', N'Cabral', N'Curitiba', N'sandra250571@hotmail.com', N'Sandra', N'(41) 3352-0359/3078-6927', N'Marshmallow Decorações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (129, N'Sandra Regina Siqueira Bara', N'xx', N'738643749-87', N'xx', N'Rua Jeronimo Busato Filho, 84', N'83323-090', N'Jardim das Américas', N'Curitiba', N'kiko.festas@hotmail.com', N'Sandra', N'(41) 3667-2256 / 3266-9732', N'Kiko Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (130, N'Sandra Soares da Silva', N'xx', N'393791409-91', N'xx', N'Rua Zacarias Alves de Souza, 375', N'82030-390	', N'Santa Felicidade', N'Curitiba', N'sandra.s49@hotmail.com', N'Sandra', N'(41) 3272-5738 / 8817-0721', N'Docinhos e Cia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (131, N'Simone Moraes Christini de Oliveira', N'xx', N'172725148-25', N'xx', N'Rua Major França Gomes, 1479', N'80310-000', N'Santa Quitéria', N'Curitiba', N'simone@magicfestas.com.br', N'Simone', N'(41) 3274-7254/9986-0588', N'Magic Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (132, N'Solange Mazarotto', N'xx', N'598299669-68', N'xx', N'Rua Bruno Filgueira, 2170, ap 101', N'80730-380', N'Champagnat', N'Curitiba', N'arteemacucar@hotmail.com', N'Solange ', N'(41) 3029-5884/9974-7037', N'Arte em Açucar', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (133, N'SR Martins Cia Ltda', N'05661200/0001-09', N'xx', N'xx', N'Rua Guaianazes, 609	', N'80620-030', N'Agua Verde', N'Curitiba', N'festas_festas@hotmail.com', N'', N'(41) 3029-8590/9153-2977', N'Festas & Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (134, N'M&M Foto Comercial Ltda', N'01.111.946/0001-98', N'xx', N'xx', N'Av N Sra Aparecida, 305, lj02', N'80440-000', N'Seminario', N'Curitiba', N'stampa@stampaphoto.com.br', N'Daniel', N'(41) 3342-2211 / 9155-9922', N'Stampa Photo', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (135, N'Sueli da Conceição Alves e Silva	', N'xx', N'067902988-91', N'xx', N'Rua Zem Bertapelle, 195-2', N'82030-430', N'Seminario', N'Curitiba', N'alegriaecia@onda.com.br', N'Sueli', N'(41) 3274-1460', N'Buffet Alegria e Cia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (136, N'Susi Eventos - Lucas ES Martins', N'05.949.659/0001-02', N'xx', N'xx', N'Rua José de Oliveira Franco, 1913', N'82820-110', N'Bairro Alto', N'Curitiba', N'susieventos@hotmail.com', N'Susi e Luiz', N'(41) 3079-0713 / 8437-7883', N'Susi Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (137, N'Svetlana Karina Dellatorre Toledo', N'xx', N'852.697.519-68', N'xx', N'Av. Pref. Mauricio Fruet, 1.576', N'82900-010', N'Cajuru', N'Curitiba', N'decore_in_festas@hotmail.com', N'Karina ', N'(41) 3365-0440 / 9164-7245', N'Decore In', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (138, N'Tadeu Hilario Grochoski', N'xx', N'587508279-87', N'xx', N'Rua Viriato Corrêa, 477', N'81330-370', N'Fazendinha', N'Curitiba', N'simone@casadossonhos.com', N'Tadeu', N'(41) 3288-8462/9624-4009', N'Casa dos Sonhos Festas Infantis', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (139, N'Thereza Gandhi Ferreira e Filhos /ME', N'01.229.014/0001-44', N'xx', N'xx', N'Rua Alberto Foloni, 896', N'80540-220', N'Ahú', N'Curitiba', N'buffetguriguria@uol.com.br', N'Marcos', N'(41) 3024-4924', N'Guri Guria - Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (140, N'Laercio Polanski', N'xx', N'057869689-44', N'xx', N'Rua Osmário de Lima, 457', N'82810-260', N'Capão da Imbuia', N'Curitiba', N'salaopirlimpimpim@uol.com.br	', N'Laércio', N'(41) 3366-5753/9615-6286', N'Pirlimpimpim - Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (141, N'Ulisses Pereira', N'01.380.209/0001-90', N'xx', N'xx', N'Rua Benedito Guli, 736', N'82800-270', N'Tarumã', N'Curitiba', N'ulisses_pereira@yahoo.com.br', N'Ulisses', N'(41) 3266-0853/8842-9495', N'Bartenders Flair', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (142, N'Vera Arcenio Fotografa', N'xx', N'746.563.849-68', N'4.559.818-7', N'Rua Manoel de Souza Dias Negrão, 1247', N'82540-070', N'Boa Vista', N'Curitiba', N'xx', N'Vera', N'(41) 3257-2755 / 3257-5440', N'Vera Arcenio', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (143, N'Vera Lucia Moraes dos Santos', N'xx', N'773.436.469-15', N'xx', N'Rua Prof Osvaldo Ormiani, 49, bloco 02, ap 01', N'81250-200', N'CIC', N'Curitiba', N'ateliartfestas@hotmail.com', N'Vera', N'(41) 3245-4391 / 8428-2659/ 9125-4316', N'Ateliart Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (144, N'Viviane Turra Fiman Silva', N'xx', N'064.926.279-46', N'xx', N'Rua BrigadeiroFranco, 3555', N'80220-100', N'Rebouças', N'Curitiba', N'contato@vivieventos.com', N'Viviane', N'(41) 3333-5137/9951-8153', N'Vivi Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (145, N'Waldevino da Luz dos Passos', N'xx', N'435.093.639-49', N'xx', N'Rua Lapa, 836', N'83010-180', N'Cruzeiro', N'Curitiba', N'wvvidio@pop.com.br', N'Waldevino', N'(41) 3081-4270/9945-4846', N'W&V Eventos - Foto&Video', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (146, N'Wavison Salgado da Silva', N'xx', N'783.752.904-91', N'xx', N'Rua Olga de Araujo Espindola, 44', N'81050-280', N'Novo Mundo', N'Curitiba', N'megdoceart@yahoo.com.br', N'Wavison/Meg', N'(41) 3327-7815', N'Meg Doce Art', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (147, N'Divina Festa - Buffet de Festas e Eventos Ltda', N'07.292.547/0001-57', N'xx', N'xx', N'Rua Marcelino Chamapgnat, 122', N'80710-250', N'Champagnat', N'Curitiba', N'fontedechocolate@divinafesta.com.br', N'Ricardo', N'(41) 3024-8428/9948-1357', N'Fonte de Chocolate', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (148, N'Rei Leão Festas & Eventos', N'03.449.860/0001-03', N'xx', N'xx', N'Rua Carlos Dietzsch, 455', N'80030-000', N'Portão', N'Curitiba', N'reileaofestas@hotmail.com', N'Rose', N'(41) 3229-9649/3327-2975', N'Rei Leão Festas & Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (149, N'Criativa Festas', N'xx', N'875.080.019-15', N'xx', N'Rua Pedro Gusso, 3114', N'81315-000', N'CIC', N'Curitiba', N'criativafestas@criativafestas.net', N'Silvio dos Santos', N'(41) 3071-0189/8413-6735', N'Criativa Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (151, N'Higor Felliny Cruz', N'xx', N'028.591.199-65', N'xx', N'Rua Theodoro Makiolka, 3950', N'82710-000', N'Barreirinha', N'Curitiba', N'reservas@chacaradasaraucarias.com.br', N'Higor', N'(41) 9676-5115', N'Chácara das Araucárias', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (154, N'Dueto Recepções & Eventos', N'xx', N'755.916.699-72', N'xx', N'Rua Flávio Mariano Ribas, 253', N'81570-040', N'Uberaba', N'Curitiba', N'duetorecepcoeseeventos@hotmail.com', N'Mauricio', N'(41) 3296-3567', N'Dueto Recepções & Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (156, N'Luiz Gustavo Friedrich', N'xx', N'026.631.549-62', N'xx', N'Av Prefeito Erasto Gaertner, 1457', N'82515-000', N'Bacacheri', N'Curitiba', N'oogaboogafestas@gmail.com', N'Luiz', N'(41) 3023-8922', N'Buffet Ooga Booga', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (157, N'Marilene Stella Espindola', N'xx', N'630.029.499-49', N'xx', N'Rua Des. Clotario Portugal, 155', N'80410-420', N'Centro', N'Curitiba', N'atelierfotoevideo@hotmail.com', N'Marilene', N'(41) 3225-2161 / 9687-4480', N'Atelier Foto e Vídeo', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (159, N'Sandra Adriana Nogueira', N'xx', N'872.735.199-87 ', N'xx', N'Av. Brasilia, 4990', N'81020-010', N'Novo Mundo', N'Curitiba', N'ballonfest@hotmail.com', N'Sandra', N'(41) 3016-3931 / (41) 9229-5947', N'Balloonfest Decorações Infantis', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (160, N'Sandra Regina Olivetti', N'xx', N'553.245.509-06', N'xx', N'Rua Francisco Schaffer, 333', N'80820-200', N'Jardim Schaffer', N'Curitiba', N'sandra.festas@terra.com.br', N'Sandra', N'(41) 3338-9810 / 9184-3447', N'Sandra Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (171, N'Debora Fernanda Soares Pereira', N'xx', N'027.386.119-07', N'xx', N'Rua Rio Trombetas, 903', N'83322-280', N'Jd Weissópolis', N'Pinhais', N'abelhinhafestasdf@hotmail.com', N'Debora', N'(41) 3665-9211', N'Abelhinha Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (173, N'Antunes Eventos', N'xx', N'054.777.759-04', N'xx', N'Rua Bento Viana, 206 ap32', N'80240-110	', N'Água Verde', N'Curitiba', N'antuneseventos@yahoo.com.br', N'Antunes', N'(41) 3242-0127 / 9228-6477', N'Antunes Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (175, N'Gislaine Vieira Lopes', N'xx', N'024.314.629-94', N'xx', N'Rua Gabriel Frecceiro de Miranda, 941', N'81810-480', N'Xaxim', N'Curitiba', N'comercial@gvfestaseeventos.com.br', N'Gislaine', N'(41) 30852461/9911-5262', N'GV Festas & Eventos	', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (176, N'Severino Junior Lopes Brito', N'08.244.470/0001-02', N'xx', N'xx', N'Rua Pe Germano Mayer, 1347', N'80040-170', N'Alto da XV', N'Curitiba', N'junior.brito@hotmail.com', N'Junior', N'(41) 9187-5968 / (41) 3262-6424', N'Buffet Sírio', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (177, N'Simone Terezinha', N'xx', N'705072959-00', N'xx', N'Rua Newton, 337', N'83408-240', N'Vila Guarani', N'Colombo', N'simonelff05@gmail.com', N'Simone', N'(41) 3562-5025', N'Oficina das Delicias', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (179, N'Emannuel Ribeiro', N'xx', N'225.707.658-30', N'xx', N'Rua Brigadeiro Franco, 345 ap 22', N'80430-210', N'Merces', N'Curitiba', N'fotografo@emannuelribeiro.com; emannuelribeiro@hotmail.com', N'Emmanuel', N'(41) 8406-6682 / 3779-8707', N'Emannuel Ribeiro', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (181, N'Aline Cristine Filgueira', N'xx', N'074.394.529-84', N'86118130', N'Rua Guarda Marinha Greenhalgn, 812', N'81820220', N'Pinheirinho', N'Curitiba', N'alegrisfestas@hotmail.com', N'Aline', N'(41)3024-5651 / 9142-5938', N'Alegris Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (182, N'Rosemary do Rocio Starepravo Artmann', N'xx', N'541.821.829-87', N'xx', N'Rua Aluizio de Azevedo ,125', N'82220-200', N'Barreirinha', N'Curitiba', N'minha.festa@bol.com.br', N'Rosemary', N'(41) 3354-2265', N'Minha Festa', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (183, N'Maria Beatriz Cadaxa de Carvalho', N'xx', N'56198213900', N'xx', N'Rua São Pedro, 27 apto 71', N'80035-020', N'Cabral', N'Curitiba', N'lacoseabracoslb@yahoo.com.br', N'Bia e Lizie', N'(41) 3521-7271 / 8401-3740', N'Laços e Abraços', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (184, N'Iara Guimarães', N'xx', N'746563849-68', N'4559818-7', N'xx', N'xx', N'São Francisco', N'Curitiba', N'turisnew@terra.com.br', N'Iara', N'(41) 3016-2476', N'Turisnew', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (185, N'Fabiana Margarida ', N'xx', N'018518189-95', N'xx', N'Rua Benjamin Constant, 551 apto 43', N'80060-020', N'Centro', N'Curitiba', N'fabi33cwb@hotmail.com', N'Fabiana', N'(41) 9152-3535', N'Hollybaby Decorações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (187, N'Fernanda M. Pessoa', N'xx', N'044.582.509-06', N'xx', N'Rua João Mikosz,14', N'83706-770', N'São Miguel', N'Araucária', N'contato@harasjamamaca.com.br', N'Fernanda', N'(41) 3643-1680 / 8815-6977', N'Haras Jamamaca', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (188, N'Comemorare Decorações Ltda', N'06043742/0001-80', N'xx', N'xx', N'Av. Erasto Gaertner, 829 lj 01', N'82515-000', N'Bacacheri', N'Curitiba', N'sac@comemorare.com.br', N'Deonizia', N'(41) 3015-9715 / 3079-2585', N'Comemorare Decorações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (191, N'Josiane do Rocio Saqueti Inacio', N'xx', N'018297459-64', N'xx', N'Rua Isabel Costa Bontorim, 82', N'83406-136', N'Planalto', N'Curitiba', N'josianesaqueti@yahoo.com.br', N'Josiane', N'(41) 3562-7912 / 9187-2659', N'Doce Sabor', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (192, N'Casa do Salgado Congelado', N'08.049.194/0001-14', N'xx', N'xx', N'Rua Hartiwing Muller, 04', N'83311-310', N'Guarituba', N'Piraquara', N'xx', N'Shirlei', N'(41) 3668-0690/8815-8255', N'Casa do Salgado Congelado', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (193, N'Lolly Pop Eventos e Decorações Ltda', N'07.529.261/0001-42', N'xx', N'xx', N'Av Iguaçu, 4077', N'80240-031', N'Agua Verde', N'Curitiba', N'lollypop@onda.com.br', N'Sueli', N'(41) 3342-2272 / 9806-4961', N'Lolly Pop Decorações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (194, N'Regiane Lima Pinto', N'xx', N'978.845.379-15', N'xx', N'Marginal José de Anchieta, 1254', N'83408-010', N'Maracanã', N'Colombo', N'regiane@servfesta.com.br', N'Regiane', N'(41) 3606-3482/9187-6498', N'ABC da Festa', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (195, N'Tatiana de Paula Xavier e Silva', N'xx', N'020629759-96', N'xx', N'Av Nossa Sra Aparecida, 742-A', N'80310-100', N'Seminário', N'Curitiba', N'contato@buffet123eja.com.br', N'Tatiana', N'(41) 3016-6789 / 3077-4123', N'1, 2, 3 e já! Eventos Especiais', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (196, N'Danyele Campana Spiacci', N'xx', N'025378549-93', N'xx', N'Av Senador Salgado Filho, 3552', N'81570-000', N'Uberaba', N'Curitiba', N'aquarelakidsbuffet@hotmail.com', N'Danyele', N'(41) 3598-0932 / 9181-0932', N'Aquarela Kids', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (197, N'Milena de Oliveira Reig Stahsefski', N'xx', N'025918019-08', N'xx', N'Rua Pe. Germano Mayer, 297 - Sobreloja', N'82530-020', N'Cristo Rei', N'Curitiba', N'contato@aretefotografias.com.br', N'Milena', N'(41) 3049-1369 / 9934-2527', N'Areté Fotografias', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (198, N'Débora Santos da Silva', N'xx', N'765465609-25', N'xx', N'Rua Frei Livio Panizza, 145', N'81270-720', N'Campo Comprido', N'Curitiba', N'debora@arteeeventos.com', N'Debora', N'(41) 3373-7894/9108-3781', N'Art & Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (199, N'Monica Tieko Nishimura Handa', N'xx', N'247493718-82', N'xx', N'Rua Benedicto B. Fangueiro, 157, s4', N'81540-420', N'Uberaba', N'Curitiba', N'handapa@hotmail.com', N'Monica', N'(41) 3366-0029 / 9963-0997', N'Arte em Papel - Convites', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (200, N'Eliane de Souza Doro', N'xx', N'400.250.551-00', N'xx', N'Angelo Dallarmi, 328, casa03', N'82015-750', N'Sta.Felicidade', N'Curitiba', N'eliane6996@yahoo.com.br', N'Eliane', N'(41) 3273-3917/9916-0201', N'Ateliê Sur La Qualité', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (201, N'Andrea B. de Simão Carelli', N'xx', N'024.894.867-99', N'xx', N'Rua Antonio Correa Bittencourt, 297 apto 06 ', N'82200-260', N'Centro', N'Curitiba', N'carelli.andrea@gmail.com', N'Monica', N'(41) 3618-9843  / 9102-4777 ', N'Atelier Pingo de Mel', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (202, N'Beatriz de Avila Moiana Sampaio', N'xx', N'855332893-72', N'xx', N'Rua Tinguaçu, 96 / Sb 3', N'82940-230', N'Cajuru', N'Curitiba', N'beatriz_moiana@hotmail.com', N'Beatriz Moiana', N'(41) 9917-1086', N'Beatriz Moiana', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (203, N'Beringelados Comercio de Alimentos Ltda', N'05.953.092/0001-48', N'xx', N'xx', N'Rua Petit Carneiro, 389', N'80240-270', N'Água Verde', N'Curitiba ', N'beringelados@terra.com.br', N'Alvaro', N'(41) 3242-4212', N'Beringelados', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (204, N'Maria Inés Zarichta', N'xx', N'020617659-71', N'xx', N'Rua Lerina Maciel Ribas, 717', N'82710-080', N'Curitiba', N'Paraná', N'bicudo_festas@hotmail.com', N'Maria Inez', N'(41) 3585-3618 / 9660-2584', N'Bicudo Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (205, N'Maria Beatriz Cadaxa de Carvalho ', N'xx', N'56198213900', N'xx', N'Rua São Pedro, 27 apto 71 ', N'80035-020', N'Cabral ', N'Curitiba', N'boomballoonfestas@hotmail.com', N'Bia e Lizie', N'(41) 8401-3740 /9616 0689', N'Boom Ballon', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (206, N'Mariana Brand Reichmann', N'', N'083.804.029-28', N'9.376.455.2', N'Av Nossa Sra de Nazaré, 1677', N'82560-000', N'Boa Vista', N'Curitiba', N'xx-mari@hotmail.com', N'Mariana Brand', N'(41) 3030-3302', N'Brincadeira de Criança', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (207, N'Cleide Cristine Foestch', N'xx', N'037691839-08', N'xx', N'Rua Ernani Guarita Tarcaxo, 587', N'81.130-120', N'Capão Raso', N'Curitiba', N'cantinhofashion@uol.com.br', N'Cleide', N'(41) 3026-5353 / 9931-2403', N'Cantinho Fashion', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (208, N'Cleide Cristiane Foestch', N'xx', N'037.691.839-08', N'xx', N'Ermani Guarita Cartaxo, 587', N'81130-120', N'Capão Raso', N'Curitiba', N'caravanadosbrinquedos@uol.com.br', N'Cleide', N'(41) 3026-5353', N'Caravana dos Brinquedos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (209, N'Carlos Rezende', N'xx', N'044.588.249-29', N'xx', N'Rua Paula Gomes, 227 - Apto 204', N'80510-070', N'São Francisco', N'Curitiba', N'contato@estudiocb.com.br', N'Carlos', N'(41) 3095-6260 / 9643-3674', N'Carlos Rezende - Fotógrafo', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (210, N'Casa de Festas Art & Magia Ltda', N'03413156/0001-92', N'xx', N'xx', N'Rua Barão do Cerro Azul, 499', N'80020-180', N'Centro', N'Curitiba', N'contato@artemagiafestas.com.br', N'Karen', N'(41) 3225-1410', N'Casa de Festas Art & Magia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (211, N'Terra Encantada Casa de Festas', N'02024264000100', N'xx', N'xx', N'Rua Holanda, 1545', N'82.540-040', N'Boa Vista', N'Curitiba', N'terra.encantada@gmail.com', N'Ivone', N'(41) 3077-7024', N'Terra Encantada Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (212, N'Maristela Cantu Barbosa', N'xx', N'648.257.289-87', N'xx', N'Rua Roberto Cichon, 646', N'82800-210', N'Capão da Imbuia', N'Curitiba', N'celebraifestas10@hotmail.com', N'Maristela', N'(41) 3365-2284', N'Celebrai Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (213, N'COBRAR CONTRATO', N'', N'', N'', N'Rua Pedro Gusso, 3094', N'', N'CIC', N'Curitiba', N'atendimento@coracaomae.com.br', N'', N'(41) 3327-3140', N'Coração de Mãe Confeitaria', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (214, N'Criação Arte & Studio', N'02.418.233/0001-34', N'xx', N'xx', N'Rodovia do Café, 1769', N'82305-100', N'Mossunguê', N'Curitiba', N'solenzi@yahoo.com.br', N'Sonia Lenzi', N' (41) 3373-1802', N'Criação Arte & Studio', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (215, N'Ednil Osmar Marques', N'xx', N'348336339-49', N'xx', N'Rua João Ribeiro 46', N'81.540-130', N'Jd. das Americas', N'Curitiba', N'si_moon24@hotmail.com', N'Ednil', N'(41) 9245-0548 / 9181-4660', N'DJ Simone Marqs', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (216, N'Eduardo Corrêa', N'xx', N'066410929-25', N'xx', N'Rua Acelino Grande 845', N'82.320-390', N'Santa Felicidade', N'Curitiba', N'dj_eduardocorrea@hotmail.com', N'Eduardo', N'(41) 9631-1749 / 3272-4000', N'Edu Som', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (217, N'COBRAR CONTRATO', N'', N'', N'', N'Rua Marcelino Champagnat, 310', N'', N'Champagnat', N'Curitiba', N'pauladealmeidalima@gmail.com', N'Paula', N'(41) 3079-7290', N'Espaço Donna Chita', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (218, N'Fabio Juarez Koval', N'xx', N'568692231-49', N'xx', N'Rua Rio Grande do Sul, 369', N'83404-292', N'Vila Guraraci', N'Colombo', N'fabio.koval@yahoo.com.br', N'Fábio', N'(41) 3621-5550 / 9938-4350', N'Fabio Koval', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (219, N'LUCIDALVA ARAUJO DOS SANTOS ', N'xx', N'872.857.039-15', N'xx', N'Rua Eng. Adhemar Lino de Faria, 46 cj. Diadema 2', N'81450-510', N'CIC', N'Curitiba', N'lucidalva.pr@hotmail.com', N'Luci', N'(41) 3566-1435 / 9925-3498', N'Faça Festas - Decorações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (220, N'Festetii Art. e Dec. p/Festas Ltda', N'09009834/0001-32', N'xx', N'xx', N'Av São José 1127', N'80.050-350', N'Cristo Rei', N'Curitiba', N'festetii@festetii.com.br', N'Deonizia Gabardo', N'(41) 3085-4110 / 3362-6350', N'Festetii - A magia da festa', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (221, N'Festtaria - Assessoria em Festas', N'xx', N'043871929-84', N'xx', N'Rua Sen Roberto Glaser 255', N'81540-400', N'JD das Americas', N'Curitiba', N'contato-festtaria@hotmail.com', N'Taynara ou Liana', N'(41) 8458-4749 / 9918-0141', N'Festtaria - Assessoria em Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (222, N'Cynthia do Rocio Jarek', N'xx', N'034321749-00', N'xx', N'Rua Senador Salgado Filho, 2868 - lj02', N'81.570-040', N'Uberaba', N'Curitiba', N'cynjarek@gmail.com', N'Cynthia do Rocio Jarek', N'(41) 3364-5391 / 8411-8575', N'Cynthia Doces e Salgados', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (223, N'Glair', N'xx', N'746563849-68', N'4559818-7', N'Rua manoel Souza Dias Negrão, 1247', N'82540-070', N'Boa Vista', N'Curitiba', N'contato@temnarede.com.br', N'Glair', N'(41) 3077-9819', N'Gla Artesanatos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (224, N'Jaqueline Brites', N'xx', N'005.294.139-65', N'xx', N'Rua Abel Scuissiato, 688', N'80630-020', N'Vila Guaira', N'Curitiba', N'jaquebaloes.decorativa@ymail.com', N'Jaque', N'(41) 3345-0026 / 9668-1575', N'Jaque Balões', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (310, N'Ateliê Aquarela Mágica', N'12.611.176/0001-69', N'xx', N'xx', N'Av Presidente Afonso Camargo, 955', N'80050-370', N'Cristo Rei', N'Curitiba', N'atelieaquarelamagica@gmail.com', N'Josirene', N'(41)3263-4114/9660-9240', N'Ateliê Aquarela Mágica', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (226, N'Kataeventos Brinquedos e Brincadeiras', N'04.447.372/0001-11', N'', N'', N'Rua dos Funcionários, 144', N'80035-050', N'Ahú', N'Curitiba', N'kataeventos@hotmail.com', N'', N'(41) 3252-8084 / 9603-7914', N'Kataeventos Brinquedos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (227, N'Maria Alice Liberato Pinto', N'xx', N'003484509-74', N'5.446.586-6', N'Rua Edilson Alexandre Saldanha Rasso, 318', N'82115-240', N'Pilarzinho', N'Curitiba', N'liapink74@bol.com.br', N'Eliane', N'(41) 3387-8157 / 9907-8157', N'Lia Pink', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (229, N'Edlaura Franco Gutierres', N'04869613/0001-10', N'xx', N'xx', N'Av Frederico Lambertucci, 943', N'81.330-000', N'Fazendinha', N'Curitiba ', N'maniabrinquedos@terra.com.br', N'Ellen Maingue', N'(41) 3093-6308 / 9679-7101', N'Mania Festas e Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (230, N'Marcia Teresinha Ferreira D´Avila', N'xx', N'393013549-34', N'xx', N'Rua Dr. Simão Kossobudski, 2.020', N'81730-410', N'Boqueirão', N'Curitiba ', N'm_tfdavila@yahoo.com.br', N'Marcia', N'(41) 3328-4918 / 3286-8501 / 8405-4094', N'Marcia D´Avila', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (231, N'COBRAR CONTRATO', N'xx', N'', N'', N'', N'', N'Barreirinha', N'Curitiba', N'', N'Maria Alice', N'(41) 3354-8599 / 9652-6295', N'Maria Alice - Decorações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (232, N'CR Nudelmania Ltda', N'77538593/0002-50', N'xx', N'xx', N'Rua Dr Alexandre Gutierrez, 536', N'80240-130', N'Água Verde', N'Curitiba ', N'nudelmania@nudelmania.com.br', N'Isac', N'(41) 3018-1877', N'Nudelmania', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (233, N'Original Festas e Eventos', N'xx', N'058.943.359-81', N'xx', N'R. Carlos Klentz, 1410 bl 14 apto 14', N'81320-000', N'Fazendinha', N'Curitiba', N'tatiane@originalfestaseeventos.com.br', N'Tatiane', N'(41) 3336-8463 / 8453-2085', N'Original Festas e Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (234, N'Liege Cristina Furtado', N'00058386/7770-15', N'xx', N'xx', N'Rua Edmundo Saporski, 220', N'83005-270', N'São Cristovão', N'Curitiba', N'hilarios.comediantes@hotmail.com', N'Liege', N'(41) 3556-3827/9968-3144', N'Os Hilarios & Comediantes ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (235, N'Turma do Tio Pipoca Recreação e Eventos Ltda', N'10.546.980/0001-86', N'xx', N'xx', N'Rua Mal. Humberto de A. C. Branco, 986 lj 01', N'82530-020', N'Cristo Rei', N'Curitiba ', N'contato@pirilimfestas.com.br', N'Natasha / Marcio', N'(41) 4102-4242 / 9639-8199', N'Pirilim Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (236, N'Rosana da Silva Ueda', N'xx', N'828.844.639-68', N'xx', N'Rua Angelo Brsegnello, 38', N'82840-540', N'Bairro alto', N'Curitiba', N'ueda_rosana@hotmail.com', N'Rosana', N'(41) 3238-6710  9944-3341', N'Rosana Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (237, N'Eudo Tosta Seixas Filho', N'xx', N'491213249-72', N'xx', N'Rua Emílio de Menezes, 1243', N'80520-240', N'Bom Retiro', N'Curitiba ', N'fabricadasfestas@ibest.com.br', N'Eudo', N'(41) 3336-1175 / 8400-7974', N'Rudi Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (238, N'Geise Prudente da Silva', N'xx', N'000.190.537-62', N'xx', N'Rua Alberico Flores Bueno, 605', N'82840-170', N'Bairro Alto', N'Curitiba ', N'sonhosdefestas@gmail.com', N'Geise', N'(41) 3209-6211 / 8410-6123', N'Sonhos de Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (239, N'Giovani Producoes Artisticas SC Ltda', N'76071653/0001-23', N'xx', N'xx', N'Rua Domingos Strapasson, 620', N'82.320-040', N'Santa Felicidade', N'Curitiba ', N'espacocrianca@hotmail.com', N'Cintia', N'(41) 3273-1244', N'Parque da Criança', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (240, N'Jucelia Daniel ME', N'04658685/0001-19', N'xx', N'xx', N'Rua São Bento 615', N'81.610-140', N'Hauer', N'Curitiba ', N'contato@tererefestas.com.br', N'Jucelia ', N'(41) 3278-7203 / 9961-3490', N'Tererê Festas', NULL, NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (241, N'Edmilson Luis de Souza', N'xx', N'688.832.509-15', N'xx', N'Rua Vicente Geronasso, 567', N'82560-270', N'Boa Vista', N'Curitiba ', N'thathi-festas@hotmail.com', N'Simone / Edmilson', N'(41) 3354-7010 / 9174-1178', N'ThaThi Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (242, N'Turma do Tio Pipoca Recreação e Eventos Ltda', N'10.546.980/0001-86', N'xx', N'xx', N'Av Marechal HUmberto de A.C. Branco, 986 - Lj 01', N'82530-020', N'Cristo Rei', N'Curitiba ', N'contato@tiopipoca.com.br', N'Natasha / Marcio', N'(41) 4101-4821 / 9639-8199', N'Turma do Tio Pipoca Recreação e Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (243, N'Rebeca Louize Nogueira', N'xx', N'087849339-50', N'xx', N'Rua Angelo Antonio Zanchetin 885 B', N'83430-000', N'Jardim Paulista', N'Campina Grande do Sul', N'beauty124@hotmail.com', N'Wagner B. Nogueira', N'(41) 3679-2171 / 8411-0582', N'Wagner Beauty', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (244, N'Armazem Vitoria Limitada ME', N'02.590.423/0001-34', N'xx', N'xx', N'Rua Petit Carneiro, 352', N'80240-050', N'Água Verde', N'Curitiba ', N'buffetgift@bol.com.br', N'Perla Boese', N'(41) 3024-9439 / 9206-3283 / 8435-7497', N'Buffet Kids', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (245, N'Odineia Leticia de Castro', N'xx', N'043.204.459-02', N'xx', N'Rua Walter Marquadt, 06', N'80215-095', N'Jd. Botanico', N'Curitiba', N'btcomercial@gmail.com', N'Odinéia', N'(41) 3362-0930 / 8804-7326', N'Butterfly Art & Mel', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (246, N'Imagem Virtual Com. Grafica', N'03689535/0001-00', N'xx', N'xx', N'Rua Antonio Portela, 06', N'82015-500', N'Orleans', N'Curitiba ', N'dani@ateliecriar.com.br', N'Daniele', N'(41) 3372-7434 / 9108-7608', N'Criar Ateliê de Idéias', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (247, N'Delicia de Pão', N'007689045-79', N'xx', N'xx', N'Rua Padre Deonh 619/sob 03 ', N'81630-090', N' Hauer', N'Curitiba', N'contato@deliciadepao.com.br', N'Jamile', N'(41) 3284-3171 / 3284-4020', N'Delícia de Pão', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (248, N'Juliana Maielly Bernardo Saldanha', N'xx', N'048344129-54', N'xx', N'Rua Adriana Cerez Zago Bueno, 547', N'81.470-030', N'Tatuquara', N'Curitiba ', N'julianabernardo2@hotmail.com', N'Juliana Maielly', N'(41) 3265-8689 / 8408-6644', N'Eduarda - Festas e Decorações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (249, N'Silvia Lopes  Nunes ', N'xx', N'979.514.809-59', N'xx', N'Av Getulio Vargas, 3158', N'80240-041', N'Água Verde', N'Curitiba', N'contato@formalize.com.br', N'Silvia Lopes', N'(41) 3019-1383/8444-3333', N' Formalize Cerimonial', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (250, N'Foto Winner Kiyo Ltda ', N'72.175.623/0002-97', N'xx', N'xx', N'Av. Nsa. Sra. De Lurdes, 63', N'81530-020', N'Jd. Americas', N'Curitiba', N'lanabr@gmail.com', N'Lana Brich', N'(41)3014-6242', N'Foto Winner', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (252, N'Paulo Rodrigues', N'xx', N'546827709-34', N'xx', N'Rua 40, 122', N'83413-000', N'Vila Zumbi dos Palmares', N'Colombo', N'scalasom@hotmail.com', N'Paulinho', N'(41) 9907-9523 / 3675-0136', N'Scala Som', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (253, N'Happy Panquecas Panquecaria Ltda', N'10.430.803/0001-30', N'xx', N'xx', N'Rua 24 de maio, 1120', N'80230-080', N'Rebouças', N'Curitiba ', N'contato@happypanquecas.com.br', N'Sandra', N'(41) 3076-7006', N'Happy Panquecas ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (254, N'Isabelle Ravaglio', N'xx', N'865.055.139-49', N'xx', N'Rua Confúcio, 48', N'82700-230', N'Boa Vista', N'Curitiba ', N'isabelleravaglio@bol.com.br', N'Isabelle ', N'(41) 3354-2741 / 9915-8870', N'Isabelle Ravaglio', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (255, N'Roberto Correa', N'xx', N'027.783.299-35', N'xx', N'Rua Campo Belo, 69', N'83505-380', N'Vida Feliz', N'Curitiba', N'robertocorreax@gmail.com', N'Roberto Correa', N'(41) 9965-8058', N'Roberto Correa', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (256, N'Gilberto Francisco da Silva', N'xx', N'877787189-87', N'xx', N'Rua Padre Agostinho 635', N'82700-420', N'Champagnat', N'Curitiba ', N'magofestaschampagnat@hotmail.com', N'Gilberto', N'(41) 33228464', N'Mago Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (257, N'Nanci Cristina Araujo de Souza', N'xx', N'752.814.309-04', N'xx', N'Rua Tem. Coronel  Muniz de Aragão, 385', N'82220-040', N'Barreirinha', N'Curitiba', N'nancifest@bol.com.br', N'Nanci', N'(41) 3354-4101', N'Nanci Fest', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (258, N'Danielle Pereira de Araújo ME', N'11.798.871/0001-19', N'xx', N'xx', N'Rua Augusto de Mari, 3695', N'80610-180', N'Portão', N'Curitiba ', N'atendimento@mil-ideias.com', N'Danielle Pereira', N'(41) 3027-4925', N'Mil Ideias', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (259, N'Multi Fest Locação de Mobiliario para Eventos', N'09575438/0001-72', N'xx', N'xx', N'Rua Passos de Oliveira, 992', N'83030-720', N'Centro', N'São José dos Pinhais', N'atendimento@multifesteventos.com', N'Dionizio Pego', N'(41) 3398-0546', N'Multi Fest Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (260, N'Flavio Ricardo Coutinho Veiga', N'XX', N'03075999903', N'69580130', N'Rua Profª Luiza Borges Fanini, 551, ap 01/302', N'81925-210', N'Sitio Cercado', N'Curitiba', N'magiaealegriabrinquedos@hotmail.com', N'Bruna/Marcelos', N'(41) 3077-1686 / 9232-7903', N'Magia e Alegria Brinquedos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (261, N'Marcio de Souza Ferreira', N'04.015.722/0001-70', N'xx', N'xx', N'Rua Francisco Derosso, 872 - lj.04', N'81710-000', N'Xaxim', N'Curitiba', N'contato@masterfest.com.br', N'Debora/Marcio', N'(41) 3095-2959 / 3095-2949', N'Master Fest Locações', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (262, N'Juliana Olivotto Barros', N'XX', N'047.512.129-58', N'8.143.639-8', N'Rua Lupionopolis, 239, casa', N'81925-260', N'Sitio Cercado', N'Curitiba', N'juliolivotto@hotmail.com', N'Juliana', N'(41)3564-4722/9964-1184', N'Gifer Bolos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (263, N'Leandro Paulista da Silva', N'xx', N'036.738.869-32', N'102800494', N'Rua Leon Tolstoi, 196', N'81010-090', N'Lindoia', N'Curitiba', N'paulista.leandro@gmail.com', N'Nilda', N'(41) 3532-9464', N'Nilda Dias Bolos e Doces', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (264, N'Silvio Nazareno Neves', N'xx', N'876.296.589-15', N'60279730', N'Rua Mal. Althayr Roszanny, 259 apto 07', N'81110-350', N'Capão Raso', N'Curitiba', N'contato@girodapizza.com.br', N'Silvio / Francine', N'(41) 3042-0085/9969-8927/8886-2000', N'Giro da Pizza', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (266, N'Nilson Willy Anderle Junior', N'12.419.207/0001-84', N'', N'', N'Rua Frederico Lambertucci, 737', N'81330-000', N'Fazendinha', N'Curitiba', N'piguinhokids@hotmail.com', N'Junior', N'(41) 3604-1354', N'Pinguinho Kids Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (267, N'Cleide Cristine Foestch ', N'xx ', N'037691839-08 ', N'xx', N'Rua Isaac Ferreira da Cruz, 4731 bl 04 lj 02', N'81.910-000 ', N'Sitio Cercado', N'Curitiba ', N'cdbfestas@hotmail.com', N'Cleide', N'(41) 3026-5353 / 9931-2403 ', N'CDB FESTAS', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (268, N'Andréia Pereira de Oliveira Opuchkevich', N'', N'028.241.399-51', N'7.601.292-0', N'Rua Sargento Durval Gomes, 76', N'81.240.480', N'Fazendinha', N'Curitiba', N'contato@legabi.com.br', N'Andreia', N'(41) 3239-3289 / 9637-6623', N'Le Gabi - Festas e Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (269, N'Edson Clodoaldo Aguiar', N'11.992.367/0001-55', N'xx', N'xx', N'Rua Margarida de Araujo Franco, 1470', N'83005-070', N'Centro', N'S.J.Dos Pinhais', N'lucianajacintodoces@gmail.com', N'Luciana/Danielle', N'(41)3384-4804', N'Luciana Jacinto Doces', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (270, N'Adilson Luiz Terres Venâncio', N'xx', N'491.490.679-15', N'3.109.308-2', N'Avenida Nossa Senhora Aparecida, 1114 Sala 04', N'80.310-100', N'Seminário', N'Curitiba', N'salaogirassol@hotmail.com', N'Adilson Venâncio', N'(41) 3274-5553 - 8821-5575', N'Salão de Festas Girassol', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (271, N'MOZAR & MOZAR', N'06225271/0001-21', N'xx', N'xx', N'Rua Júlio Wischral, 47', N'81540-590', N'Guabirotuba', N'Curitiba ', N'contato@cataventofest.com.br', N'Ana Flavia Wirbiski', N'(41) 3376-9251/ 9925-3534', N'Cata-vento Fest Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (272, N'Celia Mara P.da Silva ', N'xx', N'921.667.419-91', N'xx', N'Av Anita Garibaldi, 1642', N'82200-530', N'Ahú', N'Curitiba', N'loja@mariabalao.com.br', N'Celia', N'(41) 3023-3130', N'Maria Balão', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (273, N'Sidclei do Pilar', N'xx', N'395.190.469-20', N'3.058.415-5', N'Rua Juraci Sebastiana de Lima, 500', N'', N'Jd Flores', N'Colombo', N'', N'Sidclei', N'(41) 9997-4010/3354-7829 ', N'Chácara Primeiro de Maio', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (274, N'Francisco Dagoberto de Almeida', N'XX', N'766.1-20', N'6.820.575-1/PR', N'Rua Pe Germano Mayer, 1347', N'80045-310', N'Cristo Rei', N'Curitiba', N'buffetsiriolibanes@hotmail.com', N'Francisco', N'(41) 3398-1342', N'Buffet Sirio Libanês ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (275, N'Rodrigo Rodrigues de Souza', N'117780300001-40', N'xx', N'64777011-0', N'Rua Inacio Wollski, 110', N'81460-366', N'CIC', N'Curitiba', N'eventualle@eventualle.com.br', N'Rodrigo', N'(41) 9162-6116 / 9982-7289', N'Eventualle Fotografias e Filmagem', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (308, N'Andre Telles Domingues', N'xx', N'962.755.709-97', N'4.326.822-8', N'Rua Alberto Stenzowiski, 230', N'81050-020', N'Novo Mundo', N'Curitiba', N'atendimento@amarelinha.com', N'Franciele e Andre', N'(41) 3332-7818', N'Amarelinha Foto & Vídeo', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (313, N'Andreia Cristina Gbur Martins', N'xx', N'963.074.479-15', N'6.197.432.6', N'Rua Prof Basilio Ovidio da Costa, 2316', N'80.310-130', N'Santa Quteria ', N'Curitiba', N'kashmir.eventos@hotmail.com', N'Andrea e Marco Aurelio', N'(41) 3022-5494 / 9612-7789', N'Kashmir Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (315, N'Tania Villalba', N'xx', N'491.973.719-04', N'3.576.182-9', N'Rua Merhy, 1104, sob B', N'82.560-440', N'Boa Vista', N'Curitiba', N'villalba.tania@gmail.com', N'Tania', N'(41) 3359-6591', N'Villalba Doces Finos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (334, N'Evandro Achilles', N'xx', N'031.601.079-06', N'6.369.396-0', N'Rua Santa Monica, 644', N'81110-400', N'Capão Raso', N'Curitiba', N'ceedin644@gmail.com', N'Evandro', N'(41) 3045-4513', N'CEEDIN-Salão de Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (335, N'Flek Com de Prod Importados Ltda', N'12.791.700/0001-20', N'xx', N'xx', N'Rua João Batista Dallarmi, 452', N'82010-610', N'Santo Inacio', N'Curitiba', N'elisabeth.flek@gmail.com', N'Elisabeth David', N'(41) 3359-1241', N'The Original Funny Bands', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (336, N'Patricia Candido França Elizeu Machado', N'xx', N'849.768.969-00', N'5.008.654-2', N'Rua Pernambuco, 2012', N'80630-160', N'Guaira', N'Curitiba', N'patitasbiscuit@hotmail.com', N'Patricia', N'(41) 3245-5747/8855-3110/8843-1253', N'Patitas Biscuit', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (337, N'Nickel & Igreja Eventos Ltda ', N'09.283.044/0001-40 ', N'xx ', N'xx ', N'Av dos Estados 1250, lj 04 ', N'80610-040 ', N'Água Verde ', N'Curitiba ', N'megdecor@gmail.com', N'Marcia ', N'(41) 3363-4929 / 9141-4525 ', N'Mega Decorações & Eventos Filial Pinheirinho', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (338, N'Associação dos Cronistas Esportivos do Paraná', N'76.902.816/0001-72', N'xx', N'xx', N'Rua Antonio Moreira Lopes, 500', N'82980-100', N'Cajuru', N'Curitiba', N'aceppr@uol.com.br', N'Isaias', N'(41) 3261-2593', N'Associação Cronistas Esportivos PR', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (339, N'279-ADRIANA FATIMA DE SOUZA ', N'xx', N'877.757.009-04', N'xx', N'Rua Alexandre Gutierrez, 219', N'80.240-130', N'Agua Verde', N'Curitiba', N'adrisousa1972@hotmail.com', N'Adriana', N'3254-4033 / 8802-7924', N'Planeta Festas - Água Verde', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (340, N'Renata Araujo Oliveira', N'', N'042.712.019-52', N'8.527.873-8', N'Av Juscelino K.de Oliveira, 7102', N'81450-000', N'Cidade Industrial', N'Curitiba', N'gvfestas-eventos@uol.com.br', N'Renata', N'(41) 8478-3556 / 7814-2774', N'GV Festas e Eventos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (341, N'Aracelli Koerich', N'', N'030.622.21917', N'87910580', N'Rua Pedro Viriato Parigot de Souza, 1100', N'81200-100', N'Mossunguê', N'Curitiba', N'aracelli@mariaemarias.com.br', N'Aracelli', N'(41) 9119-4302', N'Maria & Marias-Cupcakes', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (345, N'Leandro Iark', N'', N'036.380.489-77', N'6125916-3', N'Rua José de Alencar, 578', N'80050-240', N'Alto da XV', N'Curitiba', N'leandroiark@hotmail.com', N'Leandro', N'(41) 3328-7046', N'Leandro Iark-Fotografias', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (346, N'Rodrigo Scaramella', N'xx', N'028.663.729-48', N'5.117.958/7', N'Rua Adilio Ramos, 1455', N'82820-100', N'Bairro Alto', N'Curitiba', N'rodrigometralhas@yahoo.com.br', N'Janaina', N'(41) 3238-4425', N'The Candymans Bombonniere', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (347, N'Guia de Festas Curitiba', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Guia de Festas Curitiba', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (348, N'Isaura Maria dos Santos', N'xx', N'008.968.879-10', N'8.719.656-9', N'Rua Prof Eduardo Correia Lima, 1350, casa 2', N'82810-490', N'Capão da Imbuia', N'Curitiba', N'isaurasantos.festas@bol.com.br', N'Isaura', N'(41) 3365-3863/8422-8228', N'Isaura Santos-Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (309, N'Ana Lucia Milone de Lara', N'xx', N'023332819-01', N'72499441', N'Av Paraná, 1990', N'82510000', N'Boa Vista', N'Curitiba', N'artfestas_analu@hotmail.com', N'Ana Lu', N'(41) 8435-4587 / 3666-4384', N'Art Festas Ana Lu', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (311, N'Ronald Peixoto', N'xx', N'514.365.409-25', N'2.933.209/PR', N'Rua Luiz Leduc, 400', N'82100-010', N'Vista Alegre', N'Curitiba', N'ronald@ronaldpeixoto.com', N'Ronald', N'(41) 8518-3385 / 3014-8461', N'Ronald Peixoto-Fotografia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (314, N'Andrea Cristina Gbur', N'', N'963.074.479-15', N'61974326', N'Rua Prof Basilio Ovidio da Costa, 2316', N'80.310-130', N'Sta Quiteria', N'Curitiba', N'kashmir.eventos@hotmail.com', N'Andrea e Marco Aurelio', N'(41) 3022-5494/9612-7789', N'Thily ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (317, N'Playup Diversões Eletronicas Ltda', N'00.056.634/0001-66', N'xx', N'xx', N'Rua XV de Novembro, 279/287', N'80020-310', N'Centro', N'Curitiba', N'paulo@playup.com.br', N'Paulo/Luciane', N'(41) 9102-3335/3359-9030/3225-6981', N'Doobeedoo Buffet Infantil', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (319, N'Elisnara Guimarães', N'xx', N'045.784.769-79', N'9399821-9', N'Rua Marte, 416', N'81910-340', N'Sítio Cercado', N'Curitiba ', N'naninhafestas@yahoo.com.br', N'Maristela', N'(41) 3044-5104', N'Naninha Festas                                       Locação de Brinquedos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (320, N'Patric Cecilio', N'xx', N'049.122.219-02', N'8.215.034-0', N'Rua Claudio Todisco, 70', N'81.810-020', N'Xaxim', N'Curitiba', N'djpatricpt@hotmail.com', N'Patric', N'(41) 3268-4930 / 8456-7997', N'DJ Patric', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (323, N'Alma Fabiola Scaramella', N'XX', N'724.933.219.87', N'4.744.236-2', N'Rua Prof.Francisco Zardo, 166', N'82320-000', N'Sta. Felicidade', N'Curitiba', N'fabi_sca@hotmail.com', N'Fabiola', N'(41) 3372-8560/8458-3710/9646-1778', N'Decore e Brinque', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (324, N'Raquel Cogitskei', N'xx', N'040.136.559-00', N'10.424.53', N'Av Santa Bernadete, 730, ap 33, bloco F', N'81.010-200', N'Portão', N'Curitiba', N'raquelcogitski@hotmail.com', N'Raquel', N'(41) 3359-9241 / 9216-4395', N'Disk Festas Doce Mel', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (327, N'Alegria Eventos Ltda', N'12.393.014/0001-00', N'xx', N'xx', N'Rua Epaminondas Santos, 1490', N'82820-090', N'Bairro Alto', N'Curitiba', N'alegriabrinquedo@hotmail.com', N'Augusto', N'(41) 3328-4883', N'Alegria Brinquedos', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (329, N'Nanda Capel - Fotografia', N'12.692.862/0001-01', N'xx', N'xx', N'Rua José Rossetim, 359', N'82300-351', N'São Braz', N'Curitiba', N'contato@nandacapelfotoinfantil.com', N'Fernanda', N'(41) 3374-1097/ 9837-7078', N'Nanda Capel - Fotografia', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (330, N'Mariza Nesi Alves', N'', N'691.924.649-04', N'880.520-2', N'Rua Manoel de Chagas Lima, 390', N'82300.350', N'São Braz', N'Curitiba', N'festaslepetit@hotmail.com', N'Nanda', N'(41) 3272-0137', N'Festas Le Petit-Buffet', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (332, N'Fabiane Santos Lacerda', N'', N'859.207.039-20', N'5270649-1', N'Av Sta Bernadethe,101, ap 94, Bl 01', N'81010-200', N'Lindóia', N'Curitiba', N'rafalsouza@onda.com.br', N'Fabaine', N'(41) 3019-2887', N'Fabi Lembranças', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (331, N'Marcos Aurelio de Lima ', N'', N'028.603.309-76', N'6.746.792-2 ', N'Rua Antonio Correa Bittencourt, 517', N'82200-260 ', N'Ahú', N'Curitiba', N'celebrarefestascwb@hotmail.com', N'Giovana/Marco Aurelio', N'(41) 3352-9404', N'Celebrare Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (333, N'042-DANIELI OLIVEIRA DE PONTES', N'', N'037.841.339-24', N'', N'Rua Huxley 907', N'83.408-180', N'Atuba', N'Colombo', N'danisfestas2011@hotmail.com', N'Dani', N'(41) 9207-9789 / 3621-7794 / 9223-4499/', N'Dani Festas Agudos do Sul', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (342, N'Vanessa Mabel Sponchiado Me', N'13.211.444/0001-18', N'xx', N'xx', N'Rua Nossa Senhora de Nazaré, 1677', N'82560-000', N'Boa Vista', N'Curitiba', N'fadabelfestas@hotmail.com', N'Vanessa', N'(41) 3049-4163 ', N'Fada Bel Festas', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (343, N'Fernanda Boscardin', N'xx', N'027.793.699-30', N'6.489.886-8', N'Rua Frei Tarcisio Mastena, 86', N'82320-150', N'Santa Felicidade', N'Curitiba', N'contato@f2fotoevideo.com.br', N'Fernanda', N'(41) 3205-6901 / 9103-6901 / 9668-6861', N'F2 Foto e Vídeo', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (344, N'Carla Danielle da Cruz', N'', N'027.168.939-00', N'7.200.309.8', N'Rua Antonio Simm, 271-3', N'82800-290', N'Capão Imbuia', N'Curitiba', N'missglace@missglace.com.br', N'Carla Cruz', N'(41) 9951-5110', N'Miss Glace', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (351, N'Tatiana Moreira Cardoso', N'xx', N'006.761.349-06', N'78129859', N'Rua Praxedes Silva Avelleda, 175', N'82410-420', N'Sta Felicidade', N'Curitiba', N'tatianacakedesigner@globo.com', N'Tatiana', N'(41) 8841-8300', N'Tatiana Cake Designer', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [razao_social], [cnpj], [cpf], [rg], [endereco], [cep], [bairro], [cidade], [email], [responsavel], [telefone], [nome_fantasia], [login], [senha]) VALUES (352, N'Casa de Carnes Mikilas LTDA', N'08.064.948/0001-112', N'', N'', N'Av dos Estados, 940', N'80610-040', N'Água Verde', N'Curitiba', N'mikilas@mikilas.com.br', N'Gislaine', N'(41) 3044-4796', N'Mikilas Carnes & Eventos', NULL, NULL)
/****** Object:  Table [dbo].[categoria]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](100) NULL,
	[tipo_categoria] [int] NULL,
	[texto] [nvarchar](3000) NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_codigo] ON [dbo].[categoria] 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_descricao] ON [dbo].[categoria] 
(
	[descricao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (1, N'Buffet Infantil', 1, N'BUFFET INFANTIL: É o local perfeito para a garotada, neste tipo de espaço tudo é reformulado pensando no público infantil, mas com opções de lazer também para os adultos. Os profissionais são especializados e gostam do que fazem. Abaixo você encontrará os melhores buffet infantis de Curitiba.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (2, N'Buffet Social', 1, N'BUFFET SOCIAL: Locais preparados para atender todos os tipos de eventos familiares e comerciais com requinte, praticidade, comodidade e profissionais qualificados que montam sua festa, para que você saia de casa apenas para receber seus convidados! Abaixo você encontrará os melhores buffet''s sociais de Curitiba.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (3, N'Buffet em Domicílio', 1, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (4, N'Chácara', 1, N'CHACARA: Se voce quer um local diferenciado e marcante, pode optar por chacaras ou mansoes que disponibilizam locais de especiais para realizacao de festas e eventos.
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (5, N'Clubes', 1, N'CLUBES: Espaços para festas e eventos, com o poder de unir os estilos esportivo, recreativo e social com toda infra-estrutura e segurança. Alguns clubes incluem também serviços completos de buffet. ')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (6, N'Salão de Festas', 1, N'SALÃO DE FESTAS:  Locais preparados para atender todos os tipos de eventos familiares e empresariais.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (7, N'Animação / Recreação', 2, N'ANIMAÇÃO/RECREAÇÃO: Profissionais renomados oferecem diversão com qualidade e responsabilidade, transmitindo a sensação de encantamento típico para cada idade.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (8, N'Artigos para Festa', 2, N'ARTIGOS PARA FESTA: Tudo que você imaginar para sua festa ou evento, poderá encontrar em lojas de artigos para festas.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (9, N'Automóveis para Eventos', 2, N'LOCAÇÃO DE AUTOMÓVEIS DE LUXO: Imagina só você chegando na igreja ou na festa em uma linda limosine, ou então naquele carro antigo maravilhoso, ou até mesmo em uma carruagem magnífica. Existem empresas que podem realizar este sonho.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (10, N'Bandas e Músicos', 2, N'BANDAS/MÚSICOS: Para dar um toque diferente em sua festa ou eventos, música ao vivo e uma ótima opção.
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (11, N'Brinquedos', 2, N'BRINQUEDOS: Com a locação de brinquedos, você poderá fazer uma festa  animada e divertida, podendo locar desde uma piscina de bolinhas ao mais radical bung jump, além de brinquedos eletrônicos e muito mais...')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (13, N'Bolos Artísticos', 2, N'Bolos Artísticos:Bolos artísticos e cenográficos são como verdadeiras obras de arte da culinária, que fascinam a todos com sua beleza e perfeição, pois são elaborados com muita atenção em cada detalhe.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (14, N'Bolos/Doces/Salgados', 2, N'Bolos/Doces/Salgados: Para agradar o paladar de seus convidados, os doces, salgados, bolos e sobremesas devem ser de qualidade, confeccionados por profissionais qualificados. 
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (15, N'Casamentos', 2, N'CASAMENTO 
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (16, N'Cenários', 2, N'CENÁRIOS: As decorações infantis usam cenários e esculturas em isopor e outros materiais, aqui podemos anunciar os profissionais responsáveis por estas obras.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (17, N'Chá de Lingerie', 2, N'CHÁ DE LINGERIE:  Agora as noivas modernas podem fugir dos tradicionais "Chás de Panelas ou Chá Bar" e dizer adeus a todos aqueles utensílios domésticos e apostar no "Chá de Lingerie", um encontro agradável e muito útil para compor um enxoval íntimo.
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (18, N'Climatização ', 2, N'CLIMATIZAÇÃO DE AMBIENTES: Torne o ambiente do seu evento agradável, contratando serviços de profissionais especializados em climatização de ambientes. Muito utilizado também, por empresas como: buffe''ts, restaurantes, lojas, indústrias...')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (19, N'Cerimonial', 2, N'Cerimonial: Se FESTA antes era um assunto para se tratar em família, hoje pode ser deixado nas mãos de especialistas, onde a praticidade e a comodidade fazem você aproveitar melhor a festa, sem preocupações...
 
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (20, N'Cestas Presente', 2, N'CESTAS PRESENTE: É muito bom ser surpreendido com presentes inesperados, principalmente quando são saborosos!')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (21, N'Coffe Break', 2, N'COFFE BREAK: Ideal para eventos empresariais, o coffe break é uma idéia original e prática.
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (22, N'Convites/Lembrancinhas', 2, N'Convites/Lembrancinhas: Hoje em dia podemos contar com a era digital, onde qualquer idéia pode ser executada, dando condições de personalizar convites e lembrancinhas com um piscar de máquina! 
 
 
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (23, N'Congelados', 2, N'CONGELADOS: Uma opção prática e rápida, onde pode-se comprar tudo com certa antecedência e  elaborar um cardápio completo para sua festa, evento ou jantar.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (24, N'Decoração-Tema Infantil', 2, N'LOCAÇÃO DE TEMAS INFANTIS')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (25, N'Decoração-Ambientação', 2, N'Ambientação')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (26, N'Decoração-Balão', 2, N'Decoração com Balões')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (27, N'Decoração-Confecção', 2, N'Confecção de peças para temas e cenários.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (28, N'Distribuidoras', 2, N'Distribuidoras: Na hora de escolher as bebidas e a comida para sua festa, temos que pensar em alguns fatores como: qual a variedade e quantidade a ser servida, combinação junto ao cardápio principalmente, portanto os profissionais que anunciam em nosso guia estão prontos para atender suas necessidades.
 
 
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (29, N'Equipamentos para Festa', 2, N'Equipamentos p/festa: Nos dias atuais, existem locações dos mais variados tipos de equipamentos para realizar desde uma simples reunião a um mega evento.
 
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (30, N'Eventos Empresariais', 2, N'Eventos Empresariais:  Planejando realizar um lançamento de produto, confraternização, feira e exposição?! Achou o lugar certo, onde encontrará os melhores profissionais da área de planejamento de eventos empresariais.
 

       
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (31, N'Fantasias', 2, N'FANTASIAS: Festas temáticas, bailes de máscara e festas a fantasia estão em alta. Entre na festa e participe da brincadeira, locando seu traje em lojas especializadas, com certeza você vai entrar no clima.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (32, N'Formaturas', 2, N'FORMATURAS: É muito complicado e demorado organizar uma festa de formatura, analisar contratos, pesquisar os melhores buffet''s e negociar  prazos. Nesta hora, um profissional competente faz toda a diferença.
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (33, N'Fotografia/Filmagem', 2, N'FOTO / FILMAGEM: Cabe a estes profissionais a difícil e agradável missão de eternizar momentos de intensa emoção, que acontecem, muitas vezes, em frações de segundos.
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (34, N'Material para Festa', 2, N'MATERIAL P/FESTA: Quer organizar um jantar ou uma festa, mas não tem o material necessário para receber e servir seus convidados?! Fique tranqüila! Nossos anunciantes dispõe de produtos especializados para sua festa!')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (35, N'Organização de Eventos', 2, N'Organização: Se FESTA antes era um assunto para se tratar em família, hoje pode ser deixado nas mãos de especialistas, onde a praticidade e a comodidade fazem você aproveitar melhor a festa, sem preocupações.')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (36, N'Prestadores de Serviços', 2, N'Prestadores de Serviços: A escolha dos profissionais que atenderão seus convidados é muito importante. Uma festa ou evento exige vários prestadores de serviços como: garçon, recepcionista, segurança, monitores, copeira, atendentes...')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (37, N'Produção de Eventos', 2, N'PRODUÇÃO DE EVENTOS: Contando com profissionais especializados você pode produzir desde uma reunião a um mega evento, contando inclusive com personalidades internacionais. ')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (38, N'Queijos & Vinhos', 2, N'Queijos & Vinhos:  Tanto para receber grupos pequenos, como organizar um grande evento, a sugestão de oferecer queijos e vinhos é sinal de bom gosto e elegância.
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (39, N'15 Anos', 2, N'15 ANOS')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (40, N'Salão de Beleza', 2, N'Salões de Beleza: Profissionais indispensáveis na hora de preparar-se para sua festa. Atenção noivas e debutantes! - Para sua segurança, veja a opção de ter um profissional de beleza, presente durante a festa, para retoques e auxílio na hora das trocas de traje.
 
 
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (41, N'Som/Iluminação/Djs', 2, N'Som/Iluminação/Djs: A escolha correta destes profissionais, tornará o ambiente de sua festa moderno e agradável.
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (42, N'Telegrama/Serenata', 2, N'Telegrama Animado/Serenata: Homenageie de forma diferente e agradável aquela pessoa que você tanto gosta, proporcionando momentos inesquecíveis. Contrate um Telegrama Animado ou uma Serenata de Amor!
 
')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (44, N'Churrasco', 2, N'Churrasco')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (45, N'Bartender ', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (46, N'Floricultura', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (47, N'Garçom', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (48, N'Personalização', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (49, N'Parques', 1, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (50, N'Kit Festa', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (51, N'Lua de Mel', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (52, N'Recepcionistas e Hostess', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (53, N'Biscuit', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (54, N'Topo para Bolos', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (55, N'Caricaturas', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (56, N'Delivery', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (57, N'Panquecas em Domicilio', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (58, N'Teatro na Empresa', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (59, N'Crepe Frances', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (60, N'Promotoras/Divulgadoras', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (61, N'Adereços para Festas', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (62, N'Mobiliário para Eventos', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (63, N'Mágicos', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (64, N'Especial Natal', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (65, N'Mesas Especiais', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (66, N'Café Colonial', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (67, N'Confraternizações', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (68, N'Bodas', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (69, N'Batizados', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (70, N'Noivados', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (71, N'Chá de Bebê', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (72, N'Festa Infantil', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (73, N'Festa Escola', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (74, N'Sanduíches', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (75, N'Bem-Casados', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (76, N'Locação de Mesas/Cadeiras', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (77, N'Carrinhos Alimentação', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (78, N'Rodizio Pizza (Domicilio)', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (79, N'Palhaços', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (80, N'Sopas em Domicilio', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (81, N'Massas em Domicilio', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (82, N'Retrospectiva Digital', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (83, N'Designer de Eventos', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (84, N'Dança para Eventos', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (85, N'Cupcakes', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (86, N'Disk Carne', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (87, N'Visitas Papai Noel', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (88, N'Moda Presente', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (89, N'Moranguinho', 9, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (90, N'Convite Infantil', 8, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (91, N'Kit Jardim', 7, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (92, N'Locação Provençal', 2, N'')
INSERT [dbo].[categoria] ([codigo], [descricao], [tipo_categoria], [texto]) VALUES (93, N'Venda e Locação Provençal', 2, N'')
/****** Object:  Table [dbo].[bonus_retorno]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bonus_retorno](
	[codigo] [int] NULL,
	[codigo_anunciante] [int] NULL,
	[nome] [varchar](100) NULL,
	[telefone] [varchar](30) NULL,
	[email] [varchar](200) NULL,
	[data_impressao] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (295, 122, N' Amanda Eduarda Bocon', N'41 9664-3207', N' Bocon05@hotmail.com', CAST(0x00009F2B00A41EDF AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (298, 76, N'Patricia Telles', N' 3016-5005', N'patitelles@yahoo.com.br', CAST(0x00009F2E00D94C1F AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (304, 204, N' Leandra', N'3342-2144', N'leandrasartorio@terra.com.br', CAST(0x00009F3A00BA94C9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (306, 40, N' Adalberto Schmidt', N' 3233-1331', N' adalberto.s@terra.com.br', CAST(0x00009F3A00F17925 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (316, 80, N'Ana Flora Bouças Ribeiro dos Santos', N'4133209443', N'anafbr@uol.com.br', CAST(0x00009F4701102423 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (315, 80, N'Ana Flora Bouças Ribeiro dos Santos', N'4133209443', N'anafbr@uol.com.br', CAST(0x00009F4701101B0E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (317, 188, N' Liane Della Giustina', N' 88667253', N' liane.della@bol.com.br', CAST(0x00009F4F0141FB84 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (318, 26, N'Michele', N'32667366', N'michele.ctba@hotmail.com', CAST(0x00009F5901336B75 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (319, 76, N' luciana', N'30232537', N' luly@tce.pr.gov.br', CAST(0x00009F5C00EA29DB AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (320, 76, N'luly', N'30232537', N'luly@tce.pr.gov.br', CAST(0x00009F5C00EA5F31 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (321, 143, N'Daiane', N'314 3400', N'daiane.krichak@fiscaltech.com.br', CAST(0x00009F640154EC80 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (322, 202, N' ANA PATRICIA BARBOSA', N' 9602-4749', N'anap.barbosa@hotmail.com', CAST(0x00009F6600ED35E4 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (323, 222, N'ALINE MARTY', N'96848180', N'alinemm7@hotmail.com', CAST(0x00009F6700C156CB AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (324, 222, N'ALINE MARTY', N'96848180', N'alinemm7@hotmail.com', CAST(0x00009F6700C17DE7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (325, 188, N'Natalia Roberti Figueiredo', N'91020202', N'nati_roberti@hotmail.com', CAST(0x00009F7200A400C3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (326, 188, N'Natalia Roberti Figueiredo', N'91020202', N'nati_roberti@hotmail.com', CAST(0x00009F7200A401A4 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (328, 122, N'Mérlin Maria Ribeiro Vidal', N'(41) 9675-8847', N'merlin_tika@hotmail.com', CAST(0x00009F78014B39C2 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (329, 122, N'MÉRLIN MARIA RIBEIRO VIDAL', N'(41) 9675-8847', N'merlin_tika@hotmail.com', CAST(0x00009F78014BBF89 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (330, 122, N'Fabiane Almeida', N'84420377', N'fabifa85@hotmail.com', CAST(0x00009F7B01726821 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (331, 198, N' TATIANE', N' 9602-1080', N't.tatiane@hotmail.com', CAST(0x00009F7C00D08FF4 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (332, 202, N' Isis Weber', N'41 8433-0381', N'isysw@hotmail.com', CAST(0x00009F7E00BB0803 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (334, 42, N'Caroline Fontana', N'78196338', N'calomega@ibest.com.br', CAST(0x00009F8D0146F7C6 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (335, 26, N' cristiane alves voidella', N'3267-8284', N'crisvoidella@gmail.com', CAST(0x00009F8F00F3B819 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (336, 18, N'Josiane Rosa', N'41 36986586', N'josimoderninha@hotmail.com', CAST(0x00009F90013D931C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (337, 295, N'Ana Paula Rolim', N'96235609', N'rolim.anapaula@hotmail.com', CAST(0x00009F900174C748 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (338, 204, N'Ana Carolina M C Nobrega', N'92150504', N'anacarolina.nobrega@bol.com.br', CAST(0x00009F97010F2449 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (341, 122, N'josiane cristina toma', N'41-9675-0362', N'josi_toma@hotmail.com', CAST(0x00009F980114BF30 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (347, 76, N'Alessandra', N'96435853', N'aledbgarcia@hotmail.com', CAST(0x00009FA3012D08F7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (350, 76, N' Patricia M. Amorim Gastaldim', N' 3247 2922', N' pati.amorim1@yahoo.com.br', CAST(0x00009FAA009B0098 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (352, 204, N'carla chami', N'41-91415070', N'carla.d.chami@hsbc.com.br', CAST(0x00009FAC00B433D8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (353, 90, N' Joel Wagner', N'(41) 9992-2992', N' Jopimpa@gmail.com', CAST(0x00009FC101155CD3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (354, 18, N' Karoline Marçal', N' 41-8865-4189', N' karoline_marcal@isogama.com.br', CAST(0x00009FC500E8D6A0 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (355, 76, N' ROSIMARA APOLINÁRIO', N' 41-87627114', N'mapolinario@terra.com.br', CAST(0x00009FD0010D6161 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (356, 40, N' Daniele Kreitler', N' (41) 8833-1843', N' danikreitler@bol.com.br', CAST(0x00009FD30153F188 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (357, 40, N'Fábio Nardelli', N'30261843', N'fabio.nardelli@bol.com.br', CAST(0x00009FD50087DE03 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (358, 40, N'Fábio Nardelli', N'30261843', N'fabio.nardelli@bol.com.br', CAST(0x00009FD5008A4271 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (359, 40, N'Fábio Nardelli', N'30261843', N'fabio.nardelli@bol.com.br', CAST(0x00009FD500960DE7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (360, 40, N'Fabio Nardelli', N'30261843', N'fabio.nardelli@bol.com.br', CAST(0x00009FD500968DC9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (363, 188, N'Bruna Bonat', N'96461912', N'bruna.bonat@hotmail.com', CAST(0x00009FDB0002CA29 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (366, 48, N'Carla Gradela', N'92072224', N'carlagradela@yahoo.com.', CAST(0x00009FDE00F10E28 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (367, 204, N'Andrea C R Bregolato Amendola', N'3029-1402', N'marceloedeia@yahoo.com.br', CAST(0x00009FDF00C9A2E9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (368, 143, N'Cristiane Iung da Silva', N'41-9182.9106', N'iungeduarda@hotmail.com', CAST(0x00009FE200C3C0C7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (369, 203, N'tyut', N'tut', N'tyu', CAST(0x00009FE400B2821B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (370, 26, N'francinete', N'32661054', N'franci14moura@hotmail.com', CAST(0x00009FE400E3324B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (371, 48, N'REBECA VIANNA BRIZOLARA', N'88658595', N'rebeca.nutricao@hotmail.com', CAST(0x00009FE600BF61F1 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (372, 188, N'Patricia Wansaucheki', N'41 3253-6780', N'pmkiki08@gmail.com', CAST(0x00009FEA00C18F7C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (373, 188, N'Patricia Wansaucheki', N'41 3253-6780', N'pmkiki08@gmail.com', CAST(0x00009FEA00C1C24C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (374, 188, N'Patricia Wansaucheki', N'41 3253-6780', N'pmkiki08@gmail.com', CAST(0x00009FEA00C1FBE7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (376, 40, N'Gabriele Popp', N'41 84347777', N'GABIPOPP@ONDA.COM.BR', CAST(0x00009FEA01063BAA AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (377, 357, N'Mariana', N'41 99384941', N'marimara401@hotmail.com', CAST(0x00009FEB0101FB58 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (379, 204, N'Luanda Anubha Iarek Silva', N'91471993', N'luanda_anubha@hotmail.com', CAST(0x00009FED00A90F92 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (380, 204, N'Luanda anubha', N'91471993', N'luanda_anubha@hotmail.com', CAST(0x00009FED00AA1E79 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (381, 40, N'Paulo Costa Ribeiro', N'99999999', N'paulocosta50@hotmail.com', CAST(0x00009FF000E5BF64 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (382, 40, N'Paulo Costa', N'2199117953', N'paulocosta50@hotmail.com', CAST(0x00009FF000E5EA96 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (384, 76, N'Paulo Costa Ribeiro', N'9943-3365', N'paulocosta50@hotmail.com', CAST(0x00009FF000E63C57 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (385, 202, N'Adriane Pacheco Pauperio', N'92462820', N'sofiadri256@hotmail.com', CAST(0x00009FF401237E95 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (386, 202, N'Patricia', N'31531405', N'patriciarcastellano@gmail.com', CAST(0x00009FF5012E7D54 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (387, 76, N'Simoni Garcia', N' 9643-2048', N' garciasimoni@yahoo.com.br', CAST(0x00009FF6011305B3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (390, 18, N' Christian Nascimento Piske', N' 41 3219-1495', N' cnpiske@hotmail.com', CAST(0x00009FF6011EF52E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (391, 18, N'Christian Nascimento Piske', N'41 3219-1495', N'cnpiske@hotmail.com', CAST(0x00009FF6015E28AA AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (393, 18, N'Christian Nascimento Piske', N'41 3219-1495', N'cnpiske@hotmail.com', CAST(0x00009FF6015E4662 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (395, 18, N' Christian Nascimento Piske', N' 41 3219-1495', N' cnpiske@hotmail.com', CAST(0x00009FF8011C2D77 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (397, 40, N'Paula Regina de Castro ', N'33198023', N'Pauladoslus@gmail.com', CAST(0x0000A00200B78E59 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (398, 40, N'Paula Regina de Castro', N'3319 8023', N'Pauladoslus@gmail.com', CAST(0x0000A00200B7CDC2 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (400, 222, N'kaith lesly', N'88419460', N'kaithbetin@hotmail.com', CAST(0x0000A008013CEA07 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (401, 202, N' Fernanda Gonçalves', N'35282128', N'ferdi_goncalves@hotmail.com', CAST(0x0000A00B01621ED4 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (402, 202, N'Fernanda Gonçalves', N'3528-2128', N'ferdi_goncalves@hotmail.com', CAST(0x0000A00B0180AD2C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (403, 202, N'Fernanda', N'35282128', N'ferdi_goncalves@hotmail.com', CAST(0x0000A00C007ED043 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (406, 27, N' fabiana sabino dos santos', N' 3262-9839', N' fabyopcao@pop.com.br', CAST(0x0000A00D0107FA89 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (408, 40, N'Michelle Simas Macedo Gaio', N'41 30227230', N'fiscal@macedoauditores.com.br', CAST(0x0000A00D01287963 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (409, 40, N'Michelle Simas Macedo Gaio', N'41 30227230', N'fiscal@macedoauditores.com.br', CAST(0x0000A00D01287FBE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (410, 40, N'Michelle Gaio', N'30227230', N'mismgaio@gmail.com', CAST(0x0000A00D0128E927 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (411, 48, N'michelle', N'20121212', N'mismgaio', CAST(0x0000A00D0129C218 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (412, 40, N'Michelle Gaio', N'4130227230', N'mismgaio@gmail.com', CAST(0x0000A00D012AE747 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (413, 40, N'ERICSON GAIO', N'30227230', N'egaio@terra.com.br', CAST(0x0000A00D012BA8AC AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (414, 40, N'ERICSON GAIO', N'30227230', N'egaio@terra.com.br', CAST(0x0000A00D012BAEEF AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (415, 76, N'ericson', N'3022', N'egaio', CAST(0x0000A00D012BD936 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (416, 42, N'Cleonice Wansaucheki', N'41 3236-1816', N'cleo.w@brturbo.com.br', CAST(0x0000A00F010340F9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (419, 202, N'bertila', N'84088225', N'bertilabassani@bol.com.br', CAST(0x0000A01201780E10 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (420, 357, N' Amanda Alves Pereira', N' 413673-6107', N' amandapereira2789@hotmail.com', CAST(0x0000A01300E43407 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (421, 48, N'Ligia Mara Silvestre Maia', N'9802-7576', N'ligiamaramaia@uol.com.br', CAST(0x0000A01601169998 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (422, 357, N'leandro', N'30392596', N'leandro.g.motta', CAST(0x0000A016012D07BA AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (424, 38, N'alice midori endo hamerschmidt', N'33522591  88455523', N'midorihamer@hotmail.com', CAST(0x0000A01B00C50E4B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (430, 122, N' Samanta dos Santos', N'30372046', N'contabilidade@abrascort.com.br', CAST(0x0000A02E009855BB AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (431, 122, N' Samanta dos Santos', N'30372046', N'contabilidade@abrascort.com.br', CAST(0x0000A02E0098649E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (432, 122, N' Samanta dos Santos', N' 30372046', N'contabilidade@abrascort.com.br', CAST(0x0000A02E009871E9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (433, 122, N'Samanta dos Santos', N'30372046', N'contabilidade@abrascort.com.br', CAST(0x0000A02E0098FBFD AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (434, 42, N'Samanta dos Santos', N'30372046', N'contabilidade@abrascort.com.br', CAST(0x0000A02E009F1544 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (435, 76, N'  Adriane', N' 9621-5510', N'adrilean@hotmail.com', CAST(0x0000A030011D8583 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (436, 40, N'Adriane', N'9621-5510', N'adrilean@hotmail.com', CAST(0x0000A030011ECAAE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (437, 40, N'Willian', N'88486450', N'willthedesign@gmail.com', CAST(0x0000A03300EE1565 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (440, 76, N' Ana Carolina Genuino de Oliveira', N' 3030-0357', N' acgenuino@onda.com.br', CAST(0x0000A03600FD1201 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (441, 42, N'DANIELLE', N'4199320304', N'DANISERRAVERDE@ONDA.COM.BR', CAST(0x0000A03C00CE7B45 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (447, 122, N'Merilin da Cruz', N'8448-3159', N'merilin.cruz@hotmail.com.br', CAST(0x0000A05100B3087D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (52, 18, N' MICHELLE APARECIDA RIBEIRO', N'9821-3884', N' michelleapribeiro@hotmail.com', CAST(0x00009D2000D4555A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (53, 143, N'luciane', N'04191222577', N'luthi_2709@hotmail.com', CAST(0x00009D2600E1D494 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (54, 76, N'Lismari Gorret Strapasson', N'3434.3739', N'lismarigs@sanepar.com.br', CAST(0x00009D2900E43369 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (55, 40, N'Lismari', N'3434-3739', N'lismarigs@sanepar.com.br', CAST(0x00009D2900E64687 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (56, 34, N'Daniele Melo de Oliveira', N'3271 7546', N'daniele.oliveira@pr.senai.br', CAST(0x00009D2901186698 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (57, 122, N' Anna Paula dos santos ', N'91257679', N'annapaula_santos@ig.com.br', CAST(0x00009D2C00B8ABA3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (58, 18, N' Anna Paula dos santos ', N'91257679', N'annapaula_santos@ig.com.br', CAST(0x00009D2C00B980D1 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (59, 5, N'Welington C. Jaeger', N'9113-4622', N'welington.jaeger@gmail.com', CAST(0x00009D2C00FBF3A8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (60, 24, N' Rosemary da Rosa Martins', N' (41) 3348-7939 (41) 91766370', N' viabrasilcwa@ig.com.br', CAST(0x00009D3100F3633B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (61, 188, N'Juliana Henz', N'9661-8118', N'juhenz@hotmail.com', CAST(0x00009D3501773491 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (62, 195, N'Daniele Cleto', N'8480-4122', N'daniele_cleto@hotmail.com', CAST(0x00009D3B01154EF1 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (63, 12, N'Neide do Rocio Guerra', N'36983271', N'neiderguerra@yahoo.com.br', CAST(0x00009D3C01726D86 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (64, 12, N'Neide do Rocio Guerra', N'36983271', N'neiderguerra@yahoo.com.br', CAST(0x00009D3C0172953D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (65, 12, N'Neide do Rocio Guerra', N'36983271', N'neiderguerra@yahoo.com.br', CAST(0x00009D3C0172AA55 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (66, 12, N'Neide do Rocio Guerra', N'36983271', N'neiderguerra@yahoo.com.br', CAST(0x00009D3C0172CC02 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (67, 12, N'Neide do Rocio Guerra', N'36983271', N'neiderguerra@yahoo.com.br', CAST(0x00009D3C0172D65A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (68, 143, N'Thaís CajalMartins', N'41.96261675', N'thaisccajal@yahoo.com.br', CAST(0x00009D3E01141440 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (69, 26, N'ANA PAULA R. BAPTISTA', N'(41)3320-3406/8433-4967', N'abaptista@urbs.curitiba.pr.gov.br', CAST(0x00009D4100BD353E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (70, 26, N' ANA PAULA R. BAPTISTA', N' (41)3320-3406/8433-4967', N' abaptista@urbs.curitiba.pr.gov.br', CAST(0x00009D4100BD4FE7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (71, 40, N'Milena Schunemann', N'96329220', N'minmiranda@gmail.com', CAST(0x00009D4400F87A71 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (72, 5, N'MILENA MIRANDA', N'96329220', N'minmiranda@gmail.com', CAST(0x00009D4800FD6B87 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (73, 172, N'FABIANE VIEIRA', N'32059937', N'FABIANEVIEIRA@YAHOO.COM.BR', CAST(0x00009D4900B532B2 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (74, 40, N' danielli A. M. Assis Pontes da Silva', N'41-3071-0903 / 9653-1696', N'danimaps@gmail.com', CAST(0x00009D4B002E4C00 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (75, 40, N' Danielli A. M. Assis Pontes da Silva', N'41-3071-0903 / 9653-1696', N'danimaps@gmail.com', CAST(0x00009D4B002E5A7C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (76, 42, N'gislainelimaportes', N'96047992', N'gislainelimaportes@yahoo.com', CAST(0x00009D4F00D557E6 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (77, 42, N'bruna', N'92317170', N'bruna_kvilio@hotmail.com', CAST(0x00009D5800AB7E41 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (78, 5, N' Michele Amaral', N'9976-4848', N' mi.amaral@hotmail.com', CAST(0x00009D5E00D205DD AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (79, 136, N'Laureane Cristina Chista de Castro', N'3604-3164', N'laurechista@hotmail.com', CAST(0x00009D6000EFFFE3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (80, 136, N' Graziele', N' 41 3337 - 1000', N' graziele@visionnaire.com.br', CAST(0x00009D6600D3419E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (81, 31, N' silvana schaedler', N'9912-4215', N' silvana@fostercontabilidade.com.br', CAST(0x00009D6B011ECC09 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (82, 42, N'marcela shimoda', N'41130409', N'marcelamarcio2525@hotmail.com', CAST(0x00009D6C00A2EF02 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (83, 136, N'ELIS REGINA RIBEIRO DE OLIVEIRA', N'9114-7015', N'elisrribeiro@terra.com.br', CAST(0x00009D6C00D83C4D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (84, 76, N'Thais Rastelli', N'8889-0919', N'thaisrastelli@hotmail.com', CAST(0x00009D6F01164394 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (85, 40, N'Thais Rastelli', N'8889-0919', N'thaisrastelli@hotmail.com', CAST(0x00009D6F0117E199 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (86, 5, N'Thais Rastelli', N'3262-6251', N'thaisratelli@hotmail.com', CAST(0x00009D72010B72D7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (87, 5, N'Thais Rastelli', N'3262-6251', N'thaisratelli@hotmail.com', CAST(0x00009D72010B78D4 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (88, 143, N'Elaine Cristine Vieira', N'84838606', N'elainecristinevieira4@gmail.com', CAST(0x00009D7500A95EBD AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (89, 127, N' Wanessa pereira', N'41-9661-2327/9661-5987', N' nessap04@hotmail.com', CAST(0x00009D8000DBA38F AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (90, 40, N'Elisabeth Mau', N'3777 8113  9666 1900', N'elisabeth.mau@hsbc.com.br', CAST(0x00009D8E010C30DE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (91, 122, N'MARCIA LIMA', N'92360938', N'marcynhalima@ig.com.br', CAST(0x00009D98012787C0 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (1, 33, N' Adriana Aldrin', N' 3203-5431', N' adrianaaldrin@onda.com.br', CAST(0x00009C3A00F79281 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (2, 33, N'dfgdfg', N'dfgdfg', N'dfgdfg', CAST(0x00009C3A0141E53B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (3, 17, N'Adriana', N'32035431', N'adriana@onda.com.br', CAST(0x00009C3B00A82E4F AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (4, 42, N'Andreza Gonþalves da Silva', N'41 3081-5321 ou 8504-0385', N'andrezagoncalvesdasilva@gmail.com', CAST(0x00009C4000CA9998 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (5, 42, N'adriana', N'32035431', N'adriana@onda.com.br', CAST(0x00009C40010E2053 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (6, 33, N'denise pontarolli', N'84126973', N'denisinhaa@bol.com.br', CAST(0x00009C460026400F AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (7, 172, N'Rafaela Senff Ribeiro', N'32292903', N'rafaela.senff@yahoo.com.br', CAST(0x00009C4D011C1F24 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (8, 17, N' Izabel dos Anjos', N' 3013-0737', N' Beldosanjos@hotmail.com', CAST(0x00009C6200CF0BF0 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (9, 195, N'EVELINE', N'41 9616-1878', N'evelinetokarski@hotmail.com', CAST(0x00009C7700EBC2B8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (10, 195, N' Gisele Regattieri', N' 41 - 32291379', N' bittargisele@yahoo.com.br', CAST(0x00009C7900EE1E96 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (11, 172, N' Michelly Hunzicker', N' 3524-8840', N' oyace@bol.com.br', CAST(0x00009C7E00DAB221 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (12, 12, N'sandra  schmidlin', N'32421621', N'sandraskora@hotmail.com', CAST(0x00009C8701240280 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (13, 76, N'mara', N'41 33626602', N'mara@endotec.com.br', CAST(0x00009C9201306512 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (14, 26, N' Andressa', N' 32666222', N' dandressa@yahoo.com.br', CAST(0x00009C9A00B4F773 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (15, 18, N' Elizabeth S. Moura ', N'36019921', N'elizabeth.snitynski@hotmail.com', CAST(0x00009CA401198D38 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (16, 18, N' Elizabeth S. Moura ', N'36019921', N'elizabeth.snitynski@hotmail.com', CAST(0x00009CA4011A1105 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (17, 42, N'helen', N'32031157', N'helen@mhb.eng.br', CAST(0x00009CA801282FE0 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (18, 20, N'antonio marcos', N' 9178-7660', N'flairman_bartender@hotmail.com', CAST(0x00009CA9016CA8F1 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (19, 13, N'Karen Humenhuk', N'3434-5880', N'karen_humenhuk@hotmail.com', CAST(0x00009CC3012B3C99 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (20, 136, N' Loraine Bender Lavalle', N'41-91121579', N'lorainebl@sanepar.com.br', CAST(0x00009CC600F94E18 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (21, 136, N'Loraine Bender Lavalle', N'41-91121579', N'lorainebl@sanepar.com.br', CAST(0x00009CC600FB7DDF AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (22, 18, N' Valdirene Costa G. Brasil', N' 9935-8347', N' vbrasil77@hotmail.com', CAST(0x00009CCA01066AF6 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (23, 127, N' Marli Vieira da Silveira', N' 3200-1152', N'mar_v@hotmail.com', CAST(0x00009CCC00D27FB7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (24, 76, N' reinaldo ivo de almeida', N'99415042', N'reinaldoalmeida@trt9.jus.br', CAST(0x00009CD100EDB290 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (25, 172, N' Sandra Fedalto Nunes', N' 8805-8328', N' sandrafedalto@hotmail.com', CAST(0x00009CD500FB4B24 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (26, 136, N'NIVIA SILVANA DA ROSA RODRIGUES', N'9105-3573/3352-3212', N'niviasilro@ig.com.br', CAST(0x00009CD8009F043C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (27, 4, N'marcia rodrigues', N'30291635 ou 99670768', N'marcinhafrn@hotmail.com', CAST(0x00009CDA00C0FE71 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (28, 4, N'Julia Alves Ferreira Shella', N'41-88065310', N'julia.shella@sjp.pr.gov.br', CAST(0x00009CDB008613B9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (29, 4, N' JULIA ALVES FERREIRA SHELLA', N'88065310', N'julia.shella@sjp.pr.gov.br', CAST(0x00009CDC007B70F6 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (30, 40, N'Julia Alves Ferreira Shella', N'88065310', N'julia.shella@sjp.pr.gov.br', CAST(0x00009CDC007DC52B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (31, 76, N' Carmen Rebelatto', N'84075464', N'carmenkr@hotmail.com', CAST(0x00009CDE0107CF39 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (32, 76, N' Denise Bayer', N'3082-0551', N'dcasa@herrbaier.com.br', CAST(0x00009CE300E22BAC AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (33, 76, N' Denise Bayer da Silva', N' 3082-0551', N'dcasa@herrbaier.com.br', CAST(0x00009CE500B74394 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (34, 215, N'suzana portela', N'4188606816', N'suzana.portela@hotmail.com', CAST(0x00009CED000265DE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (35, 18, N' Cristiane Ramos Cardoso', N' 41 32020214', N'cristianeramoscardoso@hotmail.com', CAST(0x00009CF600E24F98 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (36, 188, N'Adriane Cardoso', N'92290128', N'adricardosod@gmail.com', CAST(0x00009CF7013F73DE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (37, 42, N'Patricia Teixeira', N'36696911', N'paty_arantes1977@hotmail.com', CAST(0x00009CF900F344C1 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (38, 42, N'Patricia Teixeira', N'36696911', N'paty_arantes1977@hotmail.com', CAST(0x00009CF900F38E74 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (39, 76, N'Jhosy Gomes Lopes', N'4199816387', N'jhgomes@hotmail.com', CAST(0x00009D0000A1EB4A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (40, 5, N'Telma R. L. Preiss dos Santos', N'3568-2160', N'telma@gsadvogados.adv.br', CAST(0x00009D0001809F19 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (41, 5, N'Telma R. L. Preiss dos Santos', N'3568-2160', N'telma@gsadvogados.adv.br', CAST(0x00009D000180F15E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (42, 127, N'HEINE ENOMOTO', N'33282843', N'neneca.ne@hotmail.com', CAST(0x00009D02011F072D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (43, 4, N'Karla Caron', N'30244206', N'karlafroes@uol.com.br', CAST(0x00009D0400ED5FAC AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (44, 42, N'Fernanda Kustner', N'(41)36535513', N'fernandakustner@hotmail.co', CAST(0x00009D0700DB2BC8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (45, 4, N' Angelise Farias Gazaniga Zanetti', N' (41) 9917-0662', N' angelise@pegaza.com.br', CAST(0x00009D0900FAB312 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (46, 5, N' Adriana Ciarlo', N' 41 3527-0367 9996-8018', N'adrianaciarlo@gmail.com', CAST(0x00009D0C01825AE0 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (47, 76, N' Luciana Naumann Melara', N' 9912-4538', N' lunaumann@uol.com.br', CAST(0x00009D0D00FB3E8F AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (48, 76, N' Carla Darela Lovato ', N' 9698.4605', N' cdarela@hotmail.com', CAST(0x00009D1900CAF88B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (49, 42, N'Gislaine Alves Ferreira', N'41 3347-6721', N'gis_bodycenter@hotmail.com', CAST(0x00009D2000A3944D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (50, 127, N'Gislaine Alves Ferreira', N'41 3347-6721', N'gis_bodycenter@hotmail.com', CAST(0x00009D2000AAF408 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (51, 195, N'Gislaine Alves Ferreira', N'41 3347-6721', N'gis_bodycenter@hotmail.com', CAST(0x00009D2000AE35BD AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (294, 42, N'Tatiane', N'99278167', N'tatianemachado_letras@hotmail.com', CAST(0x00009F200089BEF6 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (292, 42, N'marco', N'33488502', N'marco.e.jose@hotmail.com', CAST(0x00009F1E016EDA45 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (288, 204, N'Mariane Werneck Botelho', N'88627289', N'mwbotelho@yahoo.com.br', CAST(0x00009F190119CF1B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (289, 204, N'Mariane Werneck Botelho', N'88627289', N'mwbotelho@yahoo.com.br', CAST(0x00009F19011A06B2 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (283, 76, N' Marilu Cichon de Liz', N' 8808 1411', N' malucichon@hotmail.com', CAST(0x00009F16013EF013 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (284, 40, N' Eliana Harumi Isikawa ', N'(41) 9206-1968', N'elianaisikawa@hotmail.com', CAST(0x00009F1700CB823E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (285, 222, N'ANA CARLA', N'35682481', N'anacarla_alioti@hotmail.com', CAST(0x00009F1701094A01 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (286, 42, N'janaina kelly de amaral da silva', N'8469-6296', N'jana.gata.15@hotmail.com', CAST(0x00009F17015A2E70 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (287, 76, N'Roberta Lagos', N'33455906', N'robertalagos@gmail.com', CAST(0x00009F1800EDCFC8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (290, 26, N'Kelly Vitorino', N'8809-3343', N'kellyvitorinomartins@hotmail.com', CAST(0x00009F1D00E91538 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (291, 26, N' Kelly Vitorino', N'88093343', N'kellyvitorinomartins@hotmail.com', CAST(0x00009F1D00E9597A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (293, 42, N'tatiane machado', N'99278167', N'tatianemachado_letras@hotmail.com', CAST(0x00009F200089997B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (296, 122, N' Amanda Eduarda Bocon', N'41 9664-3207', N' Bocon05@hotmail.com', CAST(0x00009F2B00A42CB2 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (297, 143, N'fg', N'ghfgh', N'gfg', CAST(0x00009F2C0110988B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (300, 122, N' Daiane A. Able do Nascimento', N' (41) 9981-3882', N' daiane@mojave.com.br', CAST(0x00009F3500B784D3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (301, 76, N'giselly', N'88061377', N'giselly@gmail.com', CAST(0x00009F35010C630B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (302, 76, N'Enevaldo Junior', N'92026723', N'enevaldo_jr@hotmail.com', CAST(0x00009F3600958137 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (303, 26, N'Luciana Nakatani', N'88259611', N'cianaandrade@yahoo.com.br', CAST(0x00009F3601245EC1 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (305, 40, N' ADALBERTO SCHMIDT', N' 3233-1331', N' adalberto.s@terra.com.br', CAST(0x00009F3A00F10827 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (307, 48, N'JULIO', N'84422611', N'julioelesiane@gmail.com', CAST(0x00009F3B00F9792D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (308, 203, N' Dayane Ignacio Ribeiro Ferreira', N' 92092005', N' dhayhane@hotmail.com', CAST(0x00009F3D011E547C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (309, 76, N'suellen dos santos pombal', N'9671-7189', N'su_pombal@hotmail.com', CAST(0x00009F3D015D89BC AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (310, 122, N'daynna amaral', N'19-33882703', N'daynna_amaral@hotmail.com', CAST(0x00009F3E0102A7D5 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (311, 357, N'ALESSANDRA NALINI MAGANHOTTO', N'41-33502680 ou 9987-0552', N'amaganhotto@hotmail.com', CAST(0x00009F4000A9CED9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (312, 357, N'ALESSANDRA NALINI MAGANHOTTO', N'41-33502680 ou 9987-0552', N'amaganhotto@hotmail.com', CAST(0x00009F4000A9D499 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (313, 357, N'ALESSANDRA MAGANHOTTO', N'41-33502680 ou 9987-0552', N'amaganhotto@hotmail.com', CAST(0x00009F4000A9E1BE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (314, 80, N'Dayana oliveira mendes', N'33643503', N'odayana19@hotmail.com', CAST(0x00009F4100FDD415 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (327, 122, N'regiana bueno ferreira', N'30374725', N'lellisautomoveis@gmail.com', CAST(0x00009F7201622A32 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (333, 18, N'Kathleen', N'98736590', N'kat_pedagogia@hotmail.com', CAST(0x00009F870138FC69 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (343, 222, N'tatiane', N'4196302472', N'tatiane.rodrigues90@yahoo.com.br', CAST(0x00009F9E0123BCF6 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (348, 42, N'VANESSA', N'96571140', N'VANESSAQS2009@HOTMAIL.COM', CAST(0x00009FA7011AF248 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (364, 48, N' Eloisa Ramos Pinotti Martinho', N' 3079-1518/ 8841-3454', N' elo.martinho@terra.com.br', CAST(0x00009FDB00AB642A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (383, 76, N'Paulo', N'21991179532199117953', N'paulocosta50@hotmail.com', CAST(0x00009FF000E60FBC AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (388, 18, N' Christian Nascimento Piske', N' 41 3219-1495', N' cnpiske@hotmail.com', CAST(0x00009FF6011EB322 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (389, 18, N' Christian Nascimento Piske', N' 41 3219-1495', N' cnpiske@hotmail.com', CAST(0x00009FF6011EBF09 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (399, 40, N'Paula', N'33198023', N'Pauladoslus@gmail.com', CAST(0x0000A00200B829A8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (405, 27, N' FABIANA SABINO DOS SANTOS', N'(41)9677-9381', N'fabyopcao@pop.com.br', CAST(0x0000A00D01079205 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (423, 357, N'leandro', N'30392596', N'leandro.g.motta@hotmail.com', CAST(0x0000A016012D3268 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (425, 202, N'CAROLINA FOLTRAN', N'41-92068810', N'CAROLINA.FOLTRAN@IG.COM.BR', CAST(0x0000A0200133B5A5 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (427, 80, N'DANIELLE', N'99320304', N'DANISERRAVERDE@ONDA.COM.BR', CAST(0x0000A02200F932B7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (444, 18, N'Luanna Endler', N'7820-2981', N'luanna.endler@hotmail.com', CAST(0x0000A04600F0DE55 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (446, 143, N'danielle', N'30555560', N'daniserraverde@onda,com.br ', CAST(0x0000A04A00C02CCE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (448, 122, N'Merilin da Cruz', N'8448-3159', N'merilin.cruz@hotmail.com.br', CAST(0x0000A05100B349C9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (449, 122, N'Merilin da Cruz', N'8448-3159', N'merilin.cruz@hotmail.com.br', CAST(0x0000A05100B5D640 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (450, 122, N'Merilin da Cruz', N'8448-3159', N'merilin.cruz@hotmail.com.br', CAST(0x0000A05100B76878 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (451, 327, N'Fernanda de A. O de Oliveira Batista', N'9603-7337 ou 3346-1366', N' oliv.fernanda@gmail.com', CAST(0x0000A052010316FB AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (453, 48, N' Luciana Nara Trintim', N' 41 96561420', N' luciana_trintim@hotmail.com', CAST(0x0000A05900C177EC AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (454, 42, N'DANIELE A M F AMARAL', N'4196437618', N'amaral.dani@gmail.com', CAST(0x0000A05A01188F3A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (456, 259, N'angelita', N'32964081', N'angelitacachel@hotmail.com', CAST(0x0000A05D00DFA374 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (458, 42, N'Alessandra', N'41 9717-4899', N'alemeneghin@hotmail.com', CAST(0x0000A06200EACE57 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (459, 40, N'Roseli Martire', N' 9942-9161', N'roselimartire@terra.com.br', CAST(0x0000A069012C41E8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (460, 222, N'priscila', N'33831733', N'prizinha_suzi@hotmail.com', CAST(0x0000A06D00F41CEE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (463, 408, N'Graciela Lazarotto', N'41-36566092', N'anslazarotto@globo.com', CAST(0x0000A07B011AF740 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (465, 222, N'suellen rodrigues', N'88097585', N'su2006_@hotmail.com', CAST(0x0000A082011ECEA1 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (466, 40, N'TIAGO RODRIGO BUENO', N'41-98526231', N'prof.tiagobueno@gmail.com', CAST(0x0000A08600D8BA7D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (468, 122, N'SILVANA DAS GRAÇAS PEPE', N'36635036', N'silvanasmile@bol.com.br', CAST(0x0000A0900159E495 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (470, 40, N'Rita de Cássia M. Nascimento', N' 3250-4320 / 9633-8924', N' ritacmarin@hotmail.com', CAST(0x0000A09A011F2CC8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (471, 40, N'Rita de Cássia M. Nascimento', N'3250-4320 / 9633-8924', N'ritacmarin@hotmail.com', CAST(0x0000A09A011FA9D7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (299, 318, N'Carina', N'99415694', N'eucarina@hotmail.com', CAST(0x00009F2E01705F39 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (344, 48, N'Adriane G G Souza', N'4130779392', N'adrianeggs@gmail.com', CAST(0x00009F9E014FEA16 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (345, 203, N'Kellyne Mormelo', N'3018 1352 99206954', N'kellynesan@yahoo.com.br', CAST(0x00009FA1011E63AA AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (426, 80, N'DANIELLE', N'99320304', N'DANISERRAVERDE@ONDA.COM.BR', CAST(0x0000A02200F92A33 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (445, 18, N'Luanna Endler', N'7820-2981', N'luanna.endler@hotmail.com', CAST(0x0000A04600F4783B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (455, 42, N'daniele a m f do amaral', N'4196437618', N'amaral.dani@gmail.com', CAST(0x0000A05A0118B6CB AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (461, 408, N'  Graciela Lazarotto', N'  3656-6092', N' anslazarotto@globo.com', CAST(0x0000A07B0118B064 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (462, 408, N' Graciela Lazarotto', N'41-36566092', N'anslazarotto@globo.com', CAST(0x0000A07B01190551 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (464, 40, N'Fernanda V Diemeier', N'(41) 3699-1525', N'fernanda@mundialfire.com.br', CAST(0x0000A07E00F4BA77 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (467, 357, N'juliana colares', N'96747569', N'colaresbm@gmail.com', CAST(0x0000A08B00F5ECE0 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (131, 119, N'MARCUS VINICIUS DE BRITO FLÔRES', N'(41) 8432-8953', N'maviflo@pop.com.br', CAST(0x00009E2900940F95 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (137, 16, N'  Denilson', N' nao lembro', N' d.a.veronese@ig.com.br', CAST(0x00009E36016CE13C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (139, 64, N'asdsds', N'asas', N'dsadas', CAST(0x00009E36016CFE3D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (142, 18, N'jyuy', N'yuyuy', N'yuyuy', CAST(0x00009E3601803E7A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (143, 48, N'Daniele Saito', N'33083210', N'danielemayla@gmail.com', CAST(0x00009E3800A550EC AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (144, 48, N'GISELE DOS SANTOS', N'41 3245-6646', N'gisasantos30@yahoo.com.br', CAST(0x00009E3A010D8232 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (145, 246, N'Clauzeni', N'4196979985', N'clauanna@gmail.com', CAST(0x00009E3E017B1281 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (146, 320, N'Luana Andressa Schmidt', N'41-8858-5677', N'cardosos.schmidt@gmail.com', CAST(0x00009E4500DAFF83 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (147, 320, N'Luana Andressa Schmidt', N'41-8858-5677', N'cardoso.schmidt@gmail.com', CAST(0x00009E4500DB191C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (148, 203, N'Rafaella Alves ', N'4188308751', N'rafaella.mariana@hotmail.com', CAST(0x00009E4500EEFE2D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (149, 143, N'Ananda suellen prestes', N'41- 9900-2250', N' ananda_suellem@hotmail.com', CAST(0x00009E4501205C03 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (150, 42, N'Ananda Suellen Prestes', N'(41) 9900-2250', N'ananda_suellem@hotmail.com', CAST(0x00009E450120B1B9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (151, 222, N'Jessica Mileski', N'41 36681647 / 41 96007668', N'jessicacarneiromileski@gmail.com', CAST(0x00009E4C0160D0E5 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (152, 26, N'Jessica Mileski', N'4136681647 / 41 96007668', N'jessicacarneiromileski@gmail.com', CAST(0x00009E4C0162184D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (153, 39, N' Roberto Schwarzbach', N' 32238815', N' robizaz@bol.com.b', CAST(0x00009E4D008B8E0E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (154, 39, N' Roberto Schwarzbach', N' 32238815', N' robizaz@bol.com.br', CAST(0x00009E4D008D1927 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (155, 202, N' Priscila Baqueta', N'41 99239696', N'pripoderoso@gmail.com', CAST(0x00009E4D011EC946 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (160, 42, N'Mayara Chamseddine', N'8858 4393', N'mayara_chamseddine88@yahoo.com.br', CAST(0x00009E5400DE5C67 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (156, 42, N'Mayara Chamseddine', N'41 8858 4393', N'mayara_chamseddine88@yahoo.com.br', CAST(0x00009E5400DCD3D5 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (157, 42, N'Mayara Chamseddine', N'41 8858 4393', N'mayara_chamseddine88@yahoo.com.br', CAST(0x00009E5400DCF9A0 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (92, 222, N'Teste', N'teste', N'teste', CAST(0x00009DCF00BDBE4D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (93, 204, N'bdhfvs', N'udrhgfvehiu', N'hugdeufvhge', CAST(0x00009DD100A7CFA8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (94, 222, N'teste', N'teste', N'teste', CAST(0x00009DD100E4DA48 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (95, 203, N'Graziella', N'-', N'graziellagusso@pop.com.br', CAST(0x00009DDD009D8D1D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (96, 204, N' LUISA NASTARI', N'99813568', N'luisanastari@uol.com.br', CAST(0x00009DE1013E8E99 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (97, 203, N' Samara Nepomuceno', N'3021-6600', N'financeiro@procyon.com.br', CAST(0x00009DE200C46492 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (98, 80, N' Elisangela Stec', N' 3077-2259', N' elisangelastec@pop.com.br', CAST(0x00009DED010FF68D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (99, 48, N'kathia gomes', N'41- 8478-6752', N'kathiajk@hotmail.com', CAST(0x00009DF100A0CAB1 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (100, 204, N' Roberta Pedroza', N'   41 - 88878007', N' robertapedroza@hotmail.com', CAST(0x00009DF1011FB272 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (101, 212, N'deise cristina', N'84788688', N'deise.cristina@hotmail.com', CAST(0x00009DF20157FC63 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (102, 136, N'Karla de Almeida Luiz', N'78157237', N'kazeenha@gmail.com', CAST(0x00009DF300BCD313 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (103, 42, N'Maristela Pimentel', N'8876-8542', N'maristela.pimentel@gmail.com', CAST(0x00009DF400A1DC7F AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (104, 48, N'Kana Matsunaga', N'99315201', N'kana-m@mbj.nifty.com', CAST(0x00009DF900147E01 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (105, 42, N'ROGERSON J OLIVEIRA', N'41 3357-0888', N'rcontabil@pop.com.br', CAST(0x00009DF900E41E83 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (106, 42, N'rogerson oliveira', N'41  3357-0888', N'rcontabil@pop.com.br', CAST(0x00009DF900E498C9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (107, 42, N'rogerson oliveira', N'41  3357-0888', N'rcontabil@pop.com.br', CAST(0x00009DF900E4B766 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (108, 305, N'Ella', N'41  30795997', N'elladittert@onda.com.br', CAST(0x00009DFA00D45679 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (109, 305, N'Ella', N'3079-5997', N'elladittert@onda.com.br', CAST(0x00009DFA00D4B885 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (110, 179, N'sergio', N'30239802', N's_fd@hotmail.com', CAST(0x00009DFA00D55EC7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (111, 305, N'ella', N'3079-5997', N'elladittert@onda.com.br', CAST(0x00009DFB01247DF3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (112, 136, N' andre luis haji antoniou', N'(41 ) 33597282', N'andhaji@embratel.com.br', CAST(0x00009E0001059961 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (113, 48, N'Juliana', N'(41) 88055019', N'juliana_pessoa@yahoo.com.br', CAST(0x00009E0100F20C69 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (114, 48, N'Juliana', N'(41) 88055019', N'juliana_pessoa@yahoo.com.br', CAST(0x00009E0100F24100 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (115, 42, N'Marilyn', N'30685659', N'dp@grupovisaorh.com.br', CAST(0x00009E08009F08E8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (116, 42, N'   Ilza Rosa da Paz', N'   41-32223366 /99833309', N'   ropzadvocacia@bol.com.br', CAST(0x00009E0E00CAA382 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (117, 42, N' Ilza Rosa', N' 41 -32223366 /99833309', N' Ropzadvocacia@bol.com.br', CAST(0x00009E0E00CB2680 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (118, 156, N'marilia back', N'98385040/36064230/96581402', N'mariliavazback@hotmail.com', CAST(0x00009E0F00FCE0E6 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (119, 80, N'Carolina Dratch', N'84182810', N'carolina.dratch@grupocoan.com.br ', CAST(0x00009E0F015DA6F4 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (120, 42, N'Soraya Barrionuevo Franzener', N'9637-7766', N'franzener34@hotmail.com', CAST(0x00009E1A00A98B1C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (121, 42, N'Soraya Barrionuevo Franzener', N'9637-7766', N'franzener34@hotmail.com', CAST(0x00009E1A00A9AFA4 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (122, 222, N'Priscila', N'99129883', N'priscilawolff@yahoo.com.br', CAST(0x00009E1D00C183F5 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (123, 42, N'Laura Pontes', N'96687363', N'laurapontesphb@hotmail.com', CAST(0x00009E21015900F3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (124, 188, N' Elaine Pedrola ', N' 41 32792691', N'epedrola2010@hotmail.com', CAST(0x00009E2500EF0959 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (125, 222, N'melissa', N'9991-9125', N'melissateigao@hotmail.com', CAST(0x00009E250116B9EC AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (126, 18, N'melissa', N'9991-9125', N'melissateigao@hotmail.com', CAST(0x00009E250117C639 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (127, 48, N'MARCUS VINCIUS DE BRITO FLORES', N'(41) 8432-8953', N'maviflo@pop.com.br', CAST(0x00009E280081A41B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (128, 76, N'IVANICE MILANI', N'35241562', N'ivanicemilani@yahoo.com.br', CAST(0x00009E2800A9C60F AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (129, 76, N'IVANICE MILANI', N'35241562', N'ivanicemilani@yahoo.com.br', CAST(0x00009E2800A9DB93 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (130, 26, N'Leandro Pogere', N'2112-3224', N'leandro.pogere@gmail.com', CAST(0x00009E28012E555C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (132, 119, N'MARCUS VINICIUS DE BRITO FLÔRES', N'(41) 8432-8953', N'maviflo@pop.com.br', CAST(0x00009E290094197D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (133, 119, N'MARCUS VINICIUS DE BRITO FLORES', N'(41) 8432-8953', N'maviflo@pop.com.br', CAST(0x00009E2B0097867D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (134, 202, N'Marlise Ferreira', N'3044 0701', N'marlise@ferreirafilho.com', CAST(0x00009E2E0122ECDF AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (135, 202, N'Marlise Ferreira', N'30440701', N'marlise@ferreirafilho.com', CAST(0x00009E2E012320A3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (136, 204, N' Grasiele Pereira de Matos', N' 3356-3750', N' su_lustosa29@hotmail.com', CAST(0x00009E3300EA67AB AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (138, 16, N'  Denilson', N' nao lembro', N' d.a.veronese@ig.com.br', CAST(0x00009E36016CEB29 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (140, 18, N'rereer', N'erererer', N'rererer', CAST(0x00009E36016D9C21 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (141, 143, N'gfdgfdg', N'dfgdfgd', N'fgdfgdf', CAST(0x00009E36016DDD8D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (170, 312, N'Priscila G. da Silva Galieta', N'3256 0809', N'priscilagalieta@hotmail.com', CAST(0x00009E64008B3D06 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (196, 76, N'tulio', N'41 88357223', N'tulio.mkt@gmail.com', CAST(0x00009E8601282BE6 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (209, 204, N'Vanessa Mouchbahani', N'8414-8555', N'mouchba@bol.com.br', CAST(0x00009E9901623315 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (226, 202, N'Giovana Samara', N'41 36185139', N'giovana_samara@yahoo.com.br', CAST(0x00009EB300CD734D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (234, 202, N'caroline', N'4199952107', N'caro_ribeiro@hotmail.com', CAST(0x00009ECA01374281 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (240, 18, N'LORENA MONROY', N'84315949', N'FINANCEIRO2@BIOMETRIX.COM.BR', CAST(0x00009EDA00D492C7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (246, 204, N'penelope della bianca', N'30282022', N'penelopedellabianca@hotmail.com', CAST(0x00009EE100AEBC30 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (255, 20, N'Silmara', N'85031042', N'sil-p@hotmail.com', CAST(0x00009EF000C7E162 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (258, 42, N'Bárbara Karla Franco Leal', N'8849-0329', N'ba_kleal@hotmail.com', CAST(0x00009EF300C36AA3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (261, 143, N' Dalva Dodo', N' 3203-3038 / 8865-9710', N'  dalvadodo@yahoo.com.br', CAST(0x00009EF70097CD92 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (262, 42, N'tatiane', N'4199278167', N'tatianemachado_letras@hotmail.com', CAST(0x00009EFA012B6F1E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (263, 128, N'karyn', N'4199574576', N'karyn_tizzot@hotmail.com', CAST(0x00009EFB013FBB46 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (177, 24, N'Ariadne Gural', N'84174985', N'adegural@hotmail.com', CAST(0x00009E7500E9FFF3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (178, 42, N'Fabio Alexandre Tome dos Santos ', N'84026242', N'fabitho_@hotmail.com', CAST(0x00009E7600B3AC62 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (182, 48, N'Izabelle Bonato Batista Neu Sidyr', N'41-33457629', N'izza-belle@bol.com.br', CAST(0x00009E7600F72150 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (180, 42, N'tatiane', N'87042183', N'tatiane_padilha10@yahoo.com.br', CAST(0x00009E7600D83E4B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (211, 218, N'SHEILA', N'4133729617', N'CLEBERSHEILA@HOTMAIL.COM', CAST(0x00009E9D00EB20BC AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (183, 222, N'Patricia Wansaucheki', N'(41)3253-6780', N'pmkiki08@gmail.com', CAST(0x00009E7700A99A02 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (186, 38, N' Dulce Bley', N'32446227', N' dfbley @ yahoo.com.br ', CAST(0x00009E7D00A0E976 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (188, 42, N'mauro cruz', N'3604-2879 /  9994-6035', N'maurosergiocruz@yahoo.com.br', CAST(0x00009E7F010B4771 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (190, 42, N'mauro cruz', N'3604-2879 /  9994-6035', N'maurosergiocruz@yahoo.com.br', CAST(0x00009E7F010B92E6 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (194, 143, N'Gisele', N'96819608', N'gisele.gandra@hotmail.com', CAST(0x00009E8401033CCA AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (198, 18, N'Kerly Cristina de Souza', N'9923-7298', N'kerly.souza@ifpr.edu.br', CAST(0x00009E8C00F65F53 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (200, 42, N'Daniele Bornholdt', N'88664966/36679304', N'dani_bornholdt@hotmail.com', CAST(0x00009E9101188554 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (201, 42, N'ANDREA DA COSTA PACHECO', N'8877-0787 / 9866-6208', N'deacp1@hotmail.com', CAST(0x00009E9200B40316 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (216, 40, N'Carlos', N'4184146596', N'chsiwek@hotmail.com', CAST(0x00009EA6008243F1 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (223, 202, N'ana paula godoy', N'88084905', N'anagodoy26@gmail.com', CAST(0x00009EAE000389A6 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (227, 122, N' Priscila Alves de Lima Damasio', N' (41) 3667-3740', N' pri.ald@hotmail.com', CAST(0x00009EBB00B23E6F AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (233, 202, N'caroline', N'4199952107', N'caro_ribeiro@hotmail.com', CAST(0x00009ECA01371445 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (235, 48, N' Ana Paula Felizardo', N'41-8881-0890', N'anapaula_felizardo@hotmail.com', CAST(0x00009ED200D05AA2 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (245, 143, N'KARIN DE SOUZA', N'41 96564895', N'karin.grano@hotmail.com', CAST(0x00009EDF01061588 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (256, 122, N'Junior', N'85068086', N'tkjc_22@hotmail.com', CAST(0x00009EF1009F938E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (257, 122, N'Junior', N'85068086', N'tkjc_22@hotmail.com', CAST(0x00009EF1009FBE62 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (158, 42, N'Mayara Chamseddine', N'8858 4393', N'mayara_chamseddine88@yahoo.com.br', CAST(0x00009E5400DDC8C0 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (161, 42, N'Mayara Chamseddine', N'8858 4393', N'mayara_chamseddine88@yahoo.com.br', CAST(0x00009E5400E4B663 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (159, 42, N'Mayara Chamseddine', N'8858 4393', N'mayara_chamseddine88@yahoo.com.br', CAST(0x00009E5400DDEAD8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (162, 204, N'Ana Lúcia Bauer Bassani', N'96449889', N'analuciabauer@gmail.com', CAST(0x00009E5801368684 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (163, 204, N'Ana Lúcia Bauer Bassani', N'96449889', N'analuciabauer@gmail.com', CAST(0x00009E580136A19E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (164, 46, N'Michelle', N'4130225889', N'mibonard@hotmail.com', CAST(0x00009E5B01415EF9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (165, 42, N'gabrielle rodrigues de lima', N'91551446', N'gabrielle rodr@hotmail.com', CAST(0x00009E60009CDE58 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (166, 42, N'sandra rocha', N'85223249', N'sanstek@hotmail.com', CAST(0x00009E6100D42C68 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (167, 204, N'Cristina Machado', N'41 3353555', N'cristina.machado@gmail.com', CAST(0x00009E620150799A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (168, 204, N'Cristina Machado', N'41 3353555', N'cristina.machado@gmail.com', CAST(0x00009E6201509379 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (169, 202, N'Joyce Nascimento', N'35985774', N'joyce_arte@yahoo.com.br', CAST(0x00009E63014D7DC1 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (171, 42, N'Tatiane', N'92427436', N'tatioliveira_silva@hotmail.com', CAST(0x00009E69009EA3E8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (172, 42, N'Tatiane', N'92427436', N'tatioliveira_silva@hotmail.com', CAST(0x00009E6900E5053B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (173, 42, N'Tatiane', N'92427436', N'tatioliveira_silva@hotmail.com', CAST(0x00009E6900E52A2E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (174, 76, N'evelaine c silva', N'41/9947-9799', N'evelaine_horn@hotmail.com', CAST(0x00009E6B00B02228 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (175, 42, N'Rubia Dominoni', N'41-3669-3440', N'Rubdomi@hotmail.com', CAST(0x00009E6D00D9F253 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (176, 203, N' Valéria Barwinski', N'41 88743425', N'val.barwinski10@gmail.com', CAST(0x00009E7201650EB0 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (179, 42, N'Fabio Alexandre Tome dos Santos ', N'84026242', N'fabitho_@hotmail.com', CAST(0x00009E7600B3EA25 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (181, 48, N'izabelle vonato batista neu sidyr', N'41-33457629', N'izza-belle@bol.com.br', CAST(0x00009E7600F6ED21 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (184, 42, N'Daniele Poerner', N'8845-4646', N'daniele@wdbnet.com', CAST(0x00009E7800E9A5B2 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (185, 42, N'Michelle Bientinez', N'41-99671228', N'migeara@hotmail.com', CAST(0x00009E79009C8666 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (187, 42, N'mauro cruz', N'3604-2879 /  9994-6035', N'maurosergiocruz@yahoo.com.br', CAST(0x00009E7F010B1F20 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (189, 42, N'mauro cruz', N'3604-2879 /  9994-6035', N'maurosergiocruz@yahoo.com.br', CAST(0x00009E7F010B7274 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (191, 42, N'mauro cruz', N'3604-2879 /  9994-6035', N'maurosergiocruz@yahoo.com.br', CAST(0x00009E7F010BDB0F AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (192, 42, N'Marcia Ulinski', N'4133813665', N'marcia.ulinski@volkswagen.com.br', CAST(0x00009E8000A850EA AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (193, 24, N'Anna', N'9244-4193', N'anninhabukow@hotmail.com', CAST(0x00009E8301270774 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (195, 80, N'Gisele', N'96819608', N'gisele.gandra@hotmail.com', CAST(0x00009E840105D382 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (197, 42, N'ketlim cristina vidal', N'3343-1545', N'ketlimvidal@hotmail.com', CAST(0x00009E8B00AAA9A8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (199, 203, N'silvia', N'33450447', N'silvialima16@hotmail.com', CAST(0x00009E90015C07A2 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (202, 64, N'Sandra Marcia dos Santos', N'33325244 e 30238104', N'sandra-gutar@hotmail.com', CAST(0x00009E9300C70AF9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (203, 203, N'Vanessa Mouchbahani', N'8414-8555', N'mouchba@bol.com.br', CAST(0x00009E9400543C68 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (204, 40, N'Vanessa Mouchbahani ', N'8414-8555', N'mouchba@bol.com.br', CAST(0x00009E9400556C3F AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (205, 40, N'Carlos Henrique Siwek', N'41 84146596', N'chsiwek@hotmail.com', CAST(0x00009E95010DCD8C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (206, 40, N'Carlos Henrique Siwek', N'41 84146596', N'chsiwek@hotmail.com', CAST(0x00009E95010DE4B6 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (207, 203, N'Carlos Henrique Siwek', N'41 84146596', N'chsiwek@hotmail.com', CAST(0x00009E95010F98D7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (208, 82, N'Flávia', N'9931-1350', N'flaviarbsantos@terra.com.br', CAST(0x00009E9601898CCE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (210, 42, N'cleonice Wansaucheki', N'32361816', N'cleo.w@brturbo.com.br', CAST(0x00009E9A00F1DD6C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (212, 42, N'nilvanira zaboti', N'36530844/84534662', N'nilvanirazaboti@gmail.com', CAST(0x00009E9E014D71F5 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (213, 42, N'nilvanira zaboti', N'36530844/84534662', N'nilvanirazaboti@gmail.com', CAST(0x00009EA100BC93AE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (214, 42, N'nilvanira zaboti', N'36530844/84534662', N'nilvanirazaboti@gmail.com', CAST(0x00009EA100BCA24A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (215, 204, N' Maristela Rossa Scholottag', N'41 33351184', N' marcia_nut@hotmail.com', CAST(0x00009EA3012DA785 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (217, 42, N'tatiane', N'30853469', N'tsplacourt@hotmail.com', CAST(0x00009EA600E0DF60 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (218, 42, N'jaqueline', N'91863542', N'eduardojaqueline@hotmail.com', CAST(0x00009EA700A98541 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (219, 42, N'jaqueline', N'91863542', N'eduardojaqueline@hotmail.com', CAST(0x00009EA700AA54C8 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (220, 42, N'jaqueline', N'91863542', N'eduardojaqueline@hotmail.com', CAST(0x00009EA700AB048B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (221, 42, N'jaqueline', N'91863542', N'eduardojaqueline@hotmail.com', CAST(0x00009EA700AB29E1 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (222, 222, N'Carolline Remer Silva', N'41 9623 1410', N'frauremer@gmail.com', CAST(0x00009EAD01172CE4 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (224, 202, N'Giovana Samara', N'41 36181309', N'giovana_samara@yahoo.com.br', CAST(0x00009EB300CCF533 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (225, 202, N'Giovana Samara', N'4136185139', N'giovana_samara@yahoo.com.br''', CAST(0x00009EB300CD2CEB AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (228, 26, N'ADRIANA REGINA BRUGGEMAM LEAL', N'32380789', N'adribleal@yahoo.com.br', CAST(0x00009EBF00B3B16B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (229, 64, N' ANNA PAULA MORGENSTERN', N'3092-8778/ 8442-4848', N'annamor8797@hotmail.com.br', CAST(0x00009EC7009BAEFE AS DateTime))
GO
print 'Processed 400 total records'
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (230, 25, N' Anna Paula', N'8442-4848', N'annamor8797@hotmail.com', CAST(0x00009EC700A66E35 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (231, 25, N' Anna Paula ', N' 8442-4848', N' annamor8797@hotmail.com.br', CAST(0x00009EC700A6B59E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (232, 64, N' Anna Paula M', N' 8442-4848', N' annamor8797@hotmail.com', CAST(0x00009EC700A6EAAE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (236, 76, N' Cinthia', N' 3019-8667', N' cina@tjpr.jus.br', CAST(0x00009ED300F25089 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (237, 48, N'kelly cristine', N'91069374', N'kellyclgf@uol.com.br', CAST(0x00009ED501003DBA AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (239, 33, N'andrea de brito ruppell', N'41 99943834', N'andreabr@tce.pr.gov.br', CAST(0x00009ED9009C3F8A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (238, 40, N'Marcus Vinicius Ferreira dos Santos', N'96417430', N'paradisenice@gmail.com', CAST(0x00009ED800EBF350 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (241, 202, N'karyn Roberta Lopes de Oliveira', N'3329-0078', N'karyn.lopes@hotmail.com', CAST(0x00009EDA00E7227B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (242, 202, N'karyn Roberta Lopes de Oliveira', N'3228-1213', N'karyn.lopes@hotmail.com', CAST(0x00009EDA00E788E3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (243, 202, N'karyn Roberta Lopes de Oliveira', N'3329-0078', N'karyn.lopes@hotmail.com', CAST(0x00009EDA00E7E24C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (244, 76, N'karyn Roberta Lopes de Oliveira', N'3329-0078', N'karyn.lopes@hotmail.com', CAST(0x00009EDA00EA3138 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (247, 203, N'Meiry Hoga', N'99342436', N'meirysh@ig.com.br', CAST(0x00009EE300BD3041 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (248, 40, N'Margarete', N'3387-1913', N'margaretesouza@ymail.com', CAST(0x00009EE500A812B7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (251, 76, N'ANGELA CRISTINA BERINO', N'41-3365-3265', N'cberino@ig.com.br', CAST(0x00009EE600CCC6C4 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (252, 76, N'ANGELA CRISTINA BERINO', N'41-3365-3265', N'cberino@ig.com.br', CAST(0x00009EE600CCF888 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (250, 143, N'scheila mendes', N'4130782588', N'lyndinha2.0@hotmail.com', CAST(0x00009EE600A953A2 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (249, 48, N'Alessandra Vanessa Pereira Pivato', N'35696138', N'alepivato@yahoo.com.br', CAST(0x00009EE50170EF6B AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (253, 24, N' Adriane Padilha', N' 9902-2959', N' padilima@ig.com.br', CAST(0x00009EEB00A7DC3A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (254, 20, N'Silmara', N'85031042', N'sil-p@hotmail.com', CAST(0x00009EF000C7DE08 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (259, 42, N'Joanna Marques Froguer Leandro', N'30445256', N'joannanutricao@hotmail.com', CAST(0x00009EF4017F8AAA AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (260, 203, N'Marcelo Ludwig Nigri', N'35572702', N'marcelonigri@hotmail.com', CAST(0x00009EF6017EEFDF AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (264, 42, N'Angelise', N'41 9917-0662', N'isefg@yahoo.com.br', CAST(0x00009EFC00B51578 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (265, 198, N'Hendrick Brian', N'041-98138042', N'euhb.cfcep@hotmail.com', CAST(0x00009F0401138EB5 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (266, 198, N'Hendrick Brian', N'041-98138042', N'euhb.cfcep@hotmail.com', CAST(0x00009F0401140A2C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (267, 198, N'Hendrick Brian', N'041-98138042', N'euhb.cfcep@hotmail.com', CAST(0x00009F040114DA99 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (268, 214, N'Valquiria Silveira Porto', N'99746680', N'valporto@bhsorg.com.br', CAST(0x00009F050110DEE7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (269, 22, N'solange rosa ', N'41 30585810', N'solangersg@yahoo.co.br', CAST(0x00009F0900BCE351 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (270, 22, N'solange rosa ', N'41 30585810', N'solangersg@yahoo.co.br', CAST(0x00009F0900BCE3FA AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (271, 26, N'SILMARA DOS SANTOS GOMES', N'87033489', N'silmara_dossantos@yahoo.com.br', CAST(0x00009F0F00EC1D15 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (273, 42, N'Andreia Lecim Bueno', N'3361-6301', N'andreia@lactec.org.br', CAST(0x00009F1100EEAC93 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (275, 222, N'ELIZA CASTRO PIMENTEL', N'9171-6248', N'elindapimentel@hotmail.com', CAST(0x00009F1101855569 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (277, 222, N'ELIZA CASTRO PIMENTEL', N'9171-6248', N'elindapimentel@hotmail.com', CAST(0x00009F110185A64E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (272, 42, N'Andreia Lecim Bueno', N'3361-6301', N'andreia@lactec.org.br', CAST(0x00009F1100EE8A6D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (274, 222, N'ELIZA CASTRO PIMENTEL', N'9171-6248', N'elindapimentel@hotmail.com', CAST(0x00009F11018546DF AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (276, 222, N'ELIZA CASTRO PIMENTEL', N'9171-6248', N'elindapimentel@hotmail.com', CAST(0x00009F11018560E9 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (279, 222, N'Sandra Nunes', N'8805-8328', N'sandra.f.nunes@hotmail.com', CAST(0x00009F1301075F5A AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (280, 222, N'Sandra Nunes', N'8805-8328', N'sandra.f.nunes@hotmail.com', CAST(0x00009F130107ACEA AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (278, 198, N' Andressa', N' 3312-3670', N' neidegs@positivo.com.br', CAST(0x00009F1200F8ED9C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (281, 76, N'MARILU CICHON DE LIZ', N'8808 1411', N' malucichon@hotmail.com', CAST(0x00009F1601089876 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (282, 76, N'MARILU CICHON DE LIZ', N'8808 1411', N'malucichon@hotmail.com', CAST(0x00009F160108F23D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (339, 122, N'josiane cristina toma', N'41-9675-0362 ', N'josi_toma@hotmail.com', CAST(0x00009F9801144CE5 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (340, 122, N' josiane cristina toma ', N'41-96750362', N'josi_toma@hotmail.com', CAST(0x00009F9801148786 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (342, 222, N'tatiane rodrigues ', N'04196302472', N'tatiane.rodrigues90@yahoo.com.br', CAST(0x00009F9E01235BCE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (346, 40, N'Alessandra', N'96435853', N'aledbgarcia@hotmail.com', CAST(0x00009FA3012C7910 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (349, 24, N'Franscielly', N'96447432', N'fran@dpseg.com.br', CAST(0x00009FA90100A027 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (351, 204, N'carla chami', N'41-91415070', N' carla.d.chami@hsbc.com.br', CAST(0x00009FAC00B41126 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (457, 203, N' LILIAN NADALIN', N'99151726', N'LILIAN.NADALIN@HOTMAIL.COM', CAST(0x0000A06000D97A26 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (365, 48, N' Eloisa Ramos Pinotti Martinho', N' 3079-1518/ 8841-3454', N' elo.martinho@terra.com.br', CAST(0x00009FDB00AB7886 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (394, 42, N'Cleonice Wansaucheki', N'41 - 3236-1816', N'cleo.w@brturbo.com.br', CAST(0x00009FF800E98366 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (429, 113, N'Ane Cristine Alves Gonzalez', N' (41) 8867-4516', N'aneibgep@gmail.com', CAST(0x0000A02A0113E37D AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (361, 40, N'sf', N'fds', N'fdf', CAST(0x00009FD500C3DE6E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (362, 76, N'fggf', N'fbvf', N'fbf', CAST(0x00009FD500C3F97E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (378, 26, N'Daniele Costa de Souza Bento', N'99852959', N'dbento@smu.curitiba.pr.gov.br', CAST(0x00009FEC00D377CF AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (396, 26, N' Thais Moreira', N' 41 3606 4951', N' thais_raffinha1@hotmail.com', CAST(0x00009FFC01147CD4 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (404, 40, N'Fernanda Gonçalves', N'35282128', N'ferdi_goncalves@hotmail.com', CAST(0x0000A00C007F0CBE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (428, 188, N'Mariana Queirolo', N'4178214189', N'mariana_qv@hotmail.com', CAST(0x0000A02700E4EF8C AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (439, 408, N' ELIZABETE FRANCELINO', N' (41)9871-6476', N'elizabkt@hotmail.com', CAST(0x0000A035011869E2 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (452, 327, N' Fernanda de Oliveira Batista', N' 9603-7337    3346-1366', N' oliv.fernanda@gmail.com', CAST(0x0000A05201035D17 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (469, 94, N'Elisabeth Mau', N'33232083', N'elisabeth.mau@hsbc.com.br', CAST(0x0000A09800D25C36 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (375, 40, N'Gabriele Popp', N'41 84347777', N'GABIPOPP@ONDA.COM.BR', CAST(0x00009FEA01062CAB AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (407, 391, N'FABIANA SANTOS', N'32468056', N'FABYOPCAO@POP.COM.BR', CAST(0x0000A00D011E70A7 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (417, 42, N'Simoni Garcia', N'41 9643-2048', N'garciasimoni@yahoo.com.br', CAST(0x0000A01200F34AEB AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (418, 42, N'Simoni Garcia', N'41 9643-2048', N'garciasimoni@yahoo.com.br ', CAST(0x0000A01200F3E3B3 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (442, 42, N'DANI', N'99320304', N'daniserraverde@onda.com.br', CAST(0x0000A03C00CEB542 AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (443, 80, N'dani', N'33669966', N'mailto:curitibavendobuffet@gmail.com', CAST(0x0000A03C00D2463E AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (392, 18, N'Christian Nascimento Piske', N'41 3219-1495', N'cnpiske@hotmail.com', CAST(0x00009FF6015E41CE AS DateTime))
INSERT [dbo].[bonus_retorno] ([codigo], [codigo_anunciante], [nome], [telefone], [email], [data_impressao]) VALUES (438, 48, N'Marcela', N'96115445', N'marcela.pellanda@gmail.com', CAST(0x0000A03500FA63B3 AS DateTime))
/****** Object:  Table [dbo].[bonus]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bonus](
	[codigo] [int] NOT NULL,
	[codigo_anunciante] [int] NOT NULL,
	[bonus] [varchar](100) NULL,
	[status] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [idx_codigo] ON [dbo].[bonus] 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_codigo_anunciante] ON [dbo].[bonus] 
(
	[codigo_anunciante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (2, 12, N'valebonus.jpg', 0)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (3, 33, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (4, 17, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (5, 42, N'danifestasbonus.png', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (7, 76, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (8, 5, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (38, 308, N'bonusamarelo.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (10, 195, N'bonusCANTINHO.png', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (11, 4, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (37, 211, N'bonusTERRAENCANTADA.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (13, 20, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (14, 24, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (15, 13, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (16, 173, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (17, 26, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (18, 40, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (21, 143, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (22, 215, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (23, 188, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (25, 80, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (26, 18, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (27, 204, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (28, 213, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (29, 31, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (30, 136, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (33, 122, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (34, 205, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (35, 198, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (36, 48, N'valebonus.jpg ', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (39, 309, N'bonusanalu.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (40, 344, N'valebonus.jpg', 1)
INSERT [dbo].[bonus] ([codigo], [codigo_anunciante], [bonus], [status]) VALUES (41, 396, N'valebonus.jpg', 1)
/****** Object:  Table [dbo].[banner_categoria]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banner_categoria](
	[codigo] [int] NOT NULL,
	[codigo_categoria] [int] NULL,
	[codigo_banner] [int] NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_codigo] ON [dbo].[banner_categoria] 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_codigo_categoria] ON [dbo].[banner_categoria] 
(
	[codigo_categoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (178, 66, 85)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (185, 6, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (186, 7, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (1, 22, 2)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (2, 13, 8)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (3, 14, 8)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (4, 3, 8)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (5, 22, 21)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (6, 33, 22)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (7, 24, 23)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (8, 72, 23)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (9, 1, 24)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (10, 39, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (11, 61, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (12, 7, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (13, 8, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (14, 9, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (15, 10, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (16, 45, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (17, 69, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (18, 75, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (19, 53, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (20, 68, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (21, 13, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (22, 14, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (23, 11, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (24, 3, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (25, 1, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (26, 2, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (27, 66, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (28, 55, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (29, 77, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (30, 15, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (31, 16, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (32, 20, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (33, 19, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (34, 71, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (35, 17, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (36, 4, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (37, 44, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (38, 5, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (39, 18, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (40, 21, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (41, 67, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (42, 23, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (43, 22, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (44, 59, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (45, 25, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (46, 26, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (47, 27, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (48, 24, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (49, 56, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (50, 28, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (51, 29, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (52, 64, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (53, 30, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (54, 31, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (55, 73, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (56, 46, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (57, 33, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (58, 47, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (59, 50, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (60, 76, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (61, 51, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (62, 63, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (63, 34, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (64, 65, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (65, 62, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (66, 70, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (67, 35, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (68, 57, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (69, 49, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (70, 48, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (71, 36, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (72, 37, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (73, 60, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (74, 38, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (75, 52, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (76, 40, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (77, 74, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (78, 41, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (79, 58, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (80, 42, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (81, 54, 26)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (82, 39, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (83, 61, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (84, 7, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (85, 8, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (86, 9, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (87, 10, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (88, 45, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (89, 69, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (90, 75, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (91, 53, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (92, 68, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (93, 13, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (94, 14, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (95, 11, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (96, 3, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (97, 1, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (98, 2, 27)
GO
print 'Processed 100 total records'
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (99, 66, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (100, 55, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (101, 77, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (102, 15, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (103, 16, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (104, 19, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (105, 20, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (106, 71, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (107, 17, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (108, 4, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (109, 44, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (110, 18, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (111, 5, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (112, 21, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (113, 67, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (114, 23, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (115, 22, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (116, 59, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (117, 25, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (118, 26, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (119, 27, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (120, 24, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (121, 56, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (122, 28, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (123, 29, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (124, 64, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (125, 30, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (126, 31, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (127, 73, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (128, 72, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (129, 46, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (130, 32, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (131, 33, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (132, 47, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (133, 50, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (134, 76, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (135, 51, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (136, 63, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (137, 34, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (138, 65, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (139, 62, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (140, 70, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (141, 35, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (142, 57, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (143, 49, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (144, 48, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (145, 36, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (146, 37, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (147, 60, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (148, 38, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (149, 52, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (150, 40, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (151, 6, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (152, 74, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (153, 41, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (154, 58, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (155, 42, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (156, 54, 27)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (157, 6, 42)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (158, 2, 42)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (159, 4, 42)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (160, 49, 42)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (161, 5, 42)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (162, 72, 49)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (163, 73, 49)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (164, 73, 50)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (165, 72, 50)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (166, 1, 50)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (167, 14, 51)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (169, 38, 51)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (172, 77, 51)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (173, 3, 51)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (168, 23, 51)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (170, 44, 51)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (171, 54, 51)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (174, 1, 49)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (175, 1, 85)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (176, 73, 85)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (177, 30, 85)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (179, 72, 85)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (180, 1, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (181, 2, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (182, 3, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (183, 4, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (184, 5, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (187, 8, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (188, 9, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (189, 10, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (190, 11, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (191, 13, 70)
INSERT [dbo].[banner_categoria] ([codigo], [codigo_categoria], [codigo_banner]) VALUES (192, 85, 70)
/****** Object:  Table [dbo].[banner]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[banner](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](100) NULL,
	[codigo_local_banner] [int] NULL,
	[largura] [int] NULL,
	[altura] [int] NULL,
	[status] [int] NULL,
	[codigo_cliente] [int] NULL,
	[miniatura] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [idx_codigo] ON [dbo].[banner] 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_codigo_local_banner] ON [dbo].[banner] 
(
	[codigo_local_banner] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (67, N'lollypop180x60.swf', 2, 180, 60, 0, 193, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (68, N'missgrace180x145.swf', 2, 180, 145, 1, 344, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (69, N'iark180x60.swf', 2, 180, 80, 0, 345, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (70, N'selofunjungle.swf', 8, 120, 60, 1, 67, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (71, N'selofunjungle.swf', 11, 120, 60, 1, 67, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (72, N'bannercinefest.swf', 2, 180, 60, 0, 33, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (73, N'funclub180x180.swf', 2, 180, 180, 1, 359, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (74, N'thecandyman180x90.swf', 2, 180, 70, 0, 346, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (75, N'reileao180x60.swf', 2, 180, 60, 1, 148, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (76, N'rezende180x150.swf', 2, 180, 170, 0, 209, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (78, N'kids350x140.swf', 2, 180, 72, 0, 244, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (79, N'sonhosdefestas180x60.swf', 2, 180, 60, 1, 238, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (80, N'celli180x60.swf', 2, 180, 60, 0, 4, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (81, N'mariamaria180x90.swf', 2, 180, 70, 1, 341, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (82, N'cento180x80.swf', 2, 180, 70, 0, 39, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (83, N'aquarelakids180x120.swf', 2, 180, 160, 1, 196, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (84, N'felizcidade180x120.swf', 2, 180, 120, 1, 60, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (85, N'felizcidade120x60.swf', 8, 120, 60, 1, 60, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (86, N'beehappy180x120.swf', 2, 180, 120, 0, 106, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (87, N'bannerspirogiro350x140.swf', 2, 180, 72, 1, 358, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (89, N'ogga537x130.swf', 1, 537, 130, 1, 156, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (90, N'festejando180x300.swf', 2, 180, 300, 0, 116, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (91, N'lollyboombanner.swf', 2, 180, 72, 1, 303, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (92, N'rudi180x60.swf', 2, 180, 60, 1, 237, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (93, N'papai350x140.swf', 2, 180, 72, 0, 369, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (94, N'monica180X80.swf', 2, 180, 80, 0, 206, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (95, N'dilene180x72.swf', 2, 180, 72, 0, 372, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (97, N'adori180x60.swf', 2, 180, 60, 1, 7, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (98, N'familiasanduiche350x140', 1, 350, 140, 0, 375, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (99, N'casquinha180x60.swf', 2, 180, 60, 1, 377, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (100, N'pozinho180x80.swf', 2, 180, 80, 1, 383, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (101, N'EMANNUEL180X300.swf', 2, 180, 300, 0, 179, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (102, N'SANDRA180X42.swf', 2, 180, 145, 1, 130, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (103, N'bannerdanni180x70.swf', 2, 180, 70, 1, 42, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (104, N'GVfestas180X80.swf', 2, 180, 80, 0, 142, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (105, N'vendebuffet.swf', 2, 180, 80, 0, 7, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (106, N'VD_LOJA.swf', 2, 180, 80, 0, 65, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (107, N'sunny180x70.swf', 2, 180, 70, 1, 385, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (108, N'VD_sonhos.swf', 2, 180, 80, 0, 238, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (109, N'VD_spiro.swf', 2, 180, 80, 0, 358, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (111, N'galcyhaus180x80.swf', 2, 180, 80, 1, 70, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (112, N'karin180X50.swf', 2, 180, 50, 1, 2, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (113, N'especialitta180x60.swf', 2, 180, 60, 1, 402, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (114, N'bannerdanni180x70.swf', 2, 180, 70, 0, 42, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (1, N'amazing180x120.swf', 2, 180, 120, 0, 1, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (3, N'biabiebibi180x120.swf ', 2, 180, 120, 1, 24, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (4, N'brincadeiradecrianca180x60.swf', 2, 180, 60, 0, 206, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (5, N'centopeia180x120.swf', 2, 180, 120, 0, 39, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (6, N'coemorekids180x120.swf', 2, 180, 120, 1, 30, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (7, N'natalSANDRA180X42.swf', 2, 180, 145, 0, 160, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (8, N'docinhosecia468x60.swf ', 4, 468, 60, 1, 4, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (9, N'publicidadeDrika.swf', 2, 180, 140, 1, 48, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (10, N'banner_festtaria.swf', 2, 180, 60, 0, 221, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (11, N'jaquebaloes180x60.swf', 2, 180, 60, 0, 224, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (13, N'karin180x120.swf', 2, 180, 120, 0, 2, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (14, N'nudelmania180x60.swf', 2, 180, 100, 1, 232, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (16, N'puraimaginacao180x120.swf', 2, 180, 120, 0, 119, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (17, N'qualifesta180x50.swf', 2, 180, 50, 0, 87, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (19, N'tuttifestas180x60.swf', 2, 180, 60, 1, 118, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (20, N'veraarcenio180x60.swf', 2, 180, 60, 1, 142, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (21, N'biabiebibi460x60.swf', 4, 468, 60, 1, 24, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (22, N'stampaphoto468x60.swf', 4, 468, 60, 0, 134, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (23, N'lollypop468x60.swf', 4, 468, 60, 0, 193, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (24, N'oogabooga468X60.swf', 4, 468, 60, 0, 156, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (25, N'fun700x90.swf', 9, 468, 60, 1, 359, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (26, N'cinefest120x60.swf', 8, 120, 60, 0, 33, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (27, N'seloesqcento.swf', 5, 120, 60, 1, 39, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (28, N'seloesqcento.swf', 10, 120, 60, 1, 39, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (29, N'cinefest120x60.swf', 11, 120, 60, 0, 33, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (30, N'crepesabor537x130.swf', 1, 537, 130, 0, 74, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (96, N'luiz180x60.swf', 2, 180, 60, 1, 100, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (33, N'girodapizza180x60.swf', 2, 180, 60, 0, 264, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (34, N'pinguinhokids180x60.swf', 2, 180, 60, 0, 266, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (35, N'mariabalao180x50.swf', 2, 180, 60, 1, 272, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (36, N'amazing537x130.swf', 1, 537, 130, 1, 1, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (37, N'banner_arteempapel.swf', 2, 180, 60, 0, 199, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (38, N'banner_carlos.swf', 2, 180, 60, 0, 209, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (39, N'festejando1_537x130.swf', 1, 537, 130, 1, 116, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (40, N'xixo180x60.swf', 2, 180, 60, 0, 289, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (41, N'MAOSbanner.swf', 2, 180, 80, 0, 290, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (42, N'karin468x60.swf', 4, 468, 60, 0, 2, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (43, N'gomez180x72.swf', 2, 180, 75, 0, 298, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (44, N'clasjingle180x80.swf', 2, 180, 80, 0, 34, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (45, N'bambini180x80.swf', 2, 180, 80, 1, 305, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (46, N'STAMPA 180x72.swf', 2, 180, 80, 0, 134, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (47, N'aconchego180x120.swf', 2, 180, 120, 0, 5, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (48, N'rezende180x60.swf', 2, 180, 60, 0, 209, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (49, N'catavento_468x60.swf', 4, 468, 60, 1, 271, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (50, N'catavento180x80.swf', 2, 180, 80, 1, 271, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (51, N'BANNERNATAL468x60.swf', 4, 468, 60, 0, 130, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (52, N'banneroficina180x60.swf', 2, 180, 60, 0, 177, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (63, N'artesfestas180x60.swf', 2, 180, 60, 0, 316, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (54, N'ALEGRIS180X80.swf', 2, 180, 80, 1, 181, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (55, N'visitapapainoel.swf', 2, 180, 80, 0, 4, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (56, N'nany180x80.swf', 2, 180, 80, 0, 4, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (57, N'temaedson180x80.swf', 2, 180, 80, 0, 4, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (58, N'bannercores350x140.swf', 2, 180, 72, 1, 36, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (59, N'ALAOR180X80.swf', 2, 180, 80, 0, 4, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (60, N'leandra180x80.swf', 2, 180, 80, 0, 4, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (61, N'girodapizza180x180.swf', 2, 180, 180, 0, 264, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (62, N'nanda180x60.swf', 2, 180, 60, 0, 329, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (64, N'lepetit180x60.swf', 2, 180, 60, 0, 4, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (65, N'diskmel180x60.swf', 3, 180, 60, 0, 4, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (66, N'diskmel180x60.swf', 2, 180, 60, 0, 4, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (77, N'2festasefestas180x70.swf', 2, 180, 70, 0, 133, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (88, N'brigadeiroecia.swf', 2, 180, 70, 1, 4, NULL)
INSERT [dbo].[banner] ([codigo], [descricao], [codigo_local_banner], [largura], [altura], [status], [codigo_cliente], [miniatura]) VALUES (110, N'analuz180X80.swf', 2, 180, 80, 1, 354, NULL)
/****** Object:  Table [dbo].[anuncio_categoria]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anuncio_categoria](
	[codigo] [int] NOT NULL,
	[codigo_anunciante] [int] NOT NULL,
	[codigo_categoria] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_anuncio_anunciante] ON [dbo].[anuncio_categoria] 
(
	[codigo_anunciante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_codigo] ON [dbo].[anuncio_categoria] 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2209, 276, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2210, 276, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2211, 276, 56)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (967, 183, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (968, 183, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (969, 183, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (970, 183, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (971, 183, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (972, 183, 20)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (973, 183, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (975, 183, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (976, 183, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (977, 183, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (978, 183, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (979, 183, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (980, 183, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (981, 183, 38)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (982, 183, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (983, 183, 40)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (984, 183, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (985, 64, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (986, 64, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (987, 64, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (988, 64, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (989, 64, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (990, 64, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (991, 64, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (992, 64, 20)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (993, 64, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (994, 64, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (995, 64, 28)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (996, 64, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (997, 64, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (998, 64, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (999, 64, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1000, 64, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1001, 64, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1002, 64, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1003, 64, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1004, 64, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1005, 64, 45)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1006, 64, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1007, 64, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1008, 64, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1010, 184, 51)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1012, 185, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1013, 185, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1014, 185, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1016, 173, 52)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1017, 186, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1018, 115, 53)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1019, 186, 53)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1020, 186, 54)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1021, 187, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1022, 187, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1023, 187, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1025, 187, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1026, 187, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1027, 187, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1029, 188, 31)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1031, 188, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1045, 191, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1046, 191, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1047, 191, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1048, 191, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1049, 189, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1050, 189, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1051, 189, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1052, 189, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1057, 190, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1058, 190, 10)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1059, 190, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1060, 190, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1061, 190, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1062, 190, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1063, 190, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1064, 190, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1065, 190, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1066, 190, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1103, 196, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1104, 196, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1110, 177, 53)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1111, 42, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1113, 198, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1117, 198, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1118, 198, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1119, 198, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1120, 198, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1127, 118, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1130, 28, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1131, 28, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1132, 204, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1143, 208, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1144, 208, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1152, 80, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1160, 210, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1162, 210, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1163, 210, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1168, 55, 59)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1169, 74, 59)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1170, 92, 59)
GO
print 'Processed 100 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1171, 212, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1172, 212, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1177, 213, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1178, 213, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1179, 213, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1180, 213, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1181, 213, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1182, 213, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1194, 173, 60)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1195, 217, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1196, 217, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1197, 217, 31)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1198, 217, 61)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1202, 218, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1204, 188, 61)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1206, 143, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1208, 219, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1210, 219, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1212, 221, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1213, 221, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1214, 221, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1215, 221, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1233, 225, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1236, 31, 63)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1237, 148, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1238, 148, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1242, 226, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1244, 226, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1245, 226, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1246, 226, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1248, 226, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1261, 227, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1262, 227, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1269, 229, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1273, 230, 20)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1292, 232, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1295, 183, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1296, 183, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1297, 183, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1298, 183, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1299, 183, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1300, 183, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1301, 183, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1302, 183, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1303, 183, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1304, 183, 52)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1305, 183, 64)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1307, 233, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1308, 110, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1309, 77, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1310, 77, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1311, 77, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1313, 77, 31)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1314, 183, 65)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1315, 183, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1316, 183, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1317, 183, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1318, 183, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1319, 183, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1320, 183, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1321, 183, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1322, 183, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1323, 183, 74)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1326, 235, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1327, 235, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1362, 173, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1363, 173, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1365, 236, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1371, 110, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1379, 238, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1380, 238, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1382, 238, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1383, 238, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1384, 238, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1387, 240, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1388, 240, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1389, 240, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1390, 240, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1391, 240, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1422, 241, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1429, 242, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1430, 242, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1436, 244, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1449, 244, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1452, 244, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1453, 244, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1454, 245, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1455, 245, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1456, 245, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1457, 245, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1458, 245, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1459, 246, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1460, 245, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1461, 245, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1563, 253, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1564, 253, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1565, 253, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1566, 253, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1567, 254, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1568, 254, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1569, 254, 3)
GO
print 'Processed 200 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1570, 254, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1571, 255, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1572, 255, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1573, 256, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1574, 256, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1575, 253, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1576, 253, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1579, 253, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1585, 253, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1586, 253, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1587, 253, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1588, 257, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1589, 257, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1590, 52, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1596, 52, 58)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1602, 52, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1603, 258, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1604, 258, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1605, 258, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1606, 258, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1607, 258, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1608, 258, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1609, 258, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1610, 258, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1611, 258, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1612, 258, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1613, 258, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1614, 258, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1615, 258, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1616, 259, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1462, 245, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1463, 245, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1464, 247, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1465, 247, 53)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1466, 248, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1467, 248, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1468, 248, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1469, 172, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1470, 172, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1471, 172, 65)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1472, 172, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1473, 227, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1474, 247, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1475, 247, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1476, 247, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1477, 247, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1478, 247, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1479, 247, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1480, 247, 54)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1481, 247, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1482, 247, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1483, 249, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1484, 249, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1485, 249, 49)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1486, 249, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1489, 97, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1490, 97, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1493, 97, 65)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1494, 97, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1495, 97, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1496, 97, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1497, 97, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1498, 97, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1507, 245, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1509, 143, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1510, 143, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1512, 143, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1514, 143, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1517, 143, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1521, 143, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1530, 143, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1542, 143, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1543, 143, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1544, 143, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1545, 143, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1547, 143, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1550, 143, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1552, 251, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1553, 251, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1556, 253, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1557, 253, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1558, 253, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1561, 253, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1617, 259, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1618, 259, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1619, 259, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1620, 259, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1621, 259, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1622, 259, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1623, 259, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1624, 259, 45)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1625, 259, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1626, 259, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1627, 259, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1628, 114, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1631, 261, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1632, 261, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1633, 5, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1654, 260, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1655, 1, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1656, 2, 7)
GO
print 'Processed 300 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1657, 144, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1658, 144, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1659, 144, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1661, 256, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1662, 256, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1663, 263, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1664, 162, 62)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1665, 162, 65)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1666, 205, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1667, 194, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1668, 194, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1669, 194, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1675, 264, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1678, 264, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1683, 249, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1691, 262, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1692, 262, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1694, 263, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1695, 263, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1696, 263, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1697, 263, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1698, 263, 54)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1705, 264, 56)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1712, 264, 78)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1713, 214, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1714, 243, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1715, 243, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1716, 243, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1718, 206, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1719, 206, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1720, 206, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1721, 206, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1723, 206, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1724, 206, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1725, 201, 53)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1726, 249, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1731, 201, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1734, 195, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1735, 195, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1736, 195, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1737, 194, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1738, 194, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1739, 4, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1740, 4, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1741, 50, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1742, 11, 58)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1743, 1, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1744, 196, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1745, 196, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1746, 3, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1747, 85, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1748, 197, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1749, 148, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1750, 243, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1751, 243, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1752, 227, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1753, 227, 40)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1754, 227, 42)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1755, 249, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1756, 237, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1757, 237, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1758, 241, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1759, 241, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1760, 241, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1, 1, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2, 1, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3, 2, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (4, 2, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (6, 2, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (7, 2, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (8, 2, 20)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (10, 2, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (11, 2, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (12, 2, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (13, 2, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (14, 3, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (15, 3, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (16, 3, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (18, 5, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (19, 5, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (21, 6, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (22, 6, 28)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (23, 6, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (24, 6, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (25, 6, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (26, 7, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (28, 8, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (29, 8, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (31, 9, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (32, 9, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (33, 9, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (34, 9, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (38, 10, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (42, 10, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (43, 10, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (44, 10, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (45, 10, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (46, 10, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (48, 10, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (49, 10, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (50, 10, 39)
GO
print 'Processed 400 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (53, 11, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (54, 11, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (55, 11, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (56, 11, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (57, 11, 31)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (58, 11, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (63, 12, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (64, 12, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (65, 12, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (67, 12, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (69, 12, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (70, 12, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (71, 13, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (72, 14, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (73, 14, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (74, 14, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (75, 14, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (76, 14, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (77, 14, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (78, 15, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (79, 15, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (80, 15, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (81, 16, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (82, 16, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (89, 18, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (90, 18, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (91, 18, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (92, 18, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (93, 18, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (94, 19, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (95, 19, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (97, 17, 9)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (98, 17, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (99, 17, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (100, 20, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (102, 20, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (103, 21, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (104, 21, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (105, 22, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (106, 22, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (107, 22, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (108, 22, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (109, 22, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (110, 23, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (111, 23, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (112, 24, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (113, 25, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (116, 25, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (117, 25, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (118, 25, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (119, 25, 31)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (120, 25, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (121, 26, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (122, 26, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (123, 27, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (125, 27, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (126, 28, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (127, 28, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (128, 28, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (129, 28, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (130, 28, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (131, 28, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (132, 29, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (133, 29, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (134, 29, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (135, 29, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (136, 29, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (137, 29, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (138, 30, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (141, 31, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (142, 31, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (143, 31, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (144, 31, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (145, 31, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (146, 272, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (147, 272, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (148, 272, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (149, 272, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (150, 272, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (151, 272, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (152, 272, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (153, 272, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (157, 33, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (159, 33, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (160, 33, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (162, 34, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (163, 34, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (164, 35, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (165, 36, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (166, 36, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (167, 36, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (169, 36, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (170, 37, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (171, 38, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (172, 38, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (173, 38, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (174, 39, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (177, 40, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (178, 41, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (179, 41, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (180, 41, 26)
GO
print 'Processed 500 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (181, 41, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (186, 42, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (187, 42, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (188, 42, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (190, 42, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (191, 42, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (192, 43, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (193, 43, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (194, 43, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (195, 43, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (196, 43, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (197, 43, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (198, 43, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (199, 43, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (200, 43, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (201, 43, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (202, 43, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (209, 44, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (211, 44, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (214, 44, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (217, 44, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (220, 45, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (221, 46, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (224, 47, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (225, 47, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (226, 47, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (227, 48, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (228, 48, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (229, 49, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (230, 49, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (231, 49, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (232, 49, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (233, 50, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (234, 51, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (236, 51, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (237, 51, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (238, 51, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (239, 51, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (240, 51, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (241, 51, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (242, 51, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (244, 52, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (249, 52, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (250, 52, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (253, 53, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (254, 53, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (256, 54, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (259, 56, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (260, 57, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (261, 57, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (262, 58, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (263, 58, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (264, 58, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (265, 58, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (266, 58, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (267, 58, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (268, 59, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (269, 59, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (271, 17, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (272, 60, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (273, 61, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (274, 62, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (275, 63, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (277, 64, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (278, 64, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (280, 64, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (281, 64, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (282, 65, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (283, 65, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (287, 65, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (288, 65, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (289, 65, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (290, 65, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (291, 65, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (292, 65, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (293, 66, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (295, 67, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (296, 68, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (297, 68, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (298, 69, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (299, 70, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (301, 70, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (302, 71, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (303, 71, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (304, 71, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (305, 72, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (306, 73, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (309, 75, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (310, 76, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (311, 77, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (312, 77, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (313, 77, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (314, 77, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (315, 77, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (316, 77, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (319, 79, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (320, 80, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (321, 80, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (322, 80, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (323, 80, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (325, 80, 24)
GO
print 'Processed 600 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (326, 80, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (327, 80, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (328, 80, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (329, 80, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (330, 80, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (331, 81, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (332, 81, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (333, 81, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (334, 81, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (335, 81, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (336, 82, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (337, 82, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (338, 83, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (339, 83, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (340, 83, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (341, 84, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (347, 85, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (349, 85, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (350, 85, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (351, 85, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (353, 86, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (354, 86, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (355, 86, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (356, 86, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (357, 86, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (359, 87, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (360, 87, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (361, 87, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (362, 87, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (363, 88, 38)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (364, 89, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (365, 89, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (366, 89, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (367, 89, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (371, 90, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (374, 91, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (375, 91, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (376, 91, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (377, 91, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (379, 91, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (380, 91, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (381, 91, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (393, 93, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (397, 94, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (398, 94, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (399, 94, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (402, 95, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (403, 95, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (404, 96, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (405, 97, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (407, 97, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (408, 97, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (409, 97, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (410, 97, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (411, 97, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (413, 97, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (414, 97, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (415, 97, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (416, 97, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (417, 97, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (418, 97, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (419, 97, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (420, 97, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (421, 98, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (422, 98, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (423, 99, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (424, 99, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (425, 99, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (426, 99, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (427, 99, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (428, 99, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (429, 99, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (430, 99, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (431, 99, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (432, 99, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (436, 100, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (437, 101, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (438, 101, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (439, 101, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (440, 101, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (441, 101, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (442, 102, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (443, 102, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (444, 102, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (446, 103, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (447, 103, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (448, 103, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (449, 104, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (450, 105, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (451, 105, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (452, 105, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (453, 105, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (454, 105, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (455, 105, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (456, 105, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (457, 105, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (458, 105, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (459, 105, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (460, 106, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (461, 107, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (462, 108, 3)
GO
print 'Processed 700 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (463, 108, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (464, 108, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (465, 108, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (466, 109, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (467, 109, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (468, 109, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (469, 109, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (470, 109, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (471, 109, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (475, 111, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (476, 111, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (477, 111, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (478, 112, 40)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (479, 113, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (480, 113, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (481, 113, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (482, 114, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (483, 114, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (484, 114, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (487, 114, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (488, 114, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (489, 114, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (490, 114, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (491, 114, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (492, 114, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (493, 114, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (494, 115, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (495, 116, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (496, 117, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (497, 117, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (498, 118, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (499, 118, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (500, 118, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (502, 118, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (503, 118, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (504, 118, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (505, 119, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (506, 119, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (508, 120, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (509, 120, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (510, 121, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (511, 121, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (512, 121, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (513, 122, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (514, 122, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (515, 122, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (516, 122, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (517, 123, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (518, 123, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (519, 123, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (520, 124, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (521, 124, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (522, 124, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (523, 124, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (524, 124, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (525, 124, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (526, 124, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (527, 124, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (528, 125, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (529, 126, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (530, 126, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (534, 127, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (535, 127, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (536, 127, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (537, 127, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (538, 127, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (539, 128, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (540, 128, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (541, 128, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (542, 129, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (543, 129, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (545, 130, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (546, 130, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (547, 130, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (548, 131, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (549, 131, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (550, 131, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (551, 131, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (553, 131, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (554, 131, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (555, 131, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (556, 131, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (557, 131, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (558, 131, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (559, 132, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (560, 132, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (561, 133, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (562, 133, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (563, 133, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (566, 133, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (571, 134, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (572, 134, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (573, 135, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (574, 136, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (575, 136, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (577, 136, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (578, 136, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (579, 136, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (580, 136, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (581, 136, 20)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (582, 136, 21)
GO
print 'Processed 800 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (583, 136, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (584, 136, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (585, 136, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (586, 136, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (587, 136, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (588, 136, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (589, 136, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (590, 136, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (591, 136, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (592, 136, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (593, 137, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (594, 137, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (595, 137, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (596, 137, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (597, 137, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (598, 137, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (599, 137, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (600, 137, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (601, 137, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (602, 138, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (603, 138, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (604, 138, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (605, 138, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (606, 138, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (607, 139, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (608, 140, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (609, 140, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (620, 142, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (621, 143, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (622, 143, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (624, 143, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (625, 143, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (626, 143, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (627, 143, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (628, 143, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (629, 143, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (631, 144, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (632, 144, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (633, 144, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (634, 144, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (635, 144, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (636, 144, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (637, 144, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (638, 144, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (639, 144, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (641, 144, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (642, 144, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (643, 144, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (644, 144, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (645, 144, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (646, 144, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (647, 144, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (649, 144, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (650, 145, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (652, 145, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (653, 145, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (654, 145, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (655, 145, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (656, 145, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (657, 146, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (658, 146, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (659, 14, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (662, 77, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (664, 114, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (665, 114, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (666, 4, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (667, 6, 38)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (668, 136, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (669, 136, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (670, 136, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (680, 7, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (681, 20, 45)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (682, 20, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (683, 28, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (684, 28, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (685, 28, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (687, 137, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (688, 137, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (689, 143, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (690, 143, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (694, 87, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (695, 43, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (696, 96, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (697, 11, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (698, 11, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (700, 88, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (701, 88, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (707, 55, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (710, 130, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (714, 12, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (715, 147, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (716, 147, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (717, 147, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (718, 147, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (719, 147, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (720, 147, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (722, 148, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (723, 148, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (724, 148, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (725, 148, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (726, 148, 24)
GO
print 'Processed 900 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (727, 148, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (728, 148, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (729, 148, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (730, 148, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (731, 148, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (734, 149, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (738, 149, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (739, 149, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (745, 150, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (746, 150, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (747, 150, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (748, 150, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (749, 150, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (750, 151, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (751, 151, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (752, 151, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (753, 151, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (754, 152, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (755, 152, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (756, 152, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (757, 28, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (758, 45, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (759, 68, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (760, 68, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (761, 68, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (763, 154, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (764, 154, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (765, 154, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (766, 154, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (767, 154, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (768, 154, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (769, 113, 49)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (770, 23, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (771, 23, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (772, 23, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (773, 23, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (774, 23, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (775, 23, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (776, 23, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (777, 50, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (780, 155, 49)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (781, 120, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (782, 133, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (783, 77, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (784, 83, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (785, 109, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (786, 111, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (787, 111, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (788, 111, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (789, 102, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (790, 154, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (791, 157, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (792, 159, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (793, 159, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (794, 160, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (795, 160, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (796, 161, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (797, 161, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (798, 161, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (799, 161, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (800, 161, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (801, 161, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (802, 161, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (803, 161, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (804, 161, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (805, 161, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (806, 161, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (807, 162, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (808, 162, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (809, 162, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (810, 162, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (811, 162, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (814, 51, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (816, 163, 10)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (817, 163, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (818, 163, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (819, 163, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (820, 164, 10)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (821, 141, 45)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (824, 148, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (825, 88, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (828, 166, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (830, 163, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (831, 88, 20)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (832, 50, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (833, 167, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (834, 162, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (835, 154, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (836, 168, 23)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (837, 120, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (838, 166, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (839, 169, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (840, 169, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (842, 144, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (843, 53, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (844, 166, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (846, 170, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (847, 166, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (848, 171, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (849, 54, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (850, 172, 24)
GO
print 'Processed 1000 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (851, 172, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (852, 172, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (853, 166, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (854, 166, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (855, 88, 28)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (856, 120, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (857, 120, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (858, 110, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (859, 110, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (860, 110, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (862, 120, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (863, 79, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (864, 90, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (865, 65, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (867, 120, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (868, 166, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (869, 163, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (870, 120, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (872, 120, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (873, 164, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (874, 173, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (875, 173, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (876, 173, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (877, 173, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (878, 173, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (879, 173, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (880, 173, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (881, 173, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (882, 127, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (883, 127, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (884, 127, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (885, 174, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (886, 174, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (887, 175, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (888, 175, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (889, 175, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (890, 175, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (891, 175, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (892, 175, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (893, 175, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (894, 175, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (895, 175, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (898, 176, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (899, 176, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (900, 176, 5)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (901, 176, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (902, 176, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (903, 176, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (904, 177, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (905, 177, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (906, 177, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (907, 2, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (908, 2, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (909, 2, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (910, 2, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (911, 2, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (912, 2, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (913, 178, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (914, 178, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (915, 178, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (916, 178, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (917, 162, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (918, 162, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (919, 162, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (920, 162, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (921, 162, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (922, 91, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (923, 91, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (924, 91, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (925, 14, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (926, 14, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (927, 14, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (928, 14, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (929, 14, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (930, 14, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (931, 14, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (932, 14, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (933, 171, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (934, 171, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (935, 171, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (937, 171, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (938, 171, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (939, 171, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (940, 171, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (941, 171, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (942, 80, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (943, 80, 20)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (944, 80, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (945, 80, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (946, 80, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (947, 73, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (948, 179, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (949, 180, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (950, 180, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (951, 180, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (952, 180, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (953, 60, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (954, 81, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (955, 81, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (956, 81, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (957, 81, 26)
GO
print 'Processed 1100 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (958, 81, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (959, 181, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (960, 181, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (961, 182, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (962, 182, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (963, 182, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (964, 182, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (965, 75, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2682, 349, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2683, 349, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2686, 350, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2694, 352, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2703, 352, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2705, 352, 86)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2707, 348, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2708, 354, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2709, 354, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2710, 354, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2711, 354, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2712, 313, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2714, 355, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2715, 355, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2718, 355, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2717, 355, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2719, 356, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2720, 356, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2723, 357, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2724, 357, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2725, 357, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2726, 357, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2727, 357, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2728, 357, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2729, 357, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2730, 357, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2731, 357, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2732, 65, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2733, 65, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2734, 65, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2736, 65, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2737, 65, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2738, 65, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2739, 65, 65)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2741, 65, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2746, 358, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2754, 361, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2755, 361, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2756, 361, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2758, 362, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2762, 363, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2763, 364, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2764, 364, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2766, 366, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2767, 366, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2768, 366, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2769, 366, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2772, 284, 64)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2773, 369, 64)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2777, 368, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2778, 249, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2780, 368, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2781, 368, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2783, 368, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2784, 368, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2786, 130, 64)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2792, 372, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2793, 373, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2794, 372, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2795, 372, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2796, 372, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2798, 249, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2799, 372, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2800, 372, 56)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2801, 100, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2802, 374, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2803, 374, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2804, 374, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2805, 375, 74)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2806, 375, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2807, 375, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2808, 375, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2809, 375, 5)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2812, 375, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2813, 375, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2815, 376, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2818, 377, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2820, 377, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2821, 376, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2823, 379, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2824, 379, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2825, 379, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2827, 379, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2828, 379, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2829, 379, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2830, 379, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2834, 380, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2835, 381, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2849, 381, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2856, 382, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2859, 382, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2861, 382, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2862, 382, 32)
GO
print 'Processed 1200 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2864, 382, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2865, 382, 65)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2868, 380, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2869, 380, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2870, 383, 88)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2871, 384, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2873, 384, 59)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2875, 385, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2876, 385, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2877, 385, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2878, 386, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2886, 266, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2893, 266, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2895, 266, 56)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2896, 266, 83)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2897, 266, 20)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2901, 266, 64)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2902, 266, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2903, 266, 31)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2904, 266, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2908, 266, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2909, 387, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2910, 387, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2911, 387, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2912, 387, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2913, 387, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2914, 387, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2915, 387, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2916, 387, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2917, 387, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2918, 387, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2919, 387, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2920, 387, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2921, 387, 82)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2922, 387, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2927, 121, 82)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2928, 388, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2929, 388, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2930, 388, 74)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2931, 388, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2932, 388, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2933, 388, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2934, 388, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2935, 388, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2936, 388, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2937, 388, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2939, 388, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2940, 389, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2941, 389, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2942, 389, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2944, 389, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2945, 389, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2947, 389, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2948, 390, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2950, 391, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2951, 390, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2952, 390, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2955, 392, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2958, 326, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2960, 326, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2961, 392, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2964, 392, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2965, 392, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2966, 392, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2967, 391, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2969, 391, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2970, 391, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2978, 393, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2989, 394, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2992, 253, 57)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2994, 395, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2996, 395, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2998, 395, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3000, 395, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3002, 396, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3003, 396, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3004, 396, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3005, 396, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3006, 396, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3007, 396, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3008, 396, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3009, 388, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3010, 396, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3012, 231, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3013, 397, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3014, 397, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3015, 397, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3016, 397, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3017, 397, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3019, 97, 83)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3020, 97, 62)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3024, 398, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3025, 398, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3026, 398, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3027, 398, 46)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3028, 398, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3029, 398, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3031, 398, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3032, 398, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3033, 398, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3034, 399, 26)
GO
print 'Processed 1300 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3036, 400, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3040, 398, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3042, 398, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3047, 401, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3054, 402, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3055, 402, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3056, 79, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3057, 403, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3059, 404, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3061, 405, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3063, 406, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3065, 406, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3066, 406, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3067, 406, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3068, 406, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3069, 406, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3070, 406, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3073, 207, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3074, 407, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3076, 407, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3079, 407, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3081, 407, 82)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3083, 408, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3086, 409, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3088, 409, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3091, 410, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3092, 410, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3093, 410, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3095, 410, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3096, 394, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3098, 394, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3099, 394, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3101, 394, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3102, 394, 38)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3103, 394, 78)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3105, 412, 62)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3106, 412, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3107, 42, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3108, 412, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3110, 412, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3111, 42, 53)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3112, 42, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3113, 42, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3114, 42, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3115, 42, 62)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3116, 413, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3118, 413, 85)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3119, 412, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3120, 412, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3123, 414, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3124, 414, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3125, 414, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3127, 414, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3130, 414, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3132, 414, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3133, 414, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3134, 414, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3135, 414, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3136, 412, 93)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3137, 412, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3138, 412, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3139, 412, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3147, 297, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3148, 297, 83)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3149, 297, 93)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3152, 416, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3153, 416, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3154, 416, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3156, 416, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3157, 416, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3159, 415, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3160, 415, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3161, 415, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3162, 415, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3163, 415, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3164, 415, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3165, 388, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3166, 418, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3167, 418, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3169, 419, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3170, 419, 82)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3179, 19, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3181, 420, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3182, 19, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1764, 241, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1765, 241, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1767, 198, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1768, 198, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1769, 198, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1770, 198, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1771, 198, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1772, 198, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1773, 202, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1774, 93, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1775, 93, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1776, 199, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1777, 200, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1778, 106, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1779, 66, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1780, 203, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1781, 203, 28)
GO
print 'Processed 1400 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1782, 203, 23)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1783, 203, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1784, 54, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1785, 204, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1786, 204, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1787, 25, 61)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1788, 206, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1789, 135, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1790, 135, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1791, 135, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1792, 84, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1793, 84, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1794, 84, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1795, 39, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1796, 39, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1797, 39, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1798, 116, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1799, 116, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1800, 116, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1801, 156, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1802, 156, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1803, 156, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1804, 156, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1805, 37, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1806, 37, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1807, 37, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1808, 207, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1809, 207, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1810, 207, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1811, 207, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1812, 207, 65)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1813, 208, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1814, 209, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1815, 210, 61)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1816, 210, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1817, 192, 23)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1819, 94, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1820, 220, 61)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1821, 220, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1822, 220, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1823, 220, 31)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1824, 220, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1825, 118, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1826, 118, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1827, 118, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1828, 118, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1829, 242, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1830, 242, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1831, 52, 60)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1832, 52, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1833, 33, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1834, 265, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1836, 242, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1837, 242, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1838, 242, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1839, 127, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1840, 127, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1841, 127, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1842, 242, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1844, 242, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1845, 242, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1846, 30, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1847, 30, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1848, 30, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1849, 125, 23)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1850, 125, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1851, 10, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1852, 123, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1853, 123, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1854, 123, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1855, 211, 61)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1856, 211, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1857, 211, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1858, 211, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1859, 211, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1860, 211, 31)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1861, 211, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1862, 240, 61)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1863, 240, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1865, 240, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1866, 240, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1867, 74, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1868, 38, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1869, 38, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1871, 149, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1872, 149, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1873, 40, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1874, 40, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1875, 44, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1876, 44, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1877, 44, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1879, 46, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1880, 46, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1881, 215, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1882, 53, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1884, 53, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1885, 53, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1886, 130, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1887, 130, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1888, 130, 56)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1889, 48, 72)
GO
print 'Processed 1500 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1890, 216, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1891, 179, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1892, 45, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1893, 27, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1894, 142, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1895, 18, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1896, 142, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1897, 18, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1898, 18, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1899, 18, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1901, 18, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1902, 18, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1903, 18, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1904, 219, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1905, 219, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1906, 219, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1907, 218, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1908, 60, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1909, 26, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1910, 121, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1911, 121, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1912, 61, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1913, 61, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1914, 62, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1915, 62, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1916, 232, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1917, 232, 61)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1918, 232, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1919, 232, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1920, 232, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1921, 232, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1922, 232, 31)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1923, 115, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1924, 133, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1925, 115, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1926, 133, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1927, 133, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1928, 133, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1929, 133, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1930, 133, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1931, 133, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1932, 133, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1933, 234, 58)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1934, 234, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1935, 234, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1936, 49, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1937, 140, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1938, 63, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1939, 63, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1940, 20, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1941, 20, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1942, 147, 56)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1943, 239, 49)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1944, 239, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1945, 239, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1946, 239, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1947, 250, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1948, 67, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1949, 67, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1950, 222, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1951, 222, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1952, 68, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1953, 68, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1954, 69, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1955, 70, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1956, 139, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1957, 139, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1958, 76, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1959, 76, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1960, 76, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1961, 224, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1962, 224, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1963, 224, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1964, 34, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1965, 126, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1966, 2, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1967, 83, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1968, 239, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1969, 239, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1970, 239, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1971, 92, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1972, 239, 58)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1973, 238, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1975, 238, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1976, 238, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1977, 238, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1978, 89, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1979, 89, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1980, 89, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1981, 122, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1982, 122, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1984, 252, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1985, 252, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1986, 252, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1987, 90, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1988, 90, 23)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1989, 236, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1990, 236, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1991, 236, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1992, 236, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1993, 236, 72)
GO
print 'Processed 1600 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1994, 236, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1995, 236, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1996, 148, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1997, 87, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1998, 87, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1999, 119, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2000, 235, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2001, 235, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2002, 235, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2003, 235, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2004, 235, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2005, 235, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2006, 235, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2007, 235, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2008, 235, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2009, 235, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2010, 235, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2011, 146, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2012, 146, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2013, 128, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2014, 128, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2015, 230, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2016, 230, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2017, 233, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2018, 233, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2019, 233, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2020, 233, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2021, 233, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2022, 233, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2023, 233, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2024, 233, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2025, 233, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2026, 233, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2027, 233, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2028, 233, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2029, 233, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2030, 233, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2031, 233, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2032, 193, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2033, 193, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2034, 193, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2035, 193, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2036, 193, 65)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2037, 193, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2038, 228, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2039, 15, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2040, 15, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2041, 260, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2042, 261, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2043, 261, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2044, 261, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2045, 261, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2046, 261, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2047, 261, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2048, 261, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2049, 261, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2050, 261, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2051, 261, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2052, 261, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2053, 261, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2054, 261, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2055, 261, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2056, 261, 62)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2057, 261, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2058, 231, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2059, 231, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2060, 231, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2061, 231, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2062, 231, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2063, 226, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2064, 226, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2065, 226, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2066, 224, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2067, 224, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2068, 224, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2069, 185, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2070, 41, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2071, 41, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2072, 221, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2073, 221, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2074, 221, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2075, 221, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2076, 266, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2077, 266, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2078, 266, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2079, 266, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2080, 266, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2081, 266, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2082, 266, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2083, 85, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2084, 93, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2085, 93, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2086, 93, 61)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2087, 93, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2088, 93, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2089, 93, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2090, 93, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2091, 93, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2092, 93, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2093, 93, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2094, 93, 27)
GO
print 'Processed 1700 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2095, 93, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2096, 93, 56)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2097, 93, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2098, 93, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2099, 93, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2100, 93, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2101, 93, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2102, 93, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2103, 93, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2104, 93, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2105, 144, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2106, 93, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2107, 93, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2108, 234, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2109, 234, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2110, 234, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2111, 234, 64)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2112, 234, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2113, 234, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2114, 234, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2115, 234, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2116, 234, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2117, 234, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2118, 234, 60)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2119, 234, 52)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2120, 117, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2122, 117, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2123, 267, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2124, 52, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2125, 52, 55)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2126, 52, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2127, 52, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2128, 52, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2130, 52, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2131, 52, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2132, 52, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2133, 52, 63)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2134, 52, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2135, 52, 42)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2136, 52, 64)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2137, 117, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2138, 266, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2139, 184, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2140, 268, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2141, 268, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2142, 268, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2143, 268, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2144, 268, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2145, 268, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2146, 268, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2147, 268, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2148, 268, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2149, 268, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2150, 268, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2523, 321, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2152, 268, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2153, 268, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2154, 268, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2155, 267, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2156, 267, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2157, 237, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2158, 269, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2159, 269, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2160, 269, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2161, 269, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2162, 269, 65)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2163, 270, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2164, 270, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2165, 270, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2166, 270, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2167, 270, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2168, 270, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2169, 271, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2170, 271, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2171, 272, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2172, 201, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2173, 201, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2174, 201, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2175, 201, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2176, 201, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2177, 201, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2178, 201, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2179, 201, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2180, 201, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2181, 201, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2182, 201, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2183, 201, 54)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2184, 229, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2185, 229, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2186, 64, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2187, 64, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2188, 64, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2189, 273, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2223, 273, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2191, 273, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2192, 273, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2193, 274, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2194, 274, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2195, 274, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2196, 274, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2197, 274, 30)
GO
print 'Processed 1800 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2198, 274, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2199, 274, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2200, 274, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2201, 274, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2202, 274, 5)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2203, 275, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2204, 244, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2205, 275, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2206, 275, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2207, 275, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2208, 181, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1761, 241, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1762, 241, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (1763, 241, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2212, 277, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2213, 277, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2214, 277, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2215, 277, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2216, 277, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2217, 278, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2218, 278, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2219, 278, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2220, 278, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2221, 278, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2222, 273, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2224, 273, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2225, 280, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2226, 279, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2228, 279, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2229, 279, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2227, 279, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2230, 279, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2231, 282, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2232, 282, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2233, 282, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2528, 198, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2235, 282, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2237, 282, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2239, 282, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2240, 282, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2244, 281, 63)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2246, 281, 79)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2248, 283, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2262, 182, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2264, 182, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2266, 182, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2315, 293, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2317, 293, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2319, 293, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2316, 293, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2320, 293, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2355, 296, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2375, 299, 56)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2368, 298, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2369, 298, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2385, 300, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2409, 287, 64)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2430, 309, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2530, 322, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2437, 308, 82)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2444, 308, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2447, 310, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2449, 310, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2451, 310, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2494, 177, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2498, 177, 75)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2502, 318, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2516, 320, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2531, 322, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2533, 322, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2537, 324, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2539, 324, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2550, 327, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2555, 328, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2560, 330, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2578, 331, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2579, 331, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2614, 337, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2671, 346, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2672, 346, 85)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2236, 282, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2238, 282, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2241, 282, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2242, 282, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2243, 282, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2245, 281, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2247, 283, 45)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2249, 283, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2250, 283, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2251, 283, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2252, 284, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2253, 284, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2254, 284, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2256, 182, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2522, 321, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2258, 182, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2259, 182, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2260, 182, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2261, 182, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2263, 182, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2265, 182, 35)
GO
print 'Processed 1900 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2267, 285, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2268, 285, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2269, 285, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2270, 285, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2271, 285, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2272, 285, 78)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2273, 286, 80)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2274, 286, 81)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2275, 286, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2276, 286, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2277, 286, 57)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2278, 286, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2280, 286, 65)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2281, 286, 74)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2279, 286, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2282, 287, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2284, 287, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2408, 249, 64)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2288, 287, 56)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2283, 287, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2410, 304, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2425, 306, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2448, 310, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2450, 310, 64)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2452, 310, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2456, 311, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2459, 307, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2460, 307, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2469, 284, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2471, 314, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2473, 313, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2475, 249, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2477, 313, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2478, 313, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2485, 315, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2486, 315, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2491, 317, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2492, 317, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2499, 177, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2510, 160, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2512, 7, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2513, 7, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2514, 7, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2517, 320, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2551, 327, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2588, 333, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2604, 226, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2658, 344, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2662, 344, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2663, 344, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2665, 344, 74)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2669, 327, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2426, 307, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2427, 307, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2428, 307, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2429, 307, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2441, 308, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2457, 311, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2470, 314, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2483, 315, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2484, 315, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2503, 318, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2524, 321, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2535, 323, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2549, 326, 83)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2556, 328, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2572, 49, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2574, 49, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2575, 49, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2576, 49, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2577, 49, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2595, 335, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2597, 226, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2598, 226, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2677, 348, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2678, 348, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2679, 348, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2681, 348, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2287, 287, 75)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2289, 287, 78)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2290, 287, 57)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2291, 288, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2292, 288, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2293, 288, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2295, 288, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2297, 288, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2296, 288, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2294, 288, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2298, 289, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2299, 289, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2300, 289, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2301, 289, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2302, 290, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2303, 290, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2304, 291, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2308, 291, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2309, 291, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2305, 291, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2307, 291, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2306, 291, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2310, 292, 72)
GO
print 'Processed 2000 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2311, 292, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2312, 292, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2525, 321, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2314, 292, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2318, 293, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2321, 293, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2322, 293, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2323, 293, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2324, 264, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2325, 288, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2326, 288, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2327, 288, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2328, 238, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2329, 218, 82)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2330, 295, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2331, 295, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2332, 294, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2333, 294, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2334, 294, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2337, 294, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2342, 294, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2346, 294, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2348, 294, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2349, 294, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2351, 294, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2352, 278, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2353, 278, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2347, 294, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2350, 294, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2335, 294, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2338, 294, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2339, 294, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2340, 294, 75)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2343, 294, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2344, 294, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2336, 294, 20)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2341, 294, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2345, 294, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2354, 206, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2356, 171, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2357, 297, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2358, 297, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2359, 297, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2360, 290, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2361, 290, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2362, 290, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2363, 290, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2364, 290, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2366, 290, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2367, 290, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2365, 290, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2370, 298, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2371, 298, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2372, 299, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2373, 299, 23)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2374, 299, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2376, 299, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2377, 300, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2378, 300, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2379, 300, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2382, 300, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2384, 300, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2380, 300, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2381, 300, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2383, 300, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2386, 300, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2387, 300, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2388, 300, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2390, 301, 20)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2391, 301, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2392, 301, 38)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2393, 301, 28)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2394, 301, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2396, 157, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2397, 157, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2398, 157, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2401, 302, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2402, 303, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2403, 303, 2)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2404, 303, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2405, 303, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2406, 303, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2407, 303, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2411, 304, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2412, 304, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2414, 305, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2416, 305, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2417, 305, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2389, 300, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2395, 301, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2399, 302, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2400, 302, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2413, 304, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2415, 305, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2418, 304, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2419, 52, 79)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2420, 306, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2421, 306, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2422, 249, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2423, 306, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2424, 306, 39)
GO
print 'Processed 2100 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2431, 309, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2433, 309, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2434, 309, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2435, 308, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2438, 308, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2440, 308, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2442, 308, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2443, 308, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2445, 310, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2446, 310, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2453, 310, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2454, 310, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2455, 310, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2458, 307, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2461, 312, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2462, 312, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2463, 312, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2464, 312, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2465, 312, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2466, 312, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2467, 312, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2468, 2, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2472, 313, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2474, 313, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2476, 313, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2479, 313, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2480, 104, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2481, 104, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2482, 104, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2487, 315, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2488, 316, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2489, 316, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2490, 316, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2493, 317, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2496, 177, 54)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2495, 177, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2497, 177, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2500, 318, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2501, 318, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2504, 319, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2505, 319, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2506, 319, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2507, 319, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2508, 319, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2509, 319, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2511, 7, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2515, 7, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2518, 320, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2520, 284, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2519, 284, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2521, 284, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2526, 321, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2527, 321, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2541, 324, 75)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2529, 322, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2532, 322, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2534, 323, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2536, 323, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2538, 324, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2540, 324, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2542, 325, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2543, 325, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2544, 325, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2545, 325, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2546, 325, 59)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2547, 325, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2548, 325, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2552, 327, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2553, 327, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2554, 327, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2557, 329, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2558, 329, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2559, 330, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2561, 330, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2582, 284, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2583, 333, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2584, 333, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2585, 333, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2586, 333, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2587, 333, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2589, 333, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2590, 334, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2591, 334, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2592, 334, 49)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2593, 334, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2594, 334, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2596, 335, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2608, 336, 53)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2606, 336, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2607, 336, 54)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2609, 336, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2599, 226, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2600, 226, 83)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2601, 226, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2602, 226, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2603, 226, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2605, 226, 84)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2610, 336, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2611, 336, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2612, 337, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2613, 337, 3)
GO
print 'Processed 2200 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2615, 337, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2616, 337, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2617, 337, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2618, 337, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2619, 337, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2620, 337, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2621, 337, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2622, 337, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2623, 337, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2624, 338, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2626, 338, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2627, 338, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2630, 338, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2625, 338, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2628, 338, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2629, 338, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2631, 338, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2632, 339, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2633, 339, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2634, 339, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2635, 339, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2636, 340, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2637, 340, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2638, 340, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2639, 340, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2640, 340, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2641, 340, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2642, 340, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2643, 342, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2647, 342, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2649, 341, 85)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2644, 342, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2645, 342, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2646, 342, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2648, 341, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2650, 341, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2651, 341, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2652, 341, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2653, 341, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2654, 341, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2657, 343, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2655, 343, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2656, 343, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2659, 249, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2660, 344, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2661, 344, 85)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2664, 344, 75)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2666, 148, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2668, 345, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2667, 148, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2747, 358, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2673, 346, 75)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2674, 346, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2675, 171, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2676, 348, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2680, 348, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2562, 2, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2563, 2, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2566, 3, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2568, 3, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2569, 3, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2570, 49, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2571, 49, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2573, 49, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2564, 2, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2565, 3, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2567, 3, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2580, 331, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2581, 332, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2684, 350, 20)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2685, 350, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2687, 348, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2688, 348, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2689, 351, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2690, 351, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2691, 351, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2692, 351, 85)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2698, 352, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2701, 352, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2693, 352, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2695, 352, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2696, 352, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2700, 352, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2704, 352, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2706, 352, 26)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2697, 352, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2699, 352, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2702, 352, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2750, 359, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2751, 359, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2765, 365, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2810, 375, 21)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2811, 375, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2814, 375, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2884, 266, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2971, 392, 10)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2973, 394, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2974, 394, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3011, 231, 83)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3045, 401, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3053, 402, 24)
GO
print 'Processed 2300 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3064, 406, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3090, 409, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3158, 417, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3168, 419, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2713, 355, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2716, 355, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2753, 360, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2845, 381, 60)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2848, 381, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2924, 388, 56)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2925, 388, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2990, 86, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3035, 399, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3043, 401, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3151, 415, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2721, 181, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2722, 36, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2735, 65, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2740, 65, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2744, 131, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2745, 358, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2787, 370, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2790, 371, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2816, 377, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2817, 377, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2819, 377, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2852, 382, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2853, 382, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2858, 382, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2879, 386, 13)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2885, 266, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2887, 266, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2888, 266, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2892, 249, 25)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2894, 266, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2898, 266, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2900, 266, 44)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2905, 266, 65)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2906, 266, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2907, 266, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2954, 392, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2956, 235, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2959, 326, 46)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2962, 392, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2975, 393, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2977, 393, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2979, 394, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2983, 394, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2984, 394, 50)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2987, 394, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2988, 394, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2991, 395, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2993, 253, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3058, 404, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3062, 405, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3075, 407, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3077, 407, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3078, 407, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3094, 410, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3109, 412, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3121, 414, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3141, 297, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3143, 297, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3155, 416, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2742, 348, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2743, 348, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2757, 362, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2759, 362, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2770, 363, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2788, 371, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2789, 371, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2791, 371, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2837, 381, 8)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2839, 381, 29)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2840, 381, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2841, 381, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2844, 381, 52)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2846, 381, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2847, 381, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2850, 381, 87)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2923, 388, 77)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2957, 235, 46)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2963, 242, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2968, 391, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2980, 394, 80)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2981, 394, 74)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2982, 394, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2985, 394, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2986, 394, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2995, 395, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2999, 395, 19)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3046, 401, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3049, 401, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3052, 401, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3104, 411, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3176, 19, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3180, 19, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2748, 359, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2749, 359, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2822, 378, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2881, 266, 39)
GO
print 'Processed 2400 total records'
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2882, 249, 61)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2883, 266, 61)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2889, 266, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2890, 266, 59)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2891, 266, 84)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2926, 388, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2997, 395, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3001, 395, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3021, 212, 34)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3022, 212, 62)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3023, 212, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3039, 400, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3044, 401, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3050, 401, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3071, 207, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3082, 408, 11)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3084, 408, 47)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3085, 408, 76)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3097, 394, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3122, 414, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3126, 414, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3129, 414, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3131, 414, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2752, 359, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2760, 362, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2761, 363, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2775, 368, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2776, 368, 24)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2797, 372, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2938, 388, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2949, 390, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2976, 393, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3117, 413, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3128, 414, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3140, 297, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3142, 297, 68)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3144, 297, 16)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3145, 297, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3146, 297, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3150, 297, 62)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2771, 367, 33)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2774, 369, 87)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2779, 368, 3)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2782, 368, 32)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2785, 368, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2836, 381, 7)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2838, 381, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2842, 381, 36)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2843, 381, 37)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2855, 382, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2857, 382, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2872, 384, 14)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2874, 384, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2880, 386, 54)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2946, 389, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3018, 397, 41)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3038, 400, 27)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3041, 398, 83)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3060, 404, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3072, 207, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3080, 407, 48)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3087, 409, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3089, 409, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3100, 394, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3171, 19, 1)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3172, 19, 4)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3173, 19, 6)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3174, 19, 15)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3175, 19, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3177, 19, 35)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3178, 19, 39)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2826, 379, 30)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2831, 379, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2832, 379, 72)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2833, 379, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2851, 382, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2854, 382, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2860, 382, 73)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2863, 382, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2866, 382, 66)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2867, 382, 70)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2899, 266, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2943, 389, 17)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2953, 390, 69)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (2972, 393, 22)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3030, 398, 71)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3048, 401, 67)
INSERT [dbo].[anuncio_categoria] ([codigo], [codigo_anunciante], [codigo_categoria]) VALUES (3051, 401, 69)
/****** Object:  Table [dbo].[anuncio]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[anuncio](
	[codigo] [int] NOT NULL,
	[codigo_cliente] [int] NULL,
	[cep] [varchar](20) NULL,
	[bairro] [varchar](100) NULL,
	[cidade] [varchar](200) NULL,
	[endereco] [varchar](300) NULL,
	[telefone] [varchar](50) NULL,
	[email] [varchar](300) NULL,
	[site] [varchar](400) NULL,
	[status] [int] NULL,
	[senha] [varchar](50) NULL,
	[acesso] [int] NULL,
	[descricao] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [idx_codigo] ON [dbo].[anuncio] 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_codigo_cliente] ON [dbo].[anuncio] 
(
	[codigo_cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (134, 134, N'134', N'Batel', N'Curitiba', N'Av N Sra Aparecida, 305, lj02', N'(41) 3342-2211 / 9155-9922', N'digital@stampaphoto.com.br', N'www.stampaphoto.com.br', 1, N'', 736, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (135, 135, N'135', N'Seminario', N'Curitiba', N'Rua Mj Alberto P Jorge, 214', N'(41) 3274-1460', N'alegriaecia@onda.com.br', N'www.alegriaeciabuffet.com.br', 1, N'', 6403, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (136, 136, N'136', N'Bairro Alto', N'Curitiba', N'Rua José de Oliveira Franco, 1913', N'(41) 3079-0713 / 8437-7883', N'susieventos@hotmail.com', N'www.susieventos.temnarede.com.br', 0, N'', 2727, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (137, 137, N'137', N'Cajuru', N'Curitiba', N'Av. Pref. Mauricio Fruet, 1.576', N'(41) 3365-0440 / 9164-7245', N'decore_in_festas@hotmail.com', N'www.decorein.temnarede.com.br', 0, N'', 1, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (138, 138, N'138', N'Fazendinha', N'Curitiba', N'Rua Viriato CorrÛa, 477', N'(41) 3288-8462/9624-4009', N'simone@casadossonhos.com', N'www.casadossonhos.com', 0, N'', 0, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (141, 141, N'141', N'Curitiba', N'Paraná ', N'', N'(41) 3266-0853/8842-9495', N'ulisses_pereira@yahoo.com.br', N'www.bartender.temnarede.com.br', 1, N'', 541, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (142, 142, N'142', N'Curitiba', N'Paraná ', N'', N'(41) 3257-2755 / 3257-5440', N'', N'www.veraarcenio.com.br', 1, N'', 1332, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (143, 143, N'143', N'Curitiba', N'Paraná ', N'(41) 3245-4391 / 8428-2659 /', N'9125-4316', N'ateliartfestas@hotmail.com', N'ateliartfestas.spaces.live.com', 1, N'', 16206, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (144, 144, N'144', N'Portão', N'Curitiba', N'Rua Itajuba, 269', N'(41) 3246-1149 / 9951-8153', N'contato@vivieventos.com.br', N'www.vivieventos.com.br', 1, N'', 23751, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (145, 145, N'145', N'Curitiba', N'Paraná ', N'', N'(41) 3081-4270 / 9945-4846', N'wvvidio@pop.com.br', N'www.wveventos.temnarede.com.br', 1, N'', 1667, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (146, 146, N'146', N'Curitiba', N'Paraná ', N'', N'(41) 3327-7815', N'megdoceart@yahoo.com.br', N'www.megdoce.temnarede.com.br', 0, N'', 4440, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (147, 147, N'147', N'Curitiba', N'Paraná ', N'', N'(41)3024-8428/9948-1357', N'fontedechocolate@divinafesta.com.br', N'www.rseixasfontedechocolate.com.br', 0, N'', 2033, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (148, 148, N'148', N'Portão', N'Curitiba', N'Rua Carlos Dietzsch, 455', N'(41)3402-9649/(41)8804-0125', N'reileao.festas@yahoo.com.br', N'www.reileaofestas.com.br', 1, N'', 26535, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (149, 149, N'149', N'CIC', N'Curitiba', N'Rua Pedro Gusso, 3114', N'(41) 3071-0189/8413-6735', N'criativafestas@criativafestas.net', N'www.criativafestas.net', 1, N'', 9819, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (154, 154, N'154', N'Uberaba', N'Curitiba', N'Rua Flávio Mariano Ribas, 253', N'(41) 3296-3567', N'duetorecepcoeseeventos@hotmail.com', N'www.duetoeventos.temnarede.com.br', 0, N'', 5294, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (156, 156, N'156', N'Bacacheri', N'Curitiba', N'Av. Pref. Erasto Gaertner, 1457', N'(41) 3023-8922', N'oogaboogafestas@gmail.com', N'www.oogabooga.com.br', 1, N'', 7421, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (159, 159, N'159', N'Novo Mundo', N'Curitiba', N'Av. Brasilia, 4990', N'(41) 3016-3931 / (41) 9229-5947', N'ballonfest@hotmail.com', N'www.ballonfest.spaces.live.com', 0, N'', 0, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (160, 160, N'160', N'Jardim Schaffer', N'Curitiba', N'Rua Francisco Schaffer, 333', N'(41) 3338-9810 / (41) 9184-3447', N'sandra.festas@terra.com.br', N'www.sandrafesta.temnarede.com.br', 1, N'', 6846, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (173, 173, N'173', N'Curitiba', N'Paraná ', N'', N'(41) 3242-0127 / 9228-6477', N'antuneseventos@yahoo.com.br', N'www.antuneseventos.temnarede.com.br', 0, N'', 0, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (175, 175, N'175', N'Xaxim', N'Curitiba', N'Rua Gabriel Frecceiro de Miranda, 941', N'(41) 30852461/9911-5262', N'comercial@gvfestaseeventos.com.br', N'www.gvfestaseeventos.com.br', 0, N'', 0, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (177, 177, N'177', N'Curitiba', N'Paraná', N'', N'(41) 3562-5025 / 9696-9644', N'simonelff05@gmail.com', N'oficinadasdelicias.fotosblogue.com', 0, N'', 1330, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (179, 179, N'179', N'Fotografia', N'Infantil', N'', N'(41) 8406-6682 / 3779-8707', N'fotografo@emannuelribeiro.com; emannuelribeiro@hotmail.com', N'www.emannuelribeiro.com ', 0, N'', 1876, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (181, 181, N'181', N'Pinheirinho', N'Curitiba', N'Rua Cid Marcondes de Albuquerque, 1917 ', N'(41) 3024-5651 / 9142-5938', N'alegrisfestas@hotmail.com', N'www.alegrisfestas.blogspot.com.br ', 1, N'', 8468, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (182, 182, N'182', N'Curitiba', N'Paraná ', N'', N'(41) 3354-2265 / 9605-5815', N'minha.festa@bol.com.br', N'minha.festa.nafoto.net', 1, N'', 11964, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (183, 183, N'183', N'Curitiba', N'Paraná ', N'', N'(41) 3521-7271 / 8401-3740 / 9616-0689', N'lacoseabracos@contato.com', N'www.lacoseabracos.temnarede.com.br', 1, N'', 26038, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (184, 184, N'184', N'Curitiba', N'Paraná ', N'', N'(41) 3016-2476', N'turisnew@terra.com.br', N'www.turisnew.temnarede.com.br', 1, N'', 196, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (185, 185, N'185', N'Curitiba', N'Paraná ', N'', N'(41) 9152-3535', N'fabi33cwb@hotmail.com', N'www.hollybabydecoracoes.blogspot.com', 0, N'', 6752, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (187, 187, N'187', N'São Miguel', N'Araucária', N'Rua João Mikosz,14', N'(41) 3643-1680 / 8815-6977', N'contato@harasjamamaca.com.br', N'www.harasjamamaca.com.br', 1, N'', 4990, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (188, 188, N'188', N'Bacacheri', N'Curitiba', N'Av. Erasto Gaetner, 829 Lj 01 ', N'(41) 3015-9715 / 3085-4110', N'sac@comemorare.com.br', N'www.comemorare.com.br', 1, N'', 3185, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (191, 191, N'191', N'Curitiba', N'Paraná', N'', N'(41) 3562-7912 / 9187-2659', N'josianesaqueti@yahoo.com.br', N'www.docesabor.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (192, 192, N'192', N'Guarituba', N'Piraquara', N'Rua Hartiwing Muller, 04', N'(41) 3668-0690/8815-8255', N'', N'www.casadosalgadocongelado.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (194, 194, N'194', N'Atuba', N'Colombo', N'Rua Abel Scuissiato, 1409', N'(41) 3562-3672 / 9187-6498', N'abcdafestacolombo@gmail.com', N'www.abcdafesta.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (216, 245, N'245', N'Curitiba', N'Paraná', N'', N'(41) 3362-0930 / 8804-7326', N'odizinha83@yahoo.com.br', N'www.butterflyarte.blogspot.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (217, 207, N'207', N'Curitiba', N'Paraná', N'', N'(41) 9931-2403 / 3026-5353', N'cantinhofashion@uol.com.br', N'www.cantinhofashion.wix.com/curitiba', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (218, 10, N'10', N'Curitiba ', N'Paraná', N'', N'(41) 8415-2506', N'trupe.da.festa@hotmail.com', N'www.trupedafesta.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (219, 208, N'208', N'Curitiba', N'Paraná', N'', N'(41)9931-2403/9137-0585/3026-5353', N'caravanadosbrinquedos@uol.com.br', N'caravanadosbrinquedo.wix.com/curitiba', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (220, 209, N'209', N'São Francisco', N'Curitiba', N'Rua Pres Carlos Cavalcanti, 623/Sl 2 ', N'(41) 3205-3620 / 4101-3640', N'contato@estudiocb.com.br', N'www.estudiocb.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (221, 210, N'210', N'Centro', N'Curitiba', N'Rua Barão do Cerro Azul, 499', N'(41) 3225-1410', N'contato@artemagiafestas.com.br', N'www.artemagiafestas.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (222, 211, N'211', N'Boa Vista', N'Curitiba', N'Rua Holanda, 1545', N'(41) 3077-7024', N'', N'www.terraencantadafestas.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (223, 212, N'212', N'Curitiba', N'Paraná', N'', N'(41) 3365-2284 ', N'celebraifestas10@hotmail.com', N'www.celebraifestas.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (224, 213, N'213', N'CIC', N'Curitiba', N'Rua Pedro Gusso, 3094', N'(41) 3327-3140', N'atendimento@coracaomae.com.br', N'www.coracaomae.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (225, 214, N'214', N'Mossunguê', N'Curitiba', N'Rodovia do Café, 1769', N'(41) 3373-1802', N'', N'www.criacaoeartestudio.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (226, 246, N'246', N'Orleans', N'Curitiba', N'Rua Antonio Portela, 06', N'(41) 3372-7434 / 9108-7608', N'dani@ateliecriar.com.br', N'www.ateliecriar.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (227, 215, N'215', N'Curitiba', N'Paraná', N'', N'(41)3266-1740/9608-3223', N'si_moon24@hotmail.com', N'www.djsimone.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (228, 241, N'241', N'Boa Vista', N'Curitiba', N'Rua Vicente Geronasso, 567', N'(41) 3354-7010 / 9174-1178', N'thathi-festas@hotmail.com', N'www.thathi-festas.eev.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (229, 240, N'240', N'Hauer', N'Curitiba', N'Rua São Bento 615', N'(41) 3278-7203 / 9961-3490', N'contato@tererefestas.com.br', N'www.tererefestas.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (230, 239, N'239', N'Santa Felicidade', N'Curitiba', N'Rua Domingos Strapasson, 620', N'(41) 3273-1244', N'contato@teatroparquedacrianca.com.br', N'www.parquedacrianca.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (231, 238, N'238', N'Bairro Alto', N'Curitiba', N'Rua Alberico Flores Bueno, 605', N'(41) 3209-6211 / 8410-6123', N'sonhosdefestas@gmail.com', N'www.sonhosdefestas.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (232, 252, N'252', N'Curitiba', N'Paraná', N'', N'(41) 3432-4871 / 9907-9523', N'scalasom@hotmail.com', N'www.scalasom.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (233, 237, N'237', N'Bom Retiro', N'Curitiba', N'Rua Emílio de Menezes, 1243', N'(41) 3336-1175 / 8400-7974', N'fabricadasfestas@ibest.com.br', N'www.rudifestas.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (234, 236, N'236', N'Curitiba', N'Paraná', N'', N'(41) 3238-6710 / 9944-3341', N'rosanafestasctba@hotmail.com', N'www.rosanafestas.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (235, 255, N'255', N'Curitiba', N'Paraná', N'Caricaturas para Eventos', N'(41) 9965-8058', N'robertocorreax@gmail.com', N'robertocorrea-x.blogspot.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (236, 235, N'235', N'Juvevê', N'Curitiba', N'Rua Rocha Pombo, 955', N'(41) 3044-4823', N'contato@pirilimfestas.com.br', N'www.pirilimfestas.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (237, 216, N'216', N'Curitiba', N'Paraná', N'', N'(41) 9631-1749 / 3205-6901', N'dj_eduardocorrea@hotmail.com', N'www.edueventos.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (238, 248, N'248', N'Curitiba', N'Paraná', N'', N'(41) 3265-8689 / 8408-6644', N'julianabernardo2@hotmail.com', N'www.eduardafestas.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (239, 217, N'217', N'Champagnat', N'Curitiba', N'Rua Marcelino Champagnat, 310', N'(41) 3079-7290', N'pauladealmeidalima@gmail.com', N'www.espacodonnachita.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (240, 234, N'234', N'Curitiba', N'Paraná', N'', N'(41) 3035-5480 / 8525-1097', N'hilarios.comediantes@hotmail.com', N'animacaofestashilarios.blogspot.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (241, 218, N'218', N'Fotografia', N'Filmagem', N'', N'(41) 3699-1255/9938-4350/8473-0659', N'fabio.koval@yahoo.com', N'www.fabiokoval.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (242, 233, N'233', N'Curitiba', N'Paraná', N'', N'(41) 3336-8463 / 8503-3895', N'tatiane@originalfestaseeventos.com.br', N'www.originalfestaseeventos.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (243, 219, N'219', N'Curitiba', N'Paraná', N'', N'(41) 3566-1435 / 9925-3498', N'lucidalva.pr@hotmail.com', N'www.facafesta.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (244, 220, N'220', N'Cristo Rei', N'Curitiba', N'Av São José 1127', N'(41) 3085-4110 / 3362-6350', N'festetii@festetii.com.br', N'www.festetii.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (245, 221, N'221', N'Curitiba', N'Paraná', N'', N'(41) 8458-4749 / 9918-0141', N'contato-festtaria@hotmail.com', N'www.festtaria.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (246, 232, N'232', N'Água Verde', N'Curitiba', N'Rua Dr Alexandre Gutierrez, 536', N'(41) 3018-1877', N'nudelmania@nudelmania.com.br', N'www.nudelmania.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (247, 249, N'249', N'Curitiba', N'Paraná', N'', N'(41) 3019-1383/8444-3333', N'contato@formalize.com.br', N'www.formalize.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (248, 257, N'257', N'Curitiba', N'Paraná', N'', N'(41) 3354-4101', N'nancifest@bol.com.br', N'www.nancifest.nafoto.net', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (249, 259, N'259', N'Centro', N'São José dos Pinhais', N'Rua Passos de Oliveira, 992', N'(41) 3398-0546', N'atendimento@multifesteventos.com', N'www.multifesteventos.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (250, 250, N'250', N'Jd Américas', N'Curitiba', N'Jd das Américas (41) 3014-6242', N'(41) 3027-1727', N'digital@fotowinner.com.br', N'www.fotowinner.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (251, 258, N'258', N'Curitiba', N'Paraná', N'', N'(41) 3027-4925', N'atendimento@mil-ideias.com', N'www.mil-ideias.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (252, 222, N'222', N'Curitiba', N'Paraná', N'', N'(41) 3364-5391 / 8411-8575', N'cynjarek@gmail.com', N'www.cynthiadoces.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (253, 223, N'223', N'Boa Vista', N'Curitiba', N'Rua Manoel S Dias Negrão, 1247', N'(41) 3077-9819', N'www.contato@temnarede.com.br', N'www.gla.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (254, 253, N'253', N'Rebouças', N'Curitiba', N'Rua 24 de maio, 1120', N'(41) 3076-7006', N'contato@happypanquecas.com.br', N'www.happypanquecas.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (255, 224, N'224', N'Curitiba', N'Paraná', N'', N'(41) 3345-0026 / 9668-1575', N'jaquebaloes.decorativa@ymail.com', N'www.jaquebaloes.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (321, 310, N'310', N'Curitiba', N'Paraná', N'', N'(41) 3263-4114 / 9660-9240', N'atelieaquarelamagica@gmail.com', N'www.atelieaquarelamagica.eev.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (257, 226, N'226', N'Curitiba', N'Paraná', N'', N'(41) 3252-8084 / 9603-7914', N'kataeventos@hotmail.com', N'www.kataeventos.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (258, 227, N'227', N'Curitiba', N'Paraná', N'', N'(41) 3387-8157 / 9907-8157', N'liapink74@bol.com.br', N'www.liapink.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (259, 193, N'193', N'Água Verde', N'Curitiba', N'Av Iguaçu, 4077', N'(41) 3342-2272 / 9806-4961', N'lollypop@onda.com.br', N'www.lollypopfestas.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (322, 311, N'311', N'Curitiba', N'Paraná', N'', N'(41) 8518-3385', N'ronald@ronaldpeixoto.com', N'http://www.ronaldpeixoto.com/blog', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (261, 231, N'231', N'Barreirinha', N'Curitiba', N'Rua Prof Guilherme Butler 1427/4/14', N'(41) 3354-8599 / 9652-6295', N'deshiling@yahoo.com.br', N'www.mariaaliceeventos.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (262, 230, N'230', N'Boqueirão', N'Curitiba', N'Rua Dr. Simão Kossobudski, 2.020', N'(41) 3286-8501 / 8405-4094 / 9654-3408', N'm_tfdavila@yahoo.com.br', N'www.marciadavila.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (263, 256, N'256', N'Curitiba', N'Paraná', N'', N'(41) 33228464', N'magofestaschampagnat@hotmail.com', N'www.magofestas.temnarede.com.br/', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (264, 260, N'260', N'Curitiba', N'Paraná', N'', N'(41) 3077-1686 / 9232-7903', N'magiaealegriabrinquedos@hotmail.com', N'www.magiaealegriabrinquedos.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (265, 261, N'261', N'Xaxim', N'Curitiba', N'Rua Francisco Derosso, 872, Lj 04', N'(41) 3095-2959', N'contato@masterfest.com.br', N'www.masterfest.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (266, 262, N'262', N'Curitiba', N'Paraná', N'', N'(41)3564-4722 / 9964-1184', N'juliolivotto@hotmail.com', N'www.giferbolos.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (267, 263, N'263', N'Lindoia', N'Curitiba', N'Rua Tolstoi, 196', N'(41) 3532-9464 ', N'contato@nildadias.com', N'www.nildadias.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (268, 264, N'264', N'Curitiba', N'Paraná', N'(41) 3042-0085 / 3049-5885', N'7818-0619 Nextel: 55*112*105523', N'contato@girodapizza.com.br', N'www.girodapizza.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (269, 243, N'243', N'Foto', N'Vídeo & Som', N'', N'(41) 3679-2171 / 8411-0582', N'faleconosco@wagnerbeauty.com.br', N'www.wagnerbeauty.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (272, 202, N'202', N'Curitiba', N'Paraná', N'', N'(41) 9917-1086', N'beatriz_moiana@hotmail.com', N'www.beatrizmoiana.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (273, 266, N'266', N'Fazendinha', N'Curitiba', N'Rua Frederico Lambertucci, 737', N'(41) 3604-1354 ', N'pinguinhokids@hotmail.com', N'www.pinguinho.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (274, 267, N'267', N'Curitiba', N'Parana', N'', N'(41) 3329-0484/ 9931-2403', N'cdbfestas@hotmail.com', N'www.cdbfestas.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (275, 268, N'268', N'Fazendinha', N'Curitiba', N'Rua Sargento Durval Gomes, 76', N'(41) 3239-3289 / 9637-6623', N'contato@legabi.com.br', N'www.legabi.com.br', 1, N'Andreia', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (276, 271, N'271', N'Uberaba', N'Curitiba ', N'Rua Júlio Wischral, 47 ', N'(41) 3376-9251/ 9925-3534 ', N'contato@cataventofest.com.br ', N'www.cataventofest.com.br ', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (277, 270, N'270', N'Portão ', N'Curitiba ', N'Rua Caetano Marchesini, 168 ', N'(41)9103-5225/8821-5575/9178-3373', N'salaogirassol@hotmail.com ', N'www.salaogirassol.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (278, 269, N'269', N'Centro ', N'S.J. dos Pinhais', N'Rua Coronel Luiz Victorino Ordine, 986', N'(41)3384-4804 ', N'lucianajacintodoces@gmail.com ', N'www.lucianajacinto.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (279, 272, N'272', N'Ahu', N'Curitiba', N'Av Anita Garibaldi, 1450', N'(41)3023-3130', N'loja@mariabalao.com.br', N'www.mariabalao.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (280, 273, N'273', N'Jd Flores', N'Colombo', N'Rua Juraci S. de Lima, 500', N'(41) 9997-4010 / 3354 7829', N'', N'www.chacaraprimeirodemaio.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (281, 229, N'229', N'Fazendinha', N'Curitiba', N'', N'(41) 3093-6308 / 9679-7101', N'contato@maniabuffet.com.br', N'www.maniabuffet.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (282, 274, N'274', N'Curitiba', N'Paraná', N'', N'(41) 3398-1342 / 9923-7462', N'buffetsiriolibanes@hotmail.com', N'www.buffetsiriolibanes.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (283, 275, N'275', N'Aniversários', N'Infantil', N'Casamentos - 15 Anos', N'(41) 9162-6116 / 8433-2787', N'eventualle@eventualle.com.br', N'www.eventualle.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (284, 276, N'276', N'CIC', N'Curitiba', N'kits festa', N'(41) 3246-0986 / 3327-3282', N'kitfestatruffadourada@hotmail.com', N'www.truffadourada.temnarede.com.br ', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (3, 3, N'3', N'Santa Felicidade', N'Curitiba', N'Rua Francisco Dallalibera, 883', N'(41) 3364-7146 / 9904-1756', N'arcadenobuffetinfantil@yahoo.com.br', N'www.arcadenoebuffet.com.br', 1, N'', 9261, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (6, 6, N'6', N'Centro', N'Curitiba', N'Rua Dr. Carlos de Carvalho, 42', N'(41) 3322-4043 / 3085-0516', N'armazempavanello@hotmail.com', N'www.armazempavanello.temnarede.com.br', 0, N'', 131, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (7, 7, N'7', N'Parolin', N'Curitiba', N'Rua Dr.Carvalho Chaves, 1.224', N'(41) 3027-6409', N'adorifestas@gmail.com', N'www.adorifestas.com.br', 1, N'', 7945, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (8, 8, N'8', N'Imbuial', N'Colombo', N'Estrada da Ribeira, Km 109, 510', N'(41) 9622-5782/9631-9520', N'chacarabetinardi@hotmail.com', N'www.betinardi.temnarede.com.br', 0, N'', 1084, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (11, 11, N'11', N'Curitiba', N'Paraná', N'', N'(41) 3276-3108/8418-8690', N'aladdin@aladdinfestas.com.br', N'www.aladdinfestas.com.br', 1, N'', 6653, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (12, 12, N'12', N'Jardim Social', N'Curitiba', N'Av. Nossa Sra. da Luz, 1593', N'(41) 3015-7520 / 9133-8625', N'duranfestas@hotmail.com', N'www.duranfestas.com.br', 1, N'', 5460, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (13, 13, N'13', N'Santa Candida', N'Curitiba', N'Rua Francisco Guilherme Bahr, 378', N'(41) 3256-3007 / 9611-0034', N'aleart@terra.com.br', N'www.aleartfestas.com.br', 0, N'', 774, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (14, 14, N'14', N'Taruma', N'Curitiba', N'Rua Eng. Antonio Batista Ribas, 428', N'(41) 3365-1141 / 8441-5220', N'animaniafestas@hotmail.com', N'www.animania.temnarede.com.br', 0, N'', 109, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (15, 15, N'15', N'Cajuru', N'Curitiba', N'Rua da Trindade, 219', N'(41) 3267-7737/8836-2515', N'luxorfestas@hotmail.com', N'www.luxorfestas.com.br', 1, N'', 10804, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (16, 16, N'16', N'Curitiba', N'Paraná', N'(41) 3267-8551 / 3267-4817', N'Cel.: 9927-6517', N'apnl1970@uol.com.br', N'www.anapaulabolos.com.br', 1, N'', 6803, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (17, 17, N'17', N'Curitiba', N'Paraná ', N'', N'(41) 3356-2142 / 9673-1576', N'tripoli.antonio@gmail.com', N'www.antoniocarlos.temnarede.com.br', 0, N'', 768, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (18, 18, N'18', N'Bairro Alto', N'Curitiba', N'Rua Rio Guaporé, 321', N'(41) 3367-7824 / 9623-4070', N'estilofestas@brturbo.com.br', N'www.estilofestas.temnarede.com.br', 1, N'', 13860, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (19, 19, N'19', N'São Marcos', N'S J dos Pinhais', N'Rua Sebastião Sperjon, 213', N'(41) 3382-3894 / 9104-1257', N'angelita@atelierfestaecia.com.br', N'www.atelierfestaecia.com.br', 1, N'', 37, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (20, 20, N'20', N'Colombo', N'Paraná ', N'', N'(41) 9178-7660 / 9718-3639', N'flairman-bartender@hotmail.com', N'www.flairman.temnarede.com.br', 1, N'', 1159, N'Bebidas / Drinks')
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (21, 21, N'21', N'Água Verde', N'Curitiba', N'Av. Iguaçu, 1745', N'(41) 3223-0100', N'anuarcharif@yahoo.com', N'www.collors.com.br', 0, N'', 0, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (22, 22, N'22', N'Jd. das Américas', N'Curitiba', N'Rua Araças, 99', N'(41) 3369-2471/9908-2758', N'aromadifesta@aromadifesta.com.br', N'www.aromadifesta.com.br', 1, N'', 13272, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (24, 24, N'24', N'Curitiba', N'Paraná', N'', N'(41) 3366-9369 / 9193-5448', N'beatriz.1000@hotmail.com', N'biabiebibi.blogspot.com', 1, N'', 4121, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (25, 25, N'25', N'Alto da XV', N'Curitiba', N'Rua Pe.Germano Mayer, 1147', N'(41) 3262-1000 / 3335-4444', N'bigfestas@terra.com.br', N'www.bigfestas.com', 1, N'', 15076, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (26, 26, N'26', N'Capão da Imbuia', N'Curitiba', N'Rua Ronald Jose Carboni, 318', N'(41) 3266-4001 / 9197-6007', N'festamagicactba@hotmail.com', N'www.festamagica.temnarede.com.br', 1, N'', 8594, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (27, 27, N'27', N'Vila Guaira', N'Curitiba', N'Rua Rio Grande do Norte, 1991', N'(41) 3333-9792', N'estacaofesta@hotmail.com.br', N'www.estacao.temnarede.com.br', 1, N'', 8821, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (30, 30, N'30', N'Prado Velho', N'Curitiba', N'Av Sen. Salgado Filho, 480', N'(41) 3334-1122', N'contato@buffetcomemorekids.com.br', N'www.buffetcomemorekids.com.br', 1, N'', 5803, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (31, 31, N'31', N'Curitiba', N'Paraná', N'', N'(41) 3085-7380 /  9175-8306', N'magicojetam@yahoo.com.br', N'www.magicojetam.com.br', 0, N'', 383, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (33, 33, N'33', N'Curitiba', N'Paraná ', N'', N'(41) 3209-9302 / 9637-0184', N'contato@cinefest.com.br', N'www.cinefest.com.br', 1, N'', 3283, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (34, 34, N'34', N'Jardim das Américas', N'Curitiba', N'Rua Benedicto Berillo Fangueiro, 243-B', N'(41) 3266-6266/9104-6266', N'crps@ig.com.br', N'www.jingleejajaco.temnarede.com.br', 0, N'', 2031, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (35, 35, N'35', N'Jardim Schaffer', N'Curitiba', N'Av Des Hugo Simas, 2071', N'(41) 3338-9929', N'fantasyfestas@brturbo.com.br', N'www.fantasyfesta.com.br', 0, N'', 0, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (36, 36, N'36', N'Água Verde', N'Curitiba', N'Rua Mons. Manoel Vicente, 1318', N'(41) 3329-2166/3039-2166', N'coresesabores@terra.com.br', N'www.buffetcoresesabores.com.br', 1, N'', 12972, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (37, 37, N'37', N'Batel', N'Curitiba', N'Rua Al. D.Pedro II, 750', N'(41) 3342-3864', N'contato@unidunitebuffet.com.br', N'www.unidunitebuffet.com.br', 1, N'', 8764, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (67, 67, N'67', N'Santa Felicidade', N'Curitiba', N'Rua Maria A. Zaramella Grande, 54', N'(41) 3273-3950', N'buffetfunjungle@hotmail.com', N'www.funjungle.com.br', 1, N'', 10173, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (68, 68, N'68', N'Jardim Social', N'Curitiba', N'Rua Puru, 293', N'(41) 3015-0513', N'gigaboom@gigaboom.com.br', N'www.gigaboom.com.br', 1, N'', 9555, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (69, 69, N'69', N'Curitiba ', N'Paraná', N'', N'(41) 3026-5322 / 9198-9196', N'giselegabardo9@yahoo.com.br', N'www.giselegabardo.com.br', 1, N'', 2225, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (70, 70, N'70', N'Ahú', N'Curitiba', N'Trav Rodolpho Rosenau, 90 ', N'(41) 3254-4033 / 8802-7924', N'', N'www.planetafestas2.temnarede.com.br', 0, N'', 9484, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (71, 71, N'71', N'Curitiba', N'Paraná ', N'', N'(41) 3079-5584/8802-7924', N'novabaloes@hotmail.com', N'www.novabaloes.temnarede.com.br', 0, N'', 639, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (72, 72, N'72', N'Curitiba', N'Paraná ', N'', N'(41) 3329-3712/9906-6910', N'gc_arte@pop.com.br', N'www.graziaarte.com.br', 0, N'', 3554, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (73, 73, N'73', N'Agua Verde', N'Curitiba', N'Av Iguaçu, 4077, lj 02', N'(41) 3085-0409/3092-0288', N'paraguildo@hotmail.com', N'www.megabaloes.temnarede.com.br', 0, N'', 2162, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (74, 74, N'74', N'Curitiba', N'Paraná ', N'', N'(41) 3653-4081/7813-6775', N'crepesabor@hotmail.com', N'www.buffetcrepesabor.com.br', 0, N'', 103, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (76, 76, N'76', N'Ahú', N'Curitiba', N'Av Anita Garibaldi, 1498', N'(41) 3014-3008', N'happylandbuffet@hotmail.com', N'www.happylandbuffet.com.br', 1, N'', 9148, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (77, 77, N'77', N'Jd Pedro Demeterco', N'Pinhais', N'Av. Jacob Macanhan, 201', N'(41) 3668-6495', N'harmonia@harmoniadasfestas.com.br', N'www.harmoniadasfestas.com.br', 1, N'', 13456, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (79, 79, N'79', N'Curitiba', N'Paraná ', N'', N'(41) 9258-5101', N'trevisart@gmail.com', N'www.trevisart.com.br', 1, N'', 2749, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (80, 80, N'80', N'Curitiba', N'Paraná ', N'Rua Des Hugo Simas, 3524', N'(41) 3338-8462/9201-1372', N'deliciaschvovo@yahoo.com.br', N'www.deliciasdavovo.temnarede.com.br', 1, N'', 7217, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (81, 81, N'81', N'Curitiba', N'Paraná', N'', N'(41) 3585-3065', N'', N'www.ratimbum.temnarede.com.br', 0, N'', 4573, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (82, 82, N'82', N'Água Verde', N'Curitiba', N'Rua Castro, 144', N'(41) 3024-1567/3016-6173', N'maisonbombom@gmail.com', N'www.maisonbombom.temnarede.com.br', 1, N'', 11679, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (83, 83, N'83', N'Hauer', N'Curitiba', N'Av: Marechal Floriano Peixoto nº 6824 - loja 01 e 02', N'(41) 3278-9299', N'lauritatortas@yahoo.com.br', N'www.lauritatortas.com.br', 1, N'', 1055, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (84, 84, N'84', N'Santa Felicidade', N'Curitiba', N'Rua Antonio Scorsin, 404', N'(41) 3085-1543 / 3372-5360', N'alegria-festa@hotmail.com', N'buffetimmaginare.nafoto.net', 0, N'', 2063, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (85, 85, N'85', N'Xaxim', N'Curitiba', N'Rua Francisco Derosso, 797,LJ 06/07', N'(41) 3014-9630', N'arco_festas@hotmail.com', N'www.arcoirisfestascuritiba.com.br', 1, N'', 12427, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (86, 86, N'86', N'Juvevê', N'Curitiba', N'Rua Alberto Bolliger, 754', N'(41) 4102-9496 / 3353-2267', N'alegria-festa@hotmail.com', N'www.qualifestas.com.br', 1, N'', 2122, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (87, 87, N'87', N'Juvevê', N'Curitiba', N'Rua Alberto Bolliger, 754', N'(41) 3085-1543 / 3372-5360', N'alegria-festa@hotmail.com', N'www.qualifestas.com.br', 1, N'', 3503, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (88, 88, N'88', N'Centro', N'Curitiba', N'Rua Cruz Machado, 530, lj01', N'(41) 3085-8530', N'armazemgiulianna@hotmail.com', N'www.armazemgiulianna.temnarede.com.br', 0, N'', 612, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (89, 89, N'89', N'Vila Izabel', N'Curitiba', N'Av.Agua Verde,2282', N'(41) 3016-5704  /  9827-8943', N'kelly_coelho@yahoo.com.br', N'eflog.net/sevenkids', 1, N'', 12212, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (90, 90, N'90', N'Curitiba', N'Paraná ', N'', N'(41) 3343-3941 / 7815-5182', N'salgadinhosdaju@gmail.com', N'www.salgadinhosdaju.com.br', 0, N'', 5187, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (92, 92, N'92', N'Curitiba', N'Paraná ', N'', N'(41) 3323-6999 / 9619-8184', N'contato@lequipecrepe.com.br ', N'www.lequipecrepe.com.br', 1, N'', 1360, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (93, 93, N'93', N'Curitiba', N'Paraná ', N'', N'(41) 3035-5480 / 8525-1097', N'arteavoada@arteavoadabaloes.com.br', N'www.arteavoadabaloes.com.br', 1, N'', 7391, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (94, 94, N'94', N'Umbará', N'Curitiba', N'Rua Angelo Gai, 1050', N'(41) 3348-1767', N'contato@chacarazontta.com.br', N'www.chacarazontta.com.br', 1, N'', 11985, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (95, 95, N'95', N'Portão', N'Curitiba', N'Rua Maria Gabardo Mendes, 278', N'(41) 3345-2222 / 9957-2927', N'hiphappyfestas@hiphappyfestas.com.br', N'www.hiphappyfestas.com.br', 1, N'', 6157, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (97, 97, N'97', N'Santa Felicidade ', N'Curitiba', N'Rua Felisberto Flore D''Orazio, 297-A', N'(41) 3364-8441 / 9919-6069', N'luaeleon@terra.com.br', N'www.luaeleon.com.br', 1, N'', 8796, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (99, 99, N'99', N'Curitiba', N'Paraná', N'', N'(41) 3527-6524/9134-6661', N'luizfestiva@gmail.com', N'www.festivafestas.com.br', 0, N'', 1277, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (100, 100, N'100', N'Cic', N'Curitiba', N'Rua Epaminondas Ribeiro, 1051', N'(41) 3347-2358 / 3569-4498', N'luizdecoracoes@hotmail.com', N'www.luizdecoracoes.temnarede.com.br', 1, N'', 2678, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (101, 101, N'101', N'Hauer', N'Curitiba', N'Rua Irmã Flavia Borlet, 451', N'(41) 3276-8148', N'luzdeluar@luzdeluar.com.br', N'www.luzdeluar.com.br', 1, N'', 15183, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (104, 104, N'104', N'Curitiba', N'Paraná ', N'', N'(41) 3387-3887 / 8819-7654', N'contato@clickartefotos.com.br', N'www.clickartefotos.com.br', 0, N'', 627, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (106, 106, N'106', N'Batel', N'Curitiba', N'Rua Gutemberg, 137', N'(41) 3233-0909/9614-4409', N'atendimento@beehappyeventos.com.br', N'www.beehappyeventos.com.br', 0, N'', 5174, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (110, 110, N'110', N'Curitiba', N'Paraná', N'', N'(41) 3246-0615 / 8881-9761', N'molekadafestas@hotmail.com', N'www.molekadafestas.com.br', 1, N'', 11110, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (112, 112, N'112', N'Ahú', N'Curitiba', N'Av Anita Garibaldi, 2602', N'(41) 3354-3392', N'contato@molinashair.com.br', N'www.molinashair.com.br', 1, N'', 462, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (113, 113, N'113', N'Mercês', N'Curitiba', N'Rua Brigadeiro Franco, 396', N'(41)3232-1099', N'bolinhas@mundomagicodasbolinhas.com.br', N'www.mundomagicodasbolinhas.com.br', 1, N'', 8963, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (114, 114, N'114', N'Água Verde', N'Curitiba', N'Rua Cel.José Gomes Amaral, 907 ', N'(41) 3363-4929 / 9141-4525', N'megdecor@gmail.com ', N'fotolog.terra.com.br/megadecor', 1, N'', 13922, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (115, 115, N'115', N'Água Verde', N'Curitiba', N'Rua Palmeiras, 545, Complem. 24', N'(41)3521-0877', N'oficinadobiscuit@hotmail.com', N'www.oficinadobiscuit.com.br', 0, N'', 41, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (116, 116, N'116', N'Mercês', N'Curitiba', N'Rua Cap. Virginio de O. Mello, 18', N'(41) 3338-8447', N'festejando@terra.com.br', N'www.buffetfestejando.com.br', 1, N'', 6967, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (117, 117, N'117', N'Boa Vista', N'', N'Curitiba - Paraná', N'(41) 9242-6808', N'contato@aromacriativo.com.br', N'www.aromacriativo.com.br', 0, N'', 4835, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (118, 118, N'118', N'Tarumã', N'Curitiba', N'Av Victor Ferreira do Amaral, 2.782', N'(41) 3076-6264', N'tuttifestas@hotmail.com', N'www.tuttifestaseventos.com.br', 1, N'', 17650, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (119, 119, N'119', N'Mercês', N'Curitiba', N'Rua Visc. do Rio Branco, 228', N'(41) 3232-2367', N'contato@puraimaginacao.com.br', N'www.puraimaginacao.com.br', 1, N'', 9512, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (121, 121, N'121', N'Curitiba', N'Paraná ', N'', N'(41) 4102-9476', N'mokwastudio@gmail.com', N'www.mokwa.com.br', 1, N'', 5039, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (122, 122, N'122', N'Colombo', N'Paraná', N'Rua Joaquim Rocha ,122 loja 4', N'(41) 3606-3482 / 9187-6498', N'regiane@servfesta.com.br', N'www.servfesta.com.br', 1, N'', 9184, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (123, 123, N'123', N'Curitiba', N'Paraná ', N'', N'(41) 3018-7930/9115-8622', N'contato@tocadopirilampo.com.br', N'www.tocadopirilampo.com.br', 1, N'', 6065, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (125, 125, N'125', N'Ahú', N'Curitiba', N'Av Anita Garibaldi, 1451', N'(41) 3252-0807 / 3252-0654', N'confeitariarosinha1@yahoo.com.br ', N'www.confeitariarosinha.com.br', 1, N'', 3451, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (126, 126, N'126', N'Sta. Felicidade', N'Curitiba', N'Rua Dr. Leão Mocelin, 140', N'(41) 3297-3396/9971-6467', N'', N'www.kantinho.temnarede.com.br', 1, N'', 7622, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (127, 127, N'127', N'Pinheirinho', N'Curitiba', N'Rua Orestes Codega, 380', N'(41) 3014-9843  / 9986-9106', N'comemore.datas@uol.com.br', N'www.comemoredatas.temnarede.com.br', 1, N'', 11596, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (128, 128, N'128', N'Cabral', N'Curitiba', N'Cel. Amazonas Marcondes, 53', N'(41) 3352-0359/3078-6927', N'sandra250571@hotmail.com', N'www.marshmallowdecoracoes.com.br', 1, N'', 17015, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (129, 129, N'129', N'Jardim das Américas', N'Curitiba', N'Rua Pedro Demeterco, 46', N'(41) 3667-2256 / 3266-9732', N'', N'www.kikofestas.temnarede.com.br/', 1, N'', 10482, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (130, 130, N'130', N'Curitiba', N'Paraná ', N'', N'(41) 3272-5738 / 8817-0721', N'sandra.s49@hotmail.com', N'www.docinhosecia.temnarede.com.br', 1, N'', 7382, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (131, 131, N'131', N'Santa Quitéria', N'Curitiba', N'Rua Major França Gomes, 1479', N'(41) 3274-7254/9986-0588', N'simone@magicfestas.com.br', N'www.magicfestas.com.br', 1, N'', 18299, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (132, 132, N'132', N'Curitiba', N'Paraná ', N'', N'(41) 3029-5884/9974-7037', N'arteemacucar@hotmail.com', N'arteacucar.blogspot.com', 0, N'', 2708, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (133, 133, N'133', N'Centro', N'Curitiba', N'Rua Alferes Poli, 1001', N'(41) 3029-8590/9153-2977', N'festas_festas@hotmail.com', N'www.festasefestas.temnarede.com.br', 1, N'', 10946, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (196, 196, N'196', N'Uberaba', N'Curitiba', N'Av Senador Salgado Filho, 3552', N'(41) 3598-0932 / 9181-0932', N'aquarelakidsbuffet@hotmail.com', N'www.aquarelakidsbuffet.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (197, 197, N'197', N'Curitiba', N'Paraná', N'', N'(41) 3049-1369 / 9934-2527', N'contato@aretefotografias.com.br', N'www.aretefotografias.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (198, 198, N'198', N'Campo Comprido', N'Curitiba', N'Rua Frei Livio Panizza, 145', N'(41) 3049-7894 / 9910-1078', N'debora@arteeeventos.com', N'www.arteeeventos.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (199, 199, N'199', N'Curitiba', N'Paraná ', N'', N'(41) 3366-0029 / 9963-0997 ', N'handapa@hotmail.com', N'www.arteempapel.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (200, 200, N'200', N'Curitiba', N'Paraná', N'', N'(41) 9916-0201', N'eliane6996@yahoo.com.br', N'www.surlaqualite.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (201, 2, N'2', N'Sta. Felicidade', N'Curitiba', N'Rua Francisco Dallalibera, 883 ', N'(41) 3274-0674 / 3364-7146 / 9904-1756', N'karin_festas@yahoo.com.br', N'www.karinfestas.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (202, 195, N'195', N'Seminário', N'Curitiba', N'Av Nossa Sra Aparecida 742A', N'(41) 3016-6789 / 3077-4123', N'contato@buffet123eja.com.br', N'www.buffet123eja.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (203, 4, N'4', N'Cristo Rei', N'Curitiba', N'Av Senador Souza Naves, 1586', N'(41) 3019-6647', N'abracadabra@abracadabrafesta.com.br', N'www.abracadabrafesta.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (204, 5, N'5', N'São Francisco', N'Curitiba', N'Rua Celestino Junior, 522', N'(41) 3024-8604', N'buffet@aconchegoeventos.com.br', N'www.aconchegoeventos.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (205, 50, N'50', N'Capão da Imbuia', N'Curitiba', N'Rua Octavio Schiavon, 276', N'(41) 3267-4164', N'salaoalgodaodoce@hotmail.com', N'www.algodaodoce.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (206, 1, N'1', N'Água Verde', N'Curitiba', N'Rua Prof. Assis Goncalves, 1195', N'(41) 3343-5363', N'amazingpointbuffet@yahoo.com.br', N'www.amazingpoint.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (207, 201, N'201', N'Centro', N'Curitiba', N'Rua Duque de Caxias, 433 loja 01 ', N'(41) 3359-7290 / 3618-9843', N'carelli.andrea@gmail.com', N'www.pingodemel.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (209, 203, N'203', N'Água Verde', N'Curitiba', N'Rua Petit Carneiro, 389', N'(41) 3342-4212', N'beringelados@terra.com.br', N'www.beringelados.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (210, 204, N'204', N'Barreirinha', N'Curitiba', N'Rua Lenira Maciel Ribas 717', N'(41) 3585-3618 / 9660-2584', N'bicudo_festas@hotmail.com', N'www.bicudofestas.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (211, 205, N'205', N'Curitiba', N'Paraná', N'', N'(41) 8401-3740 /9616 0689', N'boomballoonfestas@hotmail.com', N'www.boomballoon.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (212, 206, N'206', N'Curitiba', N'Paraná', N'', N'(41) 3030-3302 / 8401-5880', N'xx-mari@hotmail.com', N'www.brincadeiradecriancafesta.blogspot.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (213, 139, N'139', N'Ahú', N'Curitiba', N'Rua Alberto Foloni, 896', N'(41) 3024-4924', N'buffetguriguria@uol.com.br', N'www.guriguria.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (214, 244, N'244', N'Água Verde', N'Curitiba', N'Rua Petit Carneiro, 352', N'(41) 3018-1437 / 8493-8945', N'buffet_kids@hotmail.com', N'www.buffetkidscuritiba.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (215, 140, N'140', N'Capão da Imbuia', N'Curitiba', N'Rua Osmário de Lima, 457', N'(41) 3366-5753/9615-6286', N'salaopirlimpimpim@uol.com.br', N'www.buffetpirlimpimpim.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (38, 38, N'38', N'Bairro Alto', N'Curitiba', N'Rua José de Oliveira Franco, 1173', N'(41) 3238-3447 / 3026-8635', N'criartfestas@gmail.com', N'www.criart.temnarede.com.br', 1, N'', 14977, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (39, 39, N'39', N'Merces', N'Curitiba', N'Av Candido Hartmann,  936', N'(41) 3024-0878', N'buffetcentopeia@gmail.com', N'www.buffetcentopeia.com.br', 1, N'', 7015, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (40, 40, N'40', N'Ahú', N'Curitiba', N'Rua Alberto Folloni, 599', N'(41) 3018-5511', N'contato@curitiboom.com.br', N'www.curitiboom.com.br', 1, N'', 7915, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (41, 41, N'41', N'Xaxim', N'Curitiba', N'Rua Francisco Derosso, 2585 lj 1', N'(41) 3528-8612/3275-8662', N'fofolandia@pop.com.br', N'www.fofolandia.temnarede.com.br', 0, N'', 4573, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (42, 42, N'42', N'Atuba', N'Curitiba', N'Rua Huxley 907', N'(41) 3621-7794 / 9223-4499', N'danieli_op@hotmail.com', N'www.danifestas.com.br', 1, N'', 9676, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (44, 44, N'44', N'Curitiba', N'Paraná', N'', N'(41) 9953-0544', N'decore_arte@hotmail.com', N'www.decorearte.com.br', 1, N'', 6395, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (45, 45, N'45', N'Campo Comprido', N'Curitiba', N'Rua Nardy Muller da Costa, 695', N'(41) 3274-3435/9681-6460', N'espaco.original@yahoo.com.br', N'www.espacooriginal.temnarede.com.br', 1, N'', 14061, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (46, 46, N'46', N'Mercês', N'Curitiba', N'Rua Marcelino Champagnat, 122', N'(41) 3023-1803', N'divinafesta@divinafesta.com.br', N'www.divinafesta.com.br', 0, N'', 9080, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (47, 47, N'47', N'Curitiba', N'Paraná ', N'', N'(41) 3039-0114 / 9685-1885', N'rosangelacope@terra.com.br', N'www.doremi.temnarede.com.br', 0, N'', 3926, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (48, 48, N'48', N'Agua Verde', N'Curitiba', N'Rua José Cadilhe, 659', N'(41) 3014-6254 /  8415-5186', N'drikatrika@pop.com.br', N'www.drikatrika.com.br', 1, N'', 10807, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (49, 49, N'49', N'Sta. Felicidade', N'Curitiba', N'Rua Joao Reffo, 326', N'(41) 3364-8933', N'contato@pertuttifestas.com.br', N'www.pertuttifestas.com.br', 1, N'', 8329, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (51, 51, N'51', N'Curitiba', N'Paraná ', N'', N'(41) 3022-7356/3288-9140', N'maniabrinquedos@terra.com.br', N'www.maniabrinquedos.com.br', 1, N'', 4740, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (52, 52, N'52', N'Merces', N'Curitiba', N'Rua Fernando Simas, 1859', N'(41) 3335-5841 / 9902-1966', N'ciamambarte@ciamambarte.com.br', N'www.ciamambarte.com.br', 1, N'', 9118, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (53, 53, N'53', N'Curitiba', N'Paraná ', N'', N'(41) 3019-6543/9687-3164', N'docesurpresa@onda.com.br', N'www.docesurpresa.com.br', 0, N'', 7278, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (54, 54, N'54', N'Vila Oficinas', N'Curitiba', N'Rua Benedito Bley, 66', N'(41) 3267-1430/9165-5276', N'betifestas@hotmail.com', N'www.betifestas.com.br', 1, N'', 7428, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (55, 55, N'55', N'Curitiba', N'Paraná ', N'', N'(41) 3022-7971 / 9996-2133', N'crepepepe@hotmail.com', N'www.crepepepe.com.br', 0, N'', 374, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (56, 56, N'56', N'Fotografia', N'Filmagem', N'', N'(FIXO) 4106-3322 / (VIVO)9174-5154 ', N'emanuelalves7@hotmail.com', N'www.arteart.temnarede.com.br', 1, N'', 992, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (60, 60, N'60', N'Batel', N'Curitiba', N'Rua Rodrigues Alves, 179', N'(41) 3013-5069 / 9932-5667', N'buffetfelizcidade@yahoo.com.br', N'www.felizcidadefestas.com.br', 1, N'', 9917, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (61, 61, N'61', N'Água Verde', N'Curitiba', N'Rua Castro, 22', N'(41) 3342-4447', N'buffetfestapremium@gmail.com', N'www.festapremium.com.br', 1, N'', 12200, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (62, 62, N'62', N'Hugo Lange', N'Curitiba', N'Rua Pe Germano Mayer, 1776', N'(41) 3362-3246/3263-1335', N'contato@festacom.net', N'www.festacom.net', 1, N'', 9023, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (63, 63, N'63', N'Santa Felicidade', N'Curitiba', N'Rua Arthur Bindo, 17', N'(41) 3273-2672', N'contato@buffetfinafestas.com.br', N'www.buffetfinafestas.com.br', 1, N'', 9673, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (64, 64, N'64', N'Santa Quitéria', N'Curitiba', N'Rua Pretextato Taborda Ribas, 300 loja 02', N'(41) 3077-5100 / 9812-0860', N'contato@florfestas.com.br', N'www.florfestas.com.br', 1, N'', 21010, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (65, 65, N'65', N'Portão', N'Curitiba', N'Rua João Bettega, 1230 - lj 04', N'(41) 3345-1600 / 9179-1212', N'fran@manasfestas.com', N'www.manasfestas.com', 0, N'', 13686, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (66, 66, N'66', N'Mercês', N'Curitiba', N'Av. Prudente de Moraes, 711', N'(41) 3223-2555', N'francisvianna@yahoo.com.br', N'www.benvenuto.com.br', 1, N'', 5292, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (208, 242, N'242', N'', N'', N'Rua Rocha Pombo, 955', N'(41) 3044-4821 / 4101-4821 / 9639-8199 / 7816-7083', N'contato@tiopipoca.com.br', N'www.tiopipoca.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (285, 277, N'277', N'Alm. Tamandaré', N'Paraná ', N'Rua Prof Terezinha de Camargo, 146', N'(41) 3698-0228 / 8873-1378', N'ic.bomfim@uol.com.br', N'www.classearte.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (288, 280, N'280', N'Fotografia', N'Curitiba', N'', N'(41) 3379-8517 / 8852-8084', N'contato@evandrovarhau.com.br', N'www.evandrovarhau.com.br/blog', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (287, 278, N'278', N'Vila Guaira', N'Curitiba/PR', N'Rua Mato Grosso, 1666', N'(41) 9138-9902 / 3527-9902', N'ciadosbaloes2010@hotmail.com', N'ciadosbaloes.webnode.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (289, 281, N'281', N'Palhaços ', N'Malabares', N'', N'(41) 3274-1180 / 9926-8967', N'', N'diskalegrias.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (290, 279, N'279', N'Curitiba', N'Paraná', N'', N'(41) 3026-2218 / 9206-2532', N'adrisousa1972@hotmail.com', N'www.sapecaeperalta.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (291, 282, N'282', N'Uberaba', N'Curitiba', N'Rua Clóvis Beviláqua Sobrinho, 58', N'(41) 3618-7645 / 9672-2270', N'cumpalupasfestas@yahoo.com.br', N'www.cumpalupas.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (292, 283, N'283', N'Batel ', N'Curitiba ', N'Al. Carlos de Carvalho, 2015', N'(41) 9197.2715', N'contato@eventosmkg.com.br', N'www.eventosmkg.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (294, 285, N'285', N'Rebouças', N'Curitiba', N'Rua Brasilio Itibere, 1130', N'(41) 3334-1515 / 3019-1997', N'homempizza@homempizza.com.br', N'www.homempizza.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (295, 286, N'286', N'Curitiba ', N'Paraná', N'', N'(41) 3274-1922 ', N'girassol@girassoleventos.com.br', N'www.girassoleventos.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (296, 287, N'287', N'Curitiba', N'Paraná', N'', N'', N'contato@bellechef.com.br', N'www.bellechef.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (297, 288, N'288', N'Curitiba', N'Paraná', N'', N'(41)9923-8857 ', N'produtor9@hotmail.com', N'arti9.blogspot.com/', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (298, 289, N'289', N'Curitiba', N'Paraná', N'', N'(41) 3354-7476 / 9975-2074 ', N'xixofestas@gmail.com', N'www.xixofestas.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (299, 290, N'290', N'Curitiba ', N'Paraná ', N'', N'(41) 7816-2977', N'maosdeceracuritiba@hotmail.com', N'www.maosdecera.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (300, 291, N'291', N'Curitiba', N'Paraná', N'', N'(41) 3206-2780 / 9672-0252', N'festsom.ilumination@yahoo.com.br', N'www.festsomcuritiba.wordpress.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (301, 292, N'292', N'CIC', N'Curitiba', N'Rua Des. Cid Campelo 4367', N' (41) 3345-1801 / 3265-3962', N'criandosonhos@yahoo.com.br', N'www.criandosonhosfestainfantil.blogspot.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (303, 295, N'295', N'SJ dos Pinhais', N'Paraná', N'Rua João Bortolan s/n (Caminho do Vinho)', N'(41) 8821-2768', N'recantosaomiguel@hotmail.com', N'www.saomiguel.temnarede.com.br ', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (323, 312, N'312', N'Cajuru', N'Curitiba', N'Rua Reinaldo Issberner, 535', N'(41) 3365-8535 / 9221-7506', N'claude.rocha@hotmail.com', N'www.brilhofestaseeventos.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (306, 171, N'171', N'JD Weissópolis', N'Pinhais', N'Rua Rio Trombetas, 700', N'(41) 3665-9211', N'abelhinhafestasdf@hotmail.com', N'www.abelhinhafestas.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (307, 297, N'297', N'Curitiba', N'Paraná', N'', N'(41) 3308-1532/9236-7436', N'deccore@terra.com.br', N'www.deccore.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (308, 298, N'298', N'Centro', N'Curitiba', N'RuaAlferes Poli, 432, sala 32', N'(41) 3232-5194 / 9184-8649', N'gomezstudio@gmail.com', N'www.gomez.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (309, 299, N'299', N'Campo Comprido', N'Curitiba', N'Rua Araci Fernandes, 231', N'(41) 3274-3517 / 3274-9178', N'contato@festafacilcongelados.com.br', N'www.festafacilcongelados.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (311, 301, N'301', N'Rebouças', N'Curitiba', N'Av Des.Westhphalen, 2555', N'(41) 3019-9131 / 9973-0584', N'adegamalbec@gmail.com', N'www.adegamalbec.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (312, 157, N'157', N'Centro', N'Curitiba', N'Rua Des.Clotário Portugal, 155', N'(41) 3225-2161 / 9687-4480', N'atelierfotoevideo@hotmail.com', N'www.atelierfotoevideo.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (314, 303, N'303', N'Merces', N'Curitiba', N'Av Manoel Ribas, 2132', N'(41) 3335-3333/(41) 8530-7781', N'lollyboom_vendas@hotmail.com', N'lollyboom.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (315, 304, N'304', N'Curitiba', N'Paraná', N'', N'(41) 9618-5414', N'taniavalentimfotografias@yahoo.com.br', N'taniavalentimfotografias.blogspot.com/', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (316, 305, N'305', N'Rodovia da Uva', N'Colombo', N'Rua Geronimo Alberti, 415', N'(41) 3254-4194', N'villabambinni@gmail.com', N'www.villabambinni.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (317, 306, N'306', N'Centro', N'SJ Pinhais', N'Rua Scharfemberg de Quadros, 2660', N'(41) 3556-3175', N'master_noivas@hotmail.com', N'www.masternoivas.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (319, 308, N'308', N'Curitiba', N'Paraná', N'', N'(41)3332-7818 /9618-8064', N'atendimento@amarelinha.com', N'www.amarelinha.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (326, 315, N'315', N'Curitiba', N'Paraná', N'', N'(41) 3359-6591', N'villalba.tania@gmail.com', N'www.villalba.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (324, 314, N'314', N'Convites', N'Lembrancinhas', N'', N'(41) 3022-5494/9612-7789', N'kashmir.eventos@hotmail.com', N'thilyconvites.blogspot.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (325, 313, N'313', N'Curitiba', N'Paraná', N'', N'(41) 3022-5494/9612-7789', N'kashmir.eventos@hotmail.com', N'kashmir-eventos.blogspot.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (327, 316, N'316', N'Boqueirão', N'Curitiba', N'Rua Bley Zorning, 2975', N'(41) 3286-3031 / 9114-5260', N'artefestas10@uol.com.br', N'www.artesfestas.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (328, 317, N'317', N'Centro Cívico', N'Curitiba', N'Rua Mateus Leme, 635', N'(41) 3359-9030', N'contato@doobeedoo.com.br', N'www.doobeedoo.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (329, 318, N'318', N'Mercês', N'Curitiba ', N'Rua Dom Alberto Gonçalves, 556', N'(41) 3205-0406', N'edinhomaza@hotmail.com', N'www.planetakidseventos.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (332, 321, N'321 ', N'Curitiba ', N'Paraná ', N'Fone (41) 3373-3619', N' (41) 8824 -4034 / 9656-1885 ', N'anapaula_dallagrana@hotmail.com', N'www.djtomedjana.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (359, 346, N'346', N'Curitiba', N'Paraná', N'', N'(41) 3238-4425', N'thecandymanscontato@gmail.com', N'www.thecandymans.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (335, 324, N'324', N'Curitiba', N'Paraná', N'', N'(41) 3359-9241 / 9652-5956', N'kitfestadocemel@live.com', N'www.docemel.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (338, 327, N'327', N'Bairro Alto', N'Curitiba', N'Rua Epaminondas, Santos, 1490', N'(41) 3328-4883/9657-2951', N'alegriabrinquedo@hotmail.com', N'sites.google.com/site/alegriaeventosebrinquedos', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (381, 369, N'369', N'Curitiba', N'Paraná', N'Rua Pres Carlos Cavalcanti, 623/Sl 2', N'(41) 3205-3640 / 4101-3640 ', N'contato@estudiocb.com.br', N'www.estudiocb.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (382, 370, N'370', N'Fotografia', N'Curitiba', N'', N'(41) 8849-8808 / 3151-3698', N'fabricia_sampaio@hotmail.com', N'www.fabriciasampaio.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (385, 373, N'373', N'Curitiba', N'Cajuru', N'', N'(41) 9995-3893', N'kayrafarah@hotmail.com', N'kfarteembiscuit2011.blogspot.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (386, 374, N'374', N'Vila Hauer', N'Curitiba', N'Av. Mal Floriano Peixoto, 6839', N'(41) 3527-2000 / 8833-8541', N'comercial@buffetbrink.com.br', N'www.buffetbrink.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (387, 375, N'375', N'Curitiba', N'Paraná', N'', N'(41)3151-6033 / 8493-3166', N'familiasanduiche@hotmail.com', N'familiasanduiche.blogspot.com/', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (388, 376, N'376', N'Bigorrilho', N'Curitiba', N'Rua Francisco Rocha, 1691 Lj 01', N'(41) 3336-4744', N'novaimagemfotografias@hotmail.com', N'www.novaimagemfotografias.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (389, 377, N'377', N'Capão da Imbuia', N'Curitiba', N'Rua Prof. Nivaldo Braga, 1635', N'(41) 3267-2380 / 9243-5012', N'casquinhafestas@uol.com.br', N'www.casquinhaeventos.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (390, 378, N'378', N'Alto Boqueirão', N'Curitiba', N'', N'(41) 3286-4525', N'contato@convitescatarin.blogspot.com', N'www.convitescatarin.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (393, 381, N'381', N'Capão da Imbuia', N'Curitiba', N'Eng.Alberto Monteiro de Carvalho, 126', N'(41) 3369-1884 / 8518-4289', N'tequinhafestas@hotmail.com', N'www.tequinhafestas.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (394, 382, N'382', N'Curitiba', N'Paraná', N'', N'(41) 9207-3440', N'contato@deliciosos.com.br', N'www.deliciosos.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (395, 383, N'383', N'Vestidos', N'Infantis', N'Rua Des. Westphalen, 622 - Sala 31', N'(41) 9146-8702', N'kethelin@hotmail.com', N'www.pozinhomagico.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (396, 384, N'384', N'Curitiba', N'Paraná', N'', N'(41) 3643-0914 / 9822-7678', N'vanndabaiana@gmail.com', N'www.vanndabaiana.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (398, 386, N'386', N'Bolos e ', N'Doces', N'Curitiba   -  Paraná', N'(41) 3039-8052 / 9915-1236 ', N'karinemathiasdoces@hotmail.com', N'www.karinemathias.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (399, 387, N'387', N'Curitiba', N'Paraná', N'', N'(41) 3046-0104', N'alinemuller@alinemuller.com.br', N'www.alinemuller.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (400, 388, N'388', N'São Braz', N'Curitiba', N'', N'(41) 3273-1063', N'casinhadeguloseimas@hotmail.com', N'www.casinhadeguloseimas.blogspot.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (402, 390, N'390', N'Rebouças', N'Curitiba', N'Av. Pres. Kennedy,  1265', N'(41) 3387-7278', N'espacodosbaixinhos@bol.com.br', N'www.espacodosbaixinhos.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (403, 391, N'391', N'Atuba', N'Colombo', N'', N'(41) 8530-2824', N'docesaborconfeitaria@live.com', N'www.doce-sabor.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (404, 392, N'392', N'Cajuru', N'Curitiba', N'', N'(41) 3365-0990 / 9639-2932', N'inavasomeluz@gmail.com', N'www.inovasomeluz.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (405, 393, N'393', N'Guaraituba', N'Colombo', N'', N'(41) 3666-5225 / 9644-0439', N'priscila.rbr@gmail.com', N'aprymorelembrancinhas.blogspot.com.br/ ', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (406, 394, N'394', N'Água Verde ', N'Curitiba', N'', N'(41) 9274-7325', N'marcelleswinka@hotmail.com', N'www.afestaesua.loja2.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (408, 396, N'396', N'Colombo', N'Paraná', N'Rua Pedro do Rosário, 273', N'(41) 3606-2908/8860-9232/9614-1622', N'sininhocasadefestas@hotmail.com', N'www.sininhocasadefestas.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (412, 400, N'400', N'Afonso Pena', N'São José dos Pinhais', N'', N'(41) 9924-7099', N'animefestasinfantis@gmail.com', N'www.wix.com/animefestasinfantis/festas', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (415, 403, N'403', N'Novo Mundo', N'Curitiba', N'', N'(41) 3093-9063 / 9637-3837', N'jokoyama@hotmail.com', N'www.koyamas.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (417, 405, N'405', N'Curitiba', N'Paraná', N'', N'(41) 3045-9747 / 8810-2811 / 8802-9747', N'danielefreitas12@gmail.com', N'www.pimpolhofestas.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (419, 407, N'407', N'Água Verde', N'Curitiba', N'Rua Almirante Gonçalves, 2620', N'(41) 3039-0306', N'cristina@connectnetweb.com.br', N'www.connectnetweb.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (421, 409, N'409', N'Fazenda Velha', N'Araucária', N'Rua Ana Saliba Nassar, 242', N'(41) 3607-1233', N'contato@assoprabuffet.com.br', N'www.assoprabuffet.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (422, 410, N'410', N'Rio Branco do Sul', N'Paraná', N'Estrada do Capiruzinho', N'(41) 9674-7626', N'chacaratiodudu@hotmail.com', N'www.chacaratiodudu.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (425, 413, N'413', N'Curitiba', N'Paraná', N'', N'(41) 3238-2022 / 9827-4000', N'alinejlc@hotmail.com', N'www.alinecarvalhoatelier.blogspot.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (427, 415, N'415', N'São José dos Pinhais', N'Paraná', N'', N'(41) 3035-1697', N'', N'www.dayeribeiroatelie.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (428, 416, N'416', N'Água Verde', N'Curitiba', N'Av. República Argentina, 452 sla 107', N'(41) 3029-8800 / 9995-1899', N'gw@gwfotografia.com.br', N'www.gwfotografia.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (429, 417, N'417', N'Merces', N'Curitiba', N'', N'(41) 3016-8298 / 9946-2116', N'angelacaramori@hotmail.com', N'beabadafesta.blogspot.com.br/p/tabela-de-precos.html', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (431, 419, N'419', N'Curitiba', N'Paraná', N'', N'(41) 3699-1255 / 9938-4350', N'giselleamorimfotografias@yahoo.com.br', N'www.giselleamorim.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (383, 371, N'371', N'Bairro Alto', N'Curitiba', N'Rua José de Oliveira Franco, 288', N'(41) 3238-0299 / 3205-9493 / 8810-4257', N'vivilufestas@hotmail.com', N'www.vivilufestas.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (392, 380, N'380', N'Boqueirão', N'Curitiba', N'', N'(41) 3039-7842 / 8485-4610', N'anaeroberto@hotmail.com', N'www.anaeroberto.webnode.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (423, 411, N'411', N'Xaxim', N'Curitiba', N'', N'(41) 3039-1052 / 9883-8104', N'vibecwb@live.com', N'www.vibecwb.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (430, 418, N'418', N'Boqueirão', N'Curitiba', N'Rua Diogo Mugiatti, 2456', N'(41) 3016-8536 / 8402-8804', N'evento.espacoalegria@terra.com.br', N'www.espacoalegriaeventos.blogspot.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (293, 284, N'284', N'Ahú', N'Curitiba', N'Rua Francisco de Paula Guimarães, 680', N'(41) 9949-5202 / 3078-2674', N'gijikasouza@hotmail.com', N'www.gijicafestas.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (302, 293, N'293 ', N'Jardim das Américas ', N'Curitiba ', N'Rua Mal. Cardoso Junior, 947', N'(41) 3039-9583 ', N'juwelju@hotmail.com ', N'www.espacojardins.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (330, 319, N'319 ', N'Sítio Cercado', N'Curitiba', N'Rua Marte, 416', N'(41) 3044-5104', N'naninhafestas@yahoo.com.br', N'www.naninhafestas.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (310, 300, N'300', N'Curitiba', N'Paraná', N'', N'(41) 9232-1681 / 8885-8072', N'aroma-brasil@bol.com.br', N'www.aromabrasil.weebly.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (313, 302, N'302', N'Barreirinha', N'Curitiba', N'', N'(41) 8438-8232 / 9656-2819', N'marizaerosanadoces@hotmail.com', N'marizaerosana.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (318, 307, N'307', N'Xaxim', N'Curitiba', N'Rua Omar Raimundo Pichety, 687', N'(41) 3346-8404/3246-8271', N'raquel_claiton@hotmail.com', N'www.lololy.temnarede.com.br', 1, N'', NULL, NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (320, 309, N'309', N'Curitiba', N'Paraná', N'', N'(41) 8435-4587 / 9920-7479', N'artfestas_analu@hotmail.com', N'artfestasanalu.webnode.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (331, 320, N'320', N'Curitiba ', N'Paraná ', N'', N'(41) 3268-4930 / 9232-0700', N'djpatricpt@hotmail.com', N'www.djpatric.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (333, 322, N'322', N'Bairro Alto', N'Curitiba', N'Av da Integração, 1.000', N'(41) 9101-0486', N'nilceu0@gmail.com', N'salaodefestas.wordpress.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (334, 323, N'323', N'Curitiba', N'Paraná', N'', N'(41) 3203-9702 / 9646-1778 / 8458-3710', N'fabi_scaramella@hotmail.com', N'www.decoreebrinque.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (336, 325, N'325', N'Jd Botanico', N'Curitiba', N'Rua Prof. Luiz Carlos Pereira da Silva, 93', N'(41) 3363-7076', N'supercrepes@hotmail.com', N'www.supercrepes.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (337, 326, N'326', N'', N'', N'Rua Rocha Pombo, 955', N'(41)3044-4824 / 7817-5132 ', N'contato@queirozdemacedo.com.br', N'www.queirozdemacedo.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (339, 328, N'328', N'CIC', N'Curitiba', N'', N'(41) 3245-6608 / 9988-9569', N'lucio_trakinas@hotmail.com', N'www.lollypupy.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (340, 329, N'329', N'Curitiba', N'Paraná', N'', N'(41) 3374-1097 / 9837-7078', N'contato@nandacapelfotoinfantil.com', N'www.nandacapelfotoinfantil.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (341, 330, N'330', N'São Braz', N'Curitiba', N'Rua Manoel de Chagas Lima, 390', N'(41) 3272-0137 / 8864-6557', N'festaslepetit@hotmail.com', N'www.festaslepetit.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (342, 331, N'331', N'Ahú', N'Curitiba', N'Rua Antonio Correa Bittencourt, 517 ', N'(41) 3352-9404', N'celebrarefestascwb@hotmail.com', N'www.celebrarefestas.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (343, 332, N'332', N'Curitiba', N'Paraná', N'', N'(41) 3019-2887', N'rafalsouza@onda.com.br', N'www.fabilembrancas.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (344, 333, N'333', N'Agudos do Sul', N'Paraná', N'', N'(41) 9207-9789', N'danifestas2011@hotmail.com', N'www.danifestas.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (345, 334, N'334', N'Capão Raso', N'Curitiba', N'Rua Santa Monica, 644', N'(41) 3045-4513', N'ceedin644@gmail.com', N'www.ceedin.webnode.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (346, 335, N'335', N'Curitiba', N'Paraná', N'', N'(41) 9810-9192 / 9960-7555', N'elisabeth@funnybands.com.br', N'www.jota.com.br/funnybands', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (347, 336, N'336', N'Guaira', N'Curitiba', N'Rua Pernambuco, 2012', N'(41) 3245-5747/8855-3110', N'patitasbiscuit@hotmail.com', N'www.flickr.com/photos/patitasbiscuit', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (348, 337, N'337', N'', N'', N'Av N. Sra do Sagrado Coração, 1250', N'(41) 3265-8611', N'megdecor@gmail.com ', N'http://fotolog.terra.com.br/megadecor', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (349, 338, N'338', N'Cajuru', N'Curitiba', N'Rua Antonio Moreira Lopes, 500', N'(41) 3261-2593 / 3226-9587', N'aceppr@uol.com.br', N'www.aceppr.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (350, 339, N'339', N'Água Verde', N'Curitiba', N'Rua Alexandre Gutierrez, 219', N'(41) 3254-4033 / 8802-7924', N'', N'www.planetafestas.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (354, 341, N'341', N'Curitiba', N'Paraná', N'', N'(41) 9119-4302', N'aracelli@mariaemarias.com.br', N'www.mariaemarias.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (355, 342, N'342', N'Boa Vista', N'Curitiba', N'', N'(41) 3049-4163 / 9676-6202 / 8443-0408', N'fadabelfestas@hotmail.com', N'www.fadebelfestas.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (357, 344, N'344', N'Curitiba', N'Paraná', N'', N'(41) 9951-5110', N'missglace@missglace.com.br', N'www.missglace.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (360, 348, N'348', N'Curitiba', N'Paraná', N'', N'(41) 3365-3863 / 8422-8228', N'isaurasantos.festas@bol.com.br', N'www.isaurafestascuritiba.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (351, 340, N'340', N'Cidade Industrial', N'Curitiba', N'Av Juscelino K de Oliveira, 7102', N'(41) 8478-3556 / 9647-7585', N'gvfestas-eventos@uol.com.br', N'www.gvfestas.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (356, 343, N'343', N'Curitiba', N'Paraná', N'', N'(41) 3205-6901 / 9103-6901', N'contato@f2fotoevideo.com.br', N'www.f2fotoevideo.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (358, 345, N'345', N'Curitiba', N'Paraná', N'', N'(41) 3328-7046 / 9601-4589', N'leandroiark@hotmail.com', N'www.iark.fot.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (362, 350, N'350', N'Curitiba', N'Parana', N'', N'(41) 3327-6883', N'silbuenoglovacki@hotmail.com', N'www.luademel.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (361, 349, N'349', N'Curitiba', N'Paraná', N'', N'(41) 3276-9682 / 9816-5003', N'kitfestacuritiba@hotmail.com', N'www.diskfestascuritiba.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (363, 351, N'351', N'Curitiba', N'Paraná', N'', N'(41) 8841-8300', N'titamoreira@globo.com', N'http://www.tatianacardosocakedesigner.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (364, 352, N'352', N'Àgua Verde', N'Curitiba', N'Avenida dos Estados, 940 ', N'(41) 3044-4796 / 3345-7575', N'mikilas@mikilas.com.br', N'www.mikilas.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (365, 353, N'353', N'Curitiba', N'Paraná', N'', N'(41) 3382-1065 / 9686-5333', N'cellifestas@hotmail.com', N'www.cellifestas.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (366, 354, N'354', N'Fazendinha', N'Curitiba', N'Rua José Gusso, 57', N'(41) 3039-3607 /9947-2487', N'analuzfestas2011@hotmail.com', N'analuzfestas.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (367, 355, N'355', N'Curitiba', N'Paraná', N'', N'(41) 3562-8625 / 8460-2475', N'tati_festas@hotmail.com', N'www.tatifestas.temnarede.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (368, 356, N'356', N'Fotografia', N'Filmagem', N'', N'(41) 3527-1884 / 8469-1512', N'andreaproducao@andreaflor.com.br', N'www.andreaflor.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (369, 357, N'357', N'Boqueirão', N'Curitiba', N'Rua Januario Alves de Souza,  910', N'(41) 3344-7374 / 9194-1302', N'babayfestasinfantis@hotmail.com', N'www.babyfestasinfantis.loj.net.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (370, 358, N'358', N'Vila Hauer', N'Curitiba', N'Rua Frei Henrique de Coimbra, 904', N'(41) 4102-9293 / 9805-6789', N'buffetspirogiro@gmail.com', N'www.buffetspirogiro.com.br/', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (371, 359, N'359', N'Sta Felicidade', N'Curitiba', N'Rua Maria A Zaramella Grande, 54', N'(41) 3273-3950', N'contato@funclubparties.com.br', N'www.funclubparties.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (373, 361, N'361', N'Ecoville', N'Curitiba', N'Rua José Nicco, 717 ', N'(41) 3206-1660', N'brigadeiro@buffetbrigadeiroecia.com.br', N'www.buffetbrigadeiroecia.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (372, 360, N'360', N'Alto da XV', N'Curitiba', N'Rua Fernando Amaro, 81', N'(41) 3362-0437', N'reginaldodva@gmail.com', N'www.wix.com/reginaldodva/kids', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (374, 362, N'362', N'Sta. Felicidade', N'Curitiba', N'R. Paulo J. Buso, 134  csa 2', N'(41) 3364-8604 / 9152-0752', N'vsabor.contatorizzo@hotmail.com', N'www.verdadeirosabor.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (375, 363, N'363', N'Curitiba', N'Paraná', N'', N'(41) 9936-2944', N'globopad@gmail.com', N'fazendoarteinfantil.blogspot.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (376, 364, N'364', N'Portão', N'Curitiba', N'Carlos Dietzsch, 465', N'(41) 3229-9649 / 8804-0125', N'reileaofestas@hotmail.com', N'brindeslembrancinhasarauna.nafoto.net', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (377, 365, N'365', N'São José dos Pinhais', N'Paraná', N'', N'(41) 3058-1034 / 8838-7779', N'nadia_gowert@hotmail.com', N'nadifestas.blogspot.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (378, 366, N'366', N'Pinhais', N'Paraná', N'Rua José Waltemyr da Costa Lima 93 ', N'(4) 3663-9244 / 8504-1880', N'belafestadecoracoes@bol.com.br', N'belafestadecoracoes.nafoto.net', 0, N'Dani', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (379, 367, N'367', N'Portão', N'Curitiba', N'Rua Pedro Caetano M. Follador, 375', N'(41) 3229-6329', N'doriann@onda.com.br', N'www.dorianmendes.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (380, 368, N'368', N'Santa Quiteria', N'Curitiba', N'Rua Herbert Neal, 260', N'(41) 3274-1282', N'festasmenegusso@terra.com.br', N'www.festasmenegusso.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (384, 372, N'372', N'Portão', N'Curitiba', N'Rua Itacolomi, 1143', N'(41) 3095-1377', N'curitiba@dilenetortas.com.br', N'www.dilenetortas.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (401, 389, N'389', N'Convites', N'Lembrancinhas', N'Portão - Curitiba', N'(41) 3329-9630 / 9979-3220', N'contato@eliemidocearte.com.br', N'www.eliemidocearte.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (410, 398, N'398', N'', N'', N'', N'(41) 3044-4547 / 9649-0837', N'treszerocinco@hotmail.com.br', N'www.305eventos.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (413, 401, N'401', N'Bacacheri', N'Curitiba', N'', N'(41) 9258-5371', N'contato@vivianevarhau.com.br', N'vivianevarhau.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (420, 408, N'408', N'Barreirinha', N'Curitiba', N'Rua Mauricio Ricardo dos Santos, 411', N'(41) 3585-1848 / 9245-6513', N'eduardonemetz@hotmail.com', N'www.casadobrinquedo.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (391, 379, N'379', N'Novo Mundo', N'Curitiba', N'R. José Alcides de Lima, 1082', N'(41) 3346-9323 / 9965-4065', N'lelemandafestas@gmail.com', N'www.lelemanda.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (397, 385, N'385', N'Agua Verde', N'Curitiba', N'Av. Getulio Vargas, 2445 Loja 04', N'(41) 3077-7135 / 3779-7130 / 9650-2102', N'sunnyfestas@hotmail.com', N'flog.clickgratis.com.br/sunnyfestas ', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (416, 404, N'404', N'', N'', N'', N'(41) 9624-4330 / 9644-7414', N'ju&jukids@gmail.com', N'juejukids.blogspot.com.br/', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (407, 395, N'395', N'Bigorrilho', N'Curitiba', N'', N'(41) 3336-9926 / 9856-5555', N'criciajordan@yahoo.com.br', N'www.enjoypartieseventos.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (414, 402, N'402', N'Curitiba', N'Paraná', N'Festas e Eventos', N'(41) 3657-6888 / 9832-7722', N'contato@especialitta.com.br ', N'www.especialitta.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (409, 397, N'397', N'Bacacheri', N'Curitiba', N'', N'(41) 3256-5539 / 8813-0509', N'contato@tucofestaseventos.com', N'www.tucofestaseventos.com', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (411, 399, N'399', N'Curitiba', N'Paraná', N'', N'(41) 3209-9302 / 9637-0184', N'franklin@cinefest.com.br', N'www.franklinbaloes.temnarede.com.br', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (418, 406, N'406', N'Curitiba', N'Paraná', N'', N'(41) 3273-4304 / 9634-3931', N'contato@algodaodocefotografia.com.br', N'www.algodaodocefotografia.com.br', 0, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (424, 412, N'412', N'Atuba', N'Curitiba', N'Rua Huxley, 907', N'(41) 3621-7794 / 9223-4499', N'www.danieli_op@hotmail.com', N'www.provencalarteemmdf.blogspot.com.br/', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (426, 414, N'414', N'Portão', N'Curitiba', N'', N'(41) 3045-9652', N'keity Zamarian', N'www.tuleconvites.blogspot.com', 1, N'', NULL, NULL)
INSERT [dbo].[anuncio] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [senha], [acesso], [descricao]) VALUES (432, 420, N'420', N'Curitiba', N'Paraná', N'', N'(41) 8874-9041/8842-8799', N'atomofotoevideo@hotmail.com', N'www.atomofotoevideo.com.br', 1, N'', NULL, NULL)
/****** Object:  Table [dbo].[agenda]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[agenda](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[codigo_anuncio] [int] NOT NULL,
	[descricao] [varchar](300) NULL,
	[data] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_agenda] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[agenda] ON
INSERT [dbo].[agenda] ([codigo], [codigo_anuncio], [descricao], [data], [status]) VALUES (2, 40, N'Festa de 10 anos Thiago Amaro de Souza', CAST(0x00009F2500000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[agenda] OFF
/****** Object:  Table [dbo].[tema_categoria]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tema_categoria](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[codigo_cliente] [int] NOT NULL,
	[codigo_tema] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tema_categoria] ON
INSERT [dbo].[tema_categoria] ([codigo], [codigo_cliente], [codigo_tema]) VALUES (2, 3, 89)
SET IDENTITY_INSERT [dbo].[tema_categoria] OFF
/****** Object:  Table [dbo].[tema]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tema](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[codigo_cliente] [int] NULL,
	[cep] [varchar](20) NULL,
	[bairro] [varchar](100) NULL,
	[cidade] [varchar](200) NULL,
	[endereco] [varchar](300) NULL,
	[telefone] [varchar](50) NULL,
	[email] [varchar](300) NULL,
	[site] [varchar](400) NULL,
	[status] [int] NULL,
	[descricao] [varchar](200) NULL,
	[foto] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tema] ON
INSERT [dbo].[tema] ([codigo], [codigo_cliente], [cep], [bairro], [cidade], [endereco], [telefone], [email], [site], [status], [descricao], [foto]) VALUES (1, 3, N'000000000', N'Santa Felicidade', N'Curitiba', N'Rua Francisco Dallalibera, 883', N'(41) 3364-7146 / 9904-1756', N'arcadenoebuffetinfantil@yahoo.com.br', N'www.arcadenoebuffet.com.br', 1, N'Parque Infantil / Salão de Festas', N'arca (1).jpg')
SET IDENTITY_INSERT [dbo].[tema] OFF
/****** Object:  Table [dbo].[status_chat]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status_chat](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[codigo_cliente] [int] NULL,
	[status] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[status](
	[codigo] [int] NOT NULL,
	[descricao] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[status] ([codigo], [descricao]) VALUES (1, N'Ativo')
INSERT [dbo].[status] ([codigo], [descricao]) VALUES (0, N'Inativo')
/****** Object:  Table [dbo].[video]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[video](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[video] [varchar](200) NULL,
	[codigo_anuncio] [int] NULL,
	[miniatura] [varchar](200) NULL,
	[status] [int] NULL,
	[descricao] [varchar](200) NULL,
	[titulo] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[video] ON
INSERT [dbo].[video] ([codigo], [video], [codigo_anuncio], [miniatura], [status], [descricao], [titulo]) VALUES (1, N'http://www.youtube.com/watch?v=muhFxXce6nA', 204, N'cheaptrick.jpg', 1, N'Video clip da banda Cheap Trick', N'The Flame')
INSERT [dbo].[video] ([codigo], [video], [codigo_anuncio], [miniatura], [status], [descricao], [titulo]) VALUES (2, N'http://www.youtube.com/watch?v=OapCbPy-gJg', 204, N'som1.jpg', 1, N'Video clip banda Sister of Mercy', N'Marian')
INSERT [dbo].[video] ([codigo], [video], [codigo_anuncio], [miniatura], [status], [descricao], [titulo]) VALUES (3, N'http://www.youtube.com/watch?v=lDK9QqIzhwk', 204, N'bonjovi.jpg', 1, N'Clip Bon Jovi', N'Bon Jovi')
INSERT [dbo].[video] ([codigo], [video], [codigo_anuncio], [miniatura], [status], [descricao], [titulo]) VALUES (4, N'http://www.youtube.com/watch?v=G9JeiRi6QU8', 204, N'carrie.jpg', 1, N'Clip Europe', N'Carrie')
INSERT [dbo].[video] ([codigo], [video], [codigo_anuncio], [miniatura], [status], [descricao], [titulo]) VALUES (5, N'http://www.youtube.com/watch?v=GOJk0HW_hJw', 204, N'whitesnake.jpg', 1, N'WhiteSnake', N'WhiteSnake')
INSERT [dbo].[video] ([codigo], [video], [codigo_anuncio], [miniatura], [status], [descricao], [titulo]) VALUES (6, N'http://www.youtube.com/watch?v=K02Cxo3fAC8', 204, N'alegria.jpg', 1, N'O povo feio', N'Para nossa Alegria')
SET IDENTITY_INSERT [dbo].[video] OFF
/****** Object:  Table [dbo].[usuario]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](100) NULL,
	[senha] [varchar](100) NULL,
	[codigo_anunciante] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON
INSERT [dbo].[usuario] ([codigo], [descricao], [senha], [codigo_anunciante]) VALUES (1, N'guia', N'tem@rede', 347)
INSERT [dbo].[usuario] ([codigo], [descricao], [senha], [codigo_anunciante]) VALUES (2, N'xixo', N'12345', 289)
SET IDENTITY_INSERT [dbo].[usuario] OFF
/****** Object:  Table [dbo].[tipo_controle]    Script Date: 08/09/2012 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_controle](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](100) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tipo_controle] ([codigo], [descricao]) VALUES (1, N'Anunciante')
INSERT [dbo].[tipo_controle] ([codigo], [descricao]) VALUES (2, N'Categoria')
INSERT [dbo].[tipo_controle] ([codigo], [descricao]) VALUES (3, N'Banner')
INSERT [dbo].[tipo_controle] ([codigo], [descricao]) VALUES (4, N'Bonus')
/****** Object:  View [uguiadefestacuritiba].[vw_anuncio]    Script Date: 08/09/2012 10:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [uguiadefestacuritiba].[vw_anuncio]
AS
SELECT DISTINCT 
                      a.codigo, c.nome_fantasia, a.cep, a.bairro, a.cidade, a.endereco, l.orkut, l.facebook, l.twitter, a.telefone, a.email, a.site, a.status, lo.descricao AS logo, a.codigo_cliente,
                       a.descricao
FROM         dbo.anuncio AS a INNER JOIN
                      dbo.cliente AS c ON a.codigo_cliente = c.codigo INNER JOIN
                      dbo.logo AS lo ON lo.codigo_anuncio = a.codigo_cliente LEFT OUTER JOIN
                      dbo.link AS l ON c.codigo = l.codigo_anuncio
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "lo"
            Begin Extent = 
               Top = 6
               Left = 651
               Bottom = 110
               Right = 814
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "l"
            Begin Extent = 
               Top = 114
               Left = 632
               Bottom = 233
               Right = 795
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'uguiadefestacuritiba', @level1type=N'VIEW',@level1name=N'vw_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'uguiadefestacuritiba', @level1type=N'VIEW',@level1name=N'vw_anuncio'
GO
/****** Object:  Trigger [tgr_autocodigo_logo]    Script Date: 08/09/2012 10:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgr_autocodigo_logo] 
ON [dbo].[logo] 
AFTER INSERT
AS 
BEGIN
SET NOCOUNT ON;
DECLARE @MAX [int]
SET @MAX=IsNull((SELECT MAX(codigo) FROM logo),0)
UPDATE logo SET codigo=(@MAX + 1) WHERE codigo=0
END
GO
/****** Object:  Trigger [tgr_autocodigo_local_banner]    Script Date: 08/09/2012 10:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgr_autocodigo_local_banner] 
ON [dbo].[local_banner] 
AFTER INSERT
AS 
BEGIN
SET NOCOUNT ON;
DECLARE @MAX [int]
SET @MAX=IsNull((SELECT MAX(codigo) FROM local_banner),0)
UPDATE local_banner SET codigo=(@MAX + 1) WHERE codigo=0
END
GO
/****** Object:  Trigger [tgr_autocodigo_link]    Script Date: 08/09/2012 10:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgr_autocodigo_link] 
ON [dbo].[link] 
AFTER INSERT
AS 
BEGIN
SET NOCOUNT ON;
DECLARE @MAX [int]
SET @MAX=IsNull((SELECT MAX(codigo) FROM link),0)
UPDATE link SET codigo=(@MAX + 1) WHERE codigo=0
END
GO
/****** Object:  Trigger [tgr_autocodigo_cliente]    Script Date: 08/09/2012 10:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgr_autocodigo_cliente] 
ON [dbo].[cliente] 
AFTER INSERT
AS 
BEGIN
SET NOCOUNT ON;
DECLARE @MAX [int]
SET @MAX=IsNull((SELECT MAX(codigo) FROM cliente),0)
UPDATE cliente SET codigo=(@MAX + 1) WHERE codigo=0
END
GO
/****** Object:  Trigger [tgr_autocodigo_categoria]    Script Date: 08/09/2012 10:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgr_autocodigo_categoria] 
ON [dbo].[categoria] 
AFTER INSERT
AS 
BEGIN
SET NOCOUNT ON;
DECLARE @MAX [int]
SET @MAX=IsNull((SELECT MAX(codigo) FROM categoria),0)
UPDATE categoria SET codigo=(@MAX + 1) WHERE codigo=0
END
GO
/****** Object:  Trigger [tgr_autocodigo_bonus_retorno]    Script Date: 08/09/2012 10:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgr_autocodigo_bonus_retorno] 
ON [dbo].[bonus_retorno] 
AFTER INSERT
AS 
BEGIN
SET NOCOUNT ON;
DECLARE @MAX [int]
SET @MAX=IsNull((SELECT MAX(codigo) FROM bonus_retorno),0)
UPDATE bonus_retorno SET codigo=(@MAX + 1) WHERE codigo=0
END
GO
/****** Object:  Trigger [tgr_autocodigo_bonus]    Script Date: 08/09/2012 10:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgr_autocodigo_bonus] 
ON [dbo].[bonus] 
AFTER INSERT
AS 
BEGIN
SET NOCOUNT ON;
DECLARE @MAX [int]
SET @MAX=IsNull((SELECT MAX(codigo) FROM bonus),0)
UPDATE bonus SET codigo=(@MAX + 1) WHERE codigo=0
END
GO
/****** Object:  Trigger [tgr_autocodigo_banner_categoria]    Script Date: 08/09/2012 10:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgr_autocodigo_banner_categoria] 
ON [dbo].[banner_categoria] 
AFTER INSERT
AS 
BEGIN
SET NOCOUNT ON;
DECLARE @MAX [int]
SET @MAX=IsNull((SELECT MAX(codigo) FROM banner_categoria),0)
UPDATE banner_categoria SET codigo=(@MAX + 1) WHERE codigo=0
END
GO
/****** Object:  Trigger [tgr_autocodigo_banner]    Script Date: 08/09/2012 10:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgr_autocodigo_banner] 
ON [dbo].[banner] 
AFTER INSERT
AS 
BEGIN
SET NOCOUNT ON;
DECLARE @MAX [int]
SET @MAX=IsNull((SELECT MAX(codigo) FROM banner),0)
UPDATE banner SET codigo=(@MAX + 1) WHERE codigo=0
END
GO
/****** Object:  Trigger [tgr_autocodigo_anuncio_categoria]    Script Date: 08/09/2012 10:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgr_autocodigo_anuncio_categoria] 
ON [dbo].[anuncio_categoria] 
AFTER INSERT
AS 
BEGIN
SET NOCOUNT ON;
DECLARE @MAX [int]
SET @MAX=IsNull((SELECT MAX(codigo) FROM anuncio_categoria),0)
UPDATE anuncio_categoria SET codigo=(@MAX + 1) WHERE codigo=0
END
GO
/****** Object:  Trigger [tgr_autocodigo_anuncio]    Script Date: 08/09/2012 10:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tgr_autocodigo_anuncio] 
ON [dbo].[anuncio] 
AFTER INSERT
AS 
BEGIN
SET NOCOUNT ON;
DECLARE @MAX [int]
SET @MAX=IsNull((SELECT MAX(codigo) FROM anuncio),0)
UPDATE anuncio SET codigo=(@MAX + 1) WHERE codigo=0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_set_status_chat]    Script Date: 08/09/2012 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_set_status_chat] 
			   @codigo int,
			   @codigo_cliente int,
			   @status int

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO status_chat(
			   codigo_cliente,
			   [status] )
		   VALUES
   	       (@codigo_cliente,
		    @status)
		end
		else
		begin

		   UPDATE status_chat
		   SET  
			   [status]       =@status
		   WHERE codigo_cliente =@codigo_cliente

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_video]    Script Date: 08/09/2012 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_video] 
			   @codigo int,
			   @video varchar(200),
			   @status int,
			   @miniatura varchar(200),
			   @codigo_anuncio int,
			   @descricao varchar(200),
			   @titulo varchar(100)

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO video(
			   video,
			   [status],
			   miniatura,
			   codigo_anuncio,
			   descricao,
			   titulo)
		   VALUES
		   (@video,
			@status,
			@miniatura,
			@codigo_anuncio,
			@descricao,
			@titulo)
		end
		else
		begin

		   UPDATE video
		   SET  
            video=@video,
			[status]=@status,
			miniatura=@miniatura,
			codigo_anuncio=@codigo_anuncio,
			descricao=@descricao,
			titulo=@titulo
			WHERE codigo = @codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_usuario]    Script Date: 08/09/2012 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_usuario] 
			   @codigo int,
			   @codigo_anunciante int,
			   @descricao varchar(100),
			   @senha varchar(100)

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO usuario(
			   codigo_anunciante ,
			   descricao,
			   senha)
		   VALUES
		   (@codigo_anunciante ,
			@descricao,
			@senha)
		end
		else
		begin

		   UPDATE usuario
		   SET  
			   codigo_anunciante= @codigo_anunciante ,
			   descricao        = @descricao,
			   senha            = @senha
		   WHERE codigo = @codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_tema_categoria]    Script Date: 08/09/2012 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_tema_categoria] 
			   @codigo int,
			   @codigo_cliente int,
			   @codigo_tema int
	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO tema_categoria(
					   codigo_cliente,
					   codigo_tema)
		   VALUES
					 (@codigo_cliente,
					  @codigo_tema)
		end
		else
		begin

		   UPDATE tema_categoria
		   SET  
			  codigo_tema     = @codigo_tema,
			  codigo_cliente = @codigo_cliente
		   WHERE codigo=@codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_tema]    Script Date: 08/09/2012 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_tema] 
			@codigo int,
			@codigo_cliente int,
			@cep varchar(20),
			@bairro varchar(100),
			@cidade varchar(200),
			@endereco varchar(300),
			@telefone varchar(50),
			@email varchar(300),
			@site varchar(400),
			@status int,
			@descricao varchar(200),
			@foto varchar(200)

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO tema(
            codigo_cliente,
			cep,
			bairro,
			cidade,
			endereco,
			telefone,
			email,
			[site],
			[status],
			descricao,
			foto)
		   VALUES
		   (@codigo_cliente,
			@cep,
			@bairro,
			@cidade,
			@endereco,
			@telefone,
			@email,
			@site,
			@status,
			@descricao,
			@foto)
		end
		else
		begin

		   UPDATE tema
		   SET  
            codigo_cliente=@codigo_cliente,
			cep=@cep,
			bairro=@bairro,
			cidade=@cidade,
			endereco=@endereco,
			telefone=@telefone,
			email=@email,
			[site]=@site,
			[status]=@status,
			descricao=@descricao,
			foto=@foto
		   WHERE codigo = @codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_sinonimo_anuncio]    Script Date: 08/09/2012 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_sinonimo_anuncio] 
			   @codigo int,
			   @codigo_sinonimo int,
			   @codigo_anuncio int

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO sinonimo_anuncio(
			   codigo_sinonimo,
			   codigo_anuncio)
		   VALUES
   	       (@codigo_sinonimo,
		    @codigo_anuncio)
		end
		else
		begin

		   UPDATE sinonimo_anuncio
		   SET  
			   codigo_sinonimo=@codigo_sinonimo,
			   codigo_anuncio=@codigo_anuncio
		   WHERE codigo =@codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_sinonimo]    Script Date: 08/09/2012 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_inclui_sinonimo] 
			   @codigo int,
			   @sinonimo varchar(150)

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO sinonimo(
			   sinonimo)
		   VALUES
   	       (@sinonimo)
		end
		else
		begin

		   UPDATE sinonimo
		   SET  
			   sinonimo =@sinonimo
		   WHERE codigo =@codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_oferta]    Script Date: 08/09/2012 10:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_oferta] 
			   @codigo int,
			   @descricao varchar(100),
			   @miniatura varchar(200),	
			   @oferta varchar(200),
			   @desconto varchar (100),
			   @de varchar (100),
			   @por varchar (100),
			   @economia varchar (100),
			   @validade datetime,	
			   @texto text,
			   @codigo_anuncio int,
			   @status int

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO oferta(
			   descricao,
			   miniatura,	
			   oferta,
			   desconto,
			   de,
			   por,
			   economia,
			   validade,	
			   texto,
			   codigo_anuncio,
			   [status]			   
			   )
		   VALUES
   	       (
			   @descricao,
			   @miniatura,	
			   @oferta,
			   @desconto,
			   @de,
			   @por,
			   @economia,
			   @validade,	
			   @texto,
			   @codigo_anuncio,
			   @status  	       
   	       )
		end
		else
		begin

		   UPDATE oferta
		   SET  
			   descricao = @descricao,
			   miniatura = @miniatura,	
			   oferta = @oferta,
			   desconto = @desconto,
			   de = @de,
			   por = @por,
			   economia = @economia,
			   validade = @validade,	
			   texto = @texto,
			   codigo_anuncio = @codigo_anuncio,
			   [status] = @status
		   WHERE codigo =@codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_logo]    Script Date: 08/09/2012 10:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_logo] 
			   @codigo int,
			   @descricao nvarchar(200),
			   @codigo_anuncio int

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO logo(
			   codigo, 
			   descricao,
			   codigo_anuncio )
		   VALUES
					 (@codigo,
					  @descricao,
					  @codigo_anuncio)
		end
		else
		begin

		   UPDATE logo
		   SET  
			   descricao      =@descricao,
			   codigo_anuncio =@codigo_anuncio
		   WHERE codigo = @codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_link]    Script Date: 08/09/2012 10:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_inclui_link] 
			   @codigo int,
			   @codigo_anuncio int,
			   @orkut varchar(200),
			   @facebook varchar(200),
			   @twitter varchar(200)

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO link(
			   codigo,  
			   codigo_anuncio ,
			   orkut,
			   facebook,
			   twitter)
		   VALUES
					 (@codigo,
					  @codigo_anuncio,
					  @orkut,
					  @facebook,
					  @twitter)
		end
		else
		begin

		   UPDATE link
		   SET  
			   codigo_anuncio =@codigo_anuncio,
			   orkut          =@orkut,
			   facebook       =@facebook,
			   twitter        =@twitter
		   WHERE codigo = @codigo

		end
	end
	/****** Object:  StoredProcedure [dbo].[sp_inclui_financeiro]    Script Date: 06/21/2010 19:47:48 ******/
	SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_destaque]    Script Date: 08/09/2012 10:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_destaque] 
			   @codigo int,
			   @destaque text,
			   @status int,
			   @tipo_destaque int

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO destaque(
			   destaque,
			   [status],
			   tipo_destaque)
		   VALUES
		   (@destaque,
			@status,
			@tipo_destaque)
		end
		else
		begin

		   UPDATE destaque
		   SET  
			   destaque = @destaque,
			   [status]= @status,
			   tipo_destaque=@tipo_destaque			   
		   WHERE codigo = @codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_convite_categoria]    Script Date: 08/09/2012 10:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_convite_categoria] 
			   @codigo int,
			   @codigo_cliente int,
			   @codigo_convite int
	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO convite_categoria(
					   codigo_cliente,
					   codigo_convite)
		   VALUES
					 (@codigo_cliente,
					  @codigo_convite)
		end
		else
		begin

		   UPDATE convite_categoria
		   SET  
			  codigo_convite     = @codigo_convite,
			  codigo_cliente = @codigo_cliente
		   WHERE codigo=@codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_convite]    Script Date: 08/09/2012 10:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_convite] 
			@codigo int,
			@codigo_cliente int,
			@cep varchar(20),
			@bairro varchar(100),
			@cidade varchar(200),
			@endereco varchar(300),
			@telefone varchar(50),
			@email varchar(300),
			@site varchar(400),
			@status int,
			@descricao varchar(200),
			@foto varchar(200)

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO convite(
            codigo_cliente,
			cep,
			bairro,
			cidade,
			endereco,
			telefone,
			email,
			[site],
			[status],
			descricao,
			foto)
		   VALUES
		   (@codigo_cliente,
			@cep,
			@bairro,
			@cidade,
			@endereco,
			@telefone,
			@email,
			@site,
			@status,
			@descricao,
			@foto)
		end
		else
		begin

		   UPDATE convite
		   SET  
            codigo_cliente=@codigo_cliente,
			cep=@cep,
			bairro=@bairro,
			cidade=@cidade,
			endereco=@endereco,
			telefone=@telefone,
			email=@email,
			[site]=@site,
			[status]=@status,
			descricao=@descricao,
			foto=@foto
		   WHERE codigo = @codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_conta_receber]    Script Date: 08/09/2012 10:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_conta_receber] 
			   @codigo int,
			   @codigo_cliente int,
			   @vencimento datetime,
			   @valor money,
			   @nosso_numero varchar(20),
			   @documento varchar(20),
			   @observacao text,
			   @boleto varchar(100),
			   @status int

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO conta_receber(
               codigo_cliente,
			   vencimento,
			   valor,
			   nosso_numero,
			   documento,
			   observacao,
			   boleto,
			   [status])
		   VALUES(
		       @codigo_cliente,
			   @vencimento,
			   @valor,
			   @nosso_numero,
			   @documento,
			   @observacao,
			   @boleto,
			   @status)
		end
		else
		begin

		   UPDATE conta_receber
		   SET  
              codigo_cliente =@codigo_cliente,
			  vencimento     =@vencimento,
			  valor          =@valor,
			  nosso_numero   =@nosso_numero,
			  documento      =@documento,
			  observacao     =@observacao,
			  boleto         =@boleto,
			  [status]       =@status
   		   WHERE codigo      = @codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_cliente]    Script Date: 08/09/2012 10:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_cliente] 
	   @codigo int,
	   @razao_social nvarchar(200),
	   @cnpj nvarchar(30),
	   @cpf nvarchar(20),
	   @rg nvarchar(20),
	   @endereco nvarchar(300),
	   @cep nvarchar(20),
	   @bairro nvarchar(100),
	   @cidade nvarchar(200),
	   @email nvarchar(300),
	   @responsavel nvarchar(200),
	   @telefone nvarchar(50),
	   @nome_fantasia nvarchar(200)

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO cliente(
			  codigo,
			  razao_social,
			  cnpj,
			  cpf,
			  rg,
			  endereco,
			  cep,
			  bairro,
			  cidade,
			  email,
			  responsavel,
			  telefone,
			  nome_fantasia)
		   VALUES
			 (@codigo,
			  @razao_social,
			  @cnpj,
			  @cpf,
			  @rg,
			  @endereco,
			  @cep,
			  @bairro,
			  @cidade,
			  @email,
			  @responsavel,
			  @telefone,
			  @nome_fantasia)
		end
		else
		begin
		   UPDATE cliente
		   SET  
			  razao_social   =@razao_social,
			  cnpj           =@cnpj,
			  cpf            =@cpf,
			  rg             =@rg,
			  endereco       =@endereco,
			  cep            =@cep,
			  bairro         =@bairro,
			  cidade         =@cidade,
			  email          =@email,
			  responsavel    =@responsavel,
			  telefone       =@telefone,
			  nome_fantasia  =@nome_fantasia 
		   WHERE codigo = @codigo
		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_categoria]    Script Date: 08/09/2012 10:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_categoria] 
			   @codigo int,
			   @descricao nvarchar(100),
			   @tipo_categoria int,
			   @texto nvarchar(3000)

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO categoria(
			   codigo, 
			   descricao ,
			   tipo_categoria ,
			   texto )
		   VALUES
					 (@codigo,
					  @descricao,
					  @tipo_categoria,
					  @texto)
		end
		else
		begin

		   UPDATE categoria
		   SET  
			   descricao      =@descricao,
			   tipo_categoria =@tipo_categoria,
			   texto          =@texto
		   WHERE codigo = @codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_bonusretorno]    Script Date: 08/09/2012 10:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_bonusretorno] 
			   @codigo int,
			   @codigo_anunciante int,
			   @nome nvarchar(100),
			   @telefone nvarchar(30),
			   @email nvarchar(200),
			   @data_impressao datetime

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO bonus_retorno(
			   codigo,
			   codigo_anunciante,
			   nome,
			   telefone,
			   email,
			   data_impressao)
		   VALUES
		   (@codigo,
			@codigo_anunciante,
			@nome,
			@telefone,
			@email,
			@data_impressao)
		end
		else
		begin

		   UPDATE bonus_retorno
		   SET  
		   codigo_anunciante=@codigo_anunciante,
		   nome             =@nome,
		   telefone         =@telefone,
		   email            =@email,
		   data_impressao   =@data_impressao      
		   WHERE codigo = @codigo
		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_bonus]    Script Date: 08/09/2012 10:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_bonus] 
			   @codigo int,
			   @codigo_anunciante int,
			   @bonus nvarchar(100),
			   @status int

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO bonus(
			   codigo ,
			   codigo_anunciante ,
			   bonus,
			   status)
		   VALUES
		   (@codigo ,
			@codigo_anunciante ,
			@bonus,
			@status)
		end
		else
		begin

		   UPDATE bonus
		   SET  
			   codigo_anunciante= @codigo_anunciante ,
			   bonus = @bonus,
			   status= @status
		   WHERE codigo = @codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_banner_categoria]    Script Date: 08/09/2012 10:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_banner_categoria] 
			   @codigo int,
			   @codigo_categoria int,
			   @codigo_banner int

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO banner_categoria(
			   codigo,
			   codigo_categoria ,
			   codigo_banner)
		   VALUES
					 (@codigo,
					  @codigo_categoria,
					  @codigo_banner)
		end
		else
		begin

		   UPDATE banner_categoria
		   SET  
			   codigo_categoria    =@codigo_categoria
		   WHERE codigo = @codigo AND codigo_banner = @codigo_banner 

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_banner]    Script Date: 08/09/2012 10:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_banner] 
			   @codigo int,
			   @codigo_cliente int,
			   @descricao nvarchar(100),
			   @codigo_local_banner int,
			   @largura int,
			   @altura int,
			   @status int

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO banner(
			   codigo, 
			   codigo_cliente, 
			   descricao ,
			   codigo_local_banner,
			   largura,
			   altura,
			   [status])
		   VALUES
					 (@codigo,
					  @codigo_cliente,
					  @descricao,
					  @codigo_local_banner,
					  @largura,
					  @altura,
					  @status)
		end
		else
		begin

		   UPDATE banner
		   SET  
		       codigo_cliente      =@codigo_cliente,
			   descricao           =@descricao,
			   codigo_local_banner =@codigo_local_banner,
			   largura             =@largura,
			   altura              =@altura,
			   [status]            =@status
		   WHERE codigo = @codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_anuncio_categoria]    Script Date: 08/09/2012 10:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_anuncio_categoria] 
			   @codigo int,
			   @codigo_anunciante int,
			   @codigo_categoria int
	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO anuncio_categoria(
					   codigo,  
					   codigo_anunciante,
					   codigo_categoria)
		   VALUES
					 (@codigo,
					  @codigo_anunciante,
					  @codigo_categoria)
		end
		else
		begin

		   UPDATE anuncio_categoria
		   SET  
			  codigo_categoria     = @codigo_categoria
		   WHERE codigo_anunciante = @codigo_anunciante

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_anuncio]    Script Date: 08/09/2012 10:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_anuncio] 
		@codigo int,
		@codigo_cliente int,
		@cep nvarchar(20),
		@bairro nvarchar(100),
		@cidade nvarchar(200),
		@endereco nvarchar(300),
		@telefone nvarchar(50),
		@email nvarchar(300),
		@site nvarchar(400),
		@status int,
		@senha nvarchar(50)
	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO anuncio(
			  codigo,
			  codigo_cliente,
			  cep,
			  bairro,
			  cidade,
			  endereco,
			  telefone,
			  email,
			  site,
			  status,
			  senha)
		   VALUES
			 (@codigo,
			  @codigo_cliente,
			  @cep,
			  @bairro,
			  @cidade,
			  @endereco,
			  @telefone,
			  @email,
			  @site,
			  @status,
			  @senha)
		end
		else
		begin
		   UPDATE anuncio
		   SET  
			  codigo_cliente =@codigo_cliente,
			  cep            =@cep,
			  bairro         =@bairro,
			  cidade         =@cidade,
			  endereco       =@endereco,
			  telefone       =@telefone,
			  email          =@email,
			  site           =@site,
			  status         =@status,
			  senha          =@senha
		   WHERE codigo = @codigo
		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_agenda]    Script Date: 08/09/2012 10:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_agenda] 
			   @codigo int,
			   @codigo_anuncio int,
			   @descricao nvarchar(300),
			   @data datetime,
			   @status int

	AS
	Begin
		if (@codigo = 0)
		begin
		   INSERT INTO agenda(
			   codigo_anuncio ,
			   descricao,
			   data,
			   [status])
		   VALUES
		   (@codigo_anuncio ,
			@descricao,
			@data,
			@status)
		end
		else
		begin

		   UPDATE agenda
		   SET  
			   codigo_anuncio= @codigo_anuncio,
			   descricao = @descricao,
			   data = @data,
			   [status]= @status			   
		   WHERE codigo = @codigo

		end
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_conta_acesso_anuncio]    Script Date: 08/09/2012 10:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_conta_acesso_anuncio] 
			   @codigo_anuncio integer
	AS
	Begin
	   DECLARE @acesso integer
	   DECLARE resultado CURSOR FOR SELECT acesso FROM anuncio WHERE codigo = @codigo_anuncio 
	   OPEN resultado FETCH NEXT FROM resultado INTO @acesso
	   CLOSE resultado
	   DEALLOCATE resultado
	   UPDATE anuncio set acesso = @acesso+1 where codigo = @codigo_anuncio

	end
GO
/****** Object:  StoredProcedure [dbo].[sp_consulta_tema]    Script Date: 08/09/2012 10:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_consulta_tema] 
			   @codigo_tema int,
			   @nome_fantasia varchar(300),
			   @ordem varchar(300)

	AS
	Begin
		if (@codigo_tema != 0)
		begin
          SELECT      t.codigo, c.nome_fantasia, t.cep, t.bairro, t.cidade, t.endereco, t.telefone, t.email, 
                      t.[site], t.[status], lo.descricao AS logo, t.codigo_cliente,t.descricao,t.foto
          FROM        dbo.tema AS t 
          INNER JOIN  dbo.cliente AS c ON t.codigo_cliente = c.codigo 
          INNER JOIN  dbo.logo AS lo ON lo.codigo_anuncio = t.codigo_cliente 
          LEFT OUTER JOIN dbo.tema_categoria AS tc ON tc.codigo_cliente = t.codigo_cliente
          where tc.codigo_tema=@codigo_tema and t.status=1  
          ORDER BY NEWID();				
          
		end
		if (@nome_fantasia != '0')
		begin
          SELECT      t.codigo, c.nome_fantasia, t.cep, t.bairro, t.cidade, t.endereco, t.telefone, t.email, 
                      t.[site], t.[status], lo.descricao AS logo, t.codigo_cliente,t.descricao,t.foto
          FROM        dbo.tema AS t 
          INNER JOIN  dbo.cliente AS c ON t.codigo_cliente = c.codigo 
          INNER JOIN  dbo.logo AS lo ON lo.codigo_anuncio = t.codigo_cliente 
          LEFT OUTER JOIN dbo.tema_categoria AS tc ON tc.codigo_cliente = t.codigo_cliente
          where c.nome_fantasia like '%'+ @nome_fantasia + '%' and status=1        
        	
		end
		if (@ordem != '0')
		begin
          SELECT      t.codigo, c.nome_fantasia, t.cep, t.bairro, t.cidade, t.endereco, t.telefone, t.email, 
                      t.[site], t.[status], lo.descricao AS logo, t.codigo_cliente,t.descricao,t.foto
          FROM        dbo.tema AS t 
          INNER JOIN  dbo.cliente AS c ON t.codigo_cliente = c.codigo 
          INNER JOIN  dbo.logo AS lo ON lo.codigo_anuncio = t.codigo_cliente 
          LEFT OUTER JOIN dbo.tema_categoria AS tc ON tc.codigo_cliente = t.codigo_cliente
          WHERE tc.codigo_tema = @codigo_tema and t.status=1 + @ordem;  
		end
		
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_consulta_convite]    Script Date: 08/09/2012 10:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_consulta_convite] 
			   @codigo_convite int,
			   @nome_fantasia varchar(300),
			   @ordem varchar(300)

	AS
	Begin
		if (@codigo_convite != 0)
		begin
          SELECT      cv.codigo, c.nome_fantasia, cv.cep, cv.bairro, cv.cidade, cv.endereco, cv.telefone, cv.email, 
                      cv.[site], cv.[status], lo.descricao AS logo, cv.codigo_cliente,cv.descricao,cv.foto
          FROM        dbo.convite AS cv 
          INNER JOIN  dbo.cliente AS c ON cv.codigo_cliente = c.codigo 
          INNER JOIN  dbo.logo AS lo ON lo.codigo_anuncio = cv.codigo_cliente 
          LEFT OUTER JOIN dbo.convite_categoria AS cc ON cc.codigo_cliente = cv.codigo_cliente
          where cc.codigo_convite=@codigo_convite and cv.status=1  
          ORDER BY NEWID();				
          
		end
		if (@nome_fantasia != '0')
		begin
          SELECT      cv.codigo, c.nome_fantasia, cv.cep, cv.bairro, cv.cidade, cv.endereco, cv.telefone, cv.email, 
                      cv.[site], cv.[status], lo.descricao AS logo, cv.codigo_cliente,cv.descricao,cv.foto
          FROM        dbo.convite AS cv 
          INNER JOIN  dbo.cliente AS c ON cv.codigo_cliente = c.codigo 
          INNER JOIN  dbo.logo AS lo ON lo.codigo_anuncio = cv.codigo_cliente 
          LEFT OUTER JOIN dbo.convite_categoria AS cc ON cc.codigo_cliente = cv.codigo_cliente
          where c.nome_fantasia like '%'+ @nome_fantasia + '%' and status=1        
        	
		end
		if (@ordem != '0')
		begin
          SELECT      cv.codigo, c.nome_fantasia, cv.cep, cv.bairro, cv.cidade, cv.endereco, cv.telefone, cv.email, 
                      cv.[site], cv.[status], lo.descricao AS logo, cv.codigo_cliente,cv.descricao,cv.foto
          FROM        dbo.convite AS cv 
          INNER JOIN  dbo.cliente AS c ON cv.codigo_cliente = c.codigo 
          INNER JOIN  dbo.logo AS lo ON lo.codigo_anuncio = cv.codigo_cliente 
          LEFT OUTER JOIN dbo.convite_categoria AS cc ON cc.codigo_cliente = cv.codigo_cliente
          WHERE cc.codigo_convite = @codigo_convite and cv.status=1 + @ordem;  
		end
		
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_consulta_anuncio]    Script Date: 08/09/2012 10:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_consulta_anuncio] 
			   @codigo_categoria int,
			   @nome_fantasia varchar(300),
			   @ordem varchar(300)

	AS
	Begin
		if (@codigo_categoria != 0)
		begin
          SELECT v.* FROM uguiadefestacuritiba.vw_anuncio v
          INNER JOIN dbo.anuncio_categoria AS ac ON ac.codigo_anunciante = codigo_cliente
          where ac.codigo_categoria=@codigo_categoria and status=1  
          ORDER BY NEWID();				
		end
		if (@nome_fantasia != '0')
		begin
			SELECT distinct v.* from uguiadefestacuritiba.vw_anuncio v
			INNER JOIN dbo.sinonimo_anuncio AS sa ON sa.codigo_anuncio = v.codigo 
			INNER JOIN dbo.sinonimo AS s ON s.codigo = sa.codigo_sinonimo 
			where s.sinonimo like '%'+ @nome_fantasia + '%' and status=1          

			union all

			SELECT distinct v.* FROM uguiadefestacuritiba.vw_anuncio v  
			where nome_fantasia like '%'+ @nome_fantasia + '%' and status=1        
		end
		if (@ordem != '0')
		begin
          SELECT v.* FROM uguiadefestacuritiba.vw_anuncio v
          INNER JOIN dbo.anuncio_categoria AS ac ON ac.codigo_anunciante = codigo_cliente
          WHERE codigo_categoria = @codigo_categoria and status=1 + @ordem;  
		end
		
	end
GO
