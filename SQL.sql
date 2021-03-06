USE [master]
GO
/****** Object:  Database [WebPhim]    Script Date: 7/29/2021 11:56:46 AM ******/
CREATE DATABASE [WebPhim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebPhim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebPhim.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebPhim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebPhim_log.ldf' , SIZE = 1344KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebPhim] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebPhim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebPhim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebPhim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebPhim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebPhim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebPhim] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebPhim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebPhim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebPhim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebPhim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebPhim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebPhim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebPhim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebPhim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebPhim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebPhim] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebPhim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebPhim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebPhim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebPhim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebPhim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebPhim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebPhim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebPhim] SET RECOVERY FULL 
GO
ALTER DATABASE [WebPhim] SET  MULTI_USER 
GO
ALTER DATABASE [WebPhim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebPhim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebPhim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebPhim] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebPhim] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebPhim', N'ON'
GO
USE [WebPhim]
GO
/****** Object:  Table [dbo].[Favorite]    Script Date: 7/29/2021 11:56:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](20) NULL,
	[VideoId] [nvarchar](20) NULL,
	[LikeDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Share]    Script Date: 7/29/2021 11:56:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](20) NULL,
	[VideoId] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[ShareDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/29/2021 11:56:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NULL,
	[Fullname] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Admin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Video]    Script Date: 7/29/2021 11:56:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[Id] [nvarchar](20) NOT NULL,
	[title] [nvarchar](20) NULL,
	[content] [nvarchar](max) NULL,
	[director] [nvarchar](30) NULL,
	[timee] [int] NULL,
	[languagee] [nvarchar](20) NULL,
	[review] [nvarchar](max) NULL,
	[trailer] [nvarchar](max) NULL,
	[img] [nvarchar](30) NULL,
	[tenloai] [nvarchar](30) NULL,
	[kieu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Favorite] ON 

INSERT [dbo].[Favorite] ([Id], [UserId], [VideoId], [LikeDate]) VALUES (161, N'ThienTX', N'VD2', CAST(N'2021-03-07' AS Date))
INSERT [dbo].[Favorite] ([Id], [UserId], [VideoId], [LikeDate]) VALUES (168, N'TuanPM', N'VD11', CAST(N'2021-03-09' AS Date))
INSERT [dbo].[Favorite] ([Id], [UserId], [VideoId], [LikeDate]) VALUES (169, N'TuanPM', N'VD9', CAST(N'2021-03-09' AS Date))
INSERT [dbo].[Favorite] ([Id], [UserId], [VideoId], [LikeDate]) VALUES (170, N'TuanPM', N'VD17', CAST(N'2021-03-09' AS Date))
INSERT [dbo].[Favorite] ([Id], [UserId], [VideoId], [LikeDate]) VALUES (171, N'TuanPM', N'VD12', CAST(N'2021-03-09' AS Date))
INSERT [dbo].[Favorite] ([Id], [UserId], [VideoId], [LikeDate]) VALUES (172, N'TuanPM', N'VD3', CAST(N'2021-03-09' AS Date))
INSERT [dbo].[Favorite] ([Id], [UserId], [VideoId], [LikeDate]) VALUES (174, N'TuanPM', N'VD2', CAST(N'2021-04-25' AS Date))
SET IDENTITY_INSERT [dbo].[Favorite] OFF
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'KhoaPH', N'thienhoa', N'Hoàng Khoa', N'khoa@gmail.com', 1)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'ThienTX', N'123', N'Xuân Thiện', N'thien@gmail.com', 0)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'TuanPM', N'123', N'Minh Tuấn', N'tuan@gmail.com', 0)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'Valne', N'123', N'ValneCường', N'cuong@gmail.com', 1)
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD1', N'The Machinic', N'The Mechanic (tựa trong tiếng Việt: Thợ máy, Sát thủ thợ máy hay Trừng phạt tội ác) là một bộ phim hành động, tâm lý Mỹ của đạo diễn Simon West thực hiện; phát hành vào năm 2011. The Mechanic là phim làm lại từ một bộ phim hành động cùng tên năm 1972; phiên bản làm lại này có sự tham gia của Jason Statham, Ben Foster, Donald Sutherland và Tony Goldwyn.', N'Simon West', 93, N'Anh', N'Arthur Bishop là một sát thủ chuyên nghiệp, anh rất khôn ngoan và nhanh nhẹn, sẵn sàng tiêu diệt bất cứ mục tiêu nào được giao. Một hôm nọ, thủ lĩnh Dean Sanderson trong tổ chức ra lệnh Bishop giết người bạn thân của anh là ông Harry McKenna vì nghi ngờ ông phản bội tổ chức, Dean cho Bishop xem hình ảnh 5 thành viên bị chết ở Nam Phi trong khi làm nhiệm vụ do bị tiết lộ bí mật. Bishop đành làm theo lệnh Dean, Harry tự tay đưa súng cho Bishop để anh ta bắn chết ông, trước khi chết Harry bảo Bishop hãy dàn xếp hiện trường như một vụ cướp xe.

Vào ngày đám tang Harry, Bishop đã gặp con trai của Harry là Steve McKenna, anh chàng này khát khao trở thành sát thủ và nhờ Bishop chỉ dạy. Chưa đầy một tháng mà Bishop đã đào tạo Steve trở thành sát thủ chuyên nghiệp giống mình, Bishop còn đưa Steve vào làm chung tổ chức. Khi nhiệm vụ được giao thì Bishop nhường cho Steve thử đi hành động một mình, mục tiêu là tên sát thủ Burke của tổ chức khác. Sau vài ngày Steve giả vờ kết bạn với Burke, Burke mời Steve về nhà. Tên Burke rất to con lực lưỡng, vì thế Bishop dặn Steve giết Burke bằng thuốc độc chứ đừng liều lĩnh đánh nhau với hắn. Steve không nghe lời Bishop, anh ta lấy dây nịt siết cổ Burke nhưng bị hắn đánh lại, Steve nhanh tay nhặt dụng cụ đâm chết Burke.

Nhiệm vụ tiếp theo được giao, Bishop cùng đi với Steve, hai người được lệnh khử gã mục sư Andrew Vaughn. Bishop và Steve lên tòa nhà cao tầng, lẻn vào phòng riêng của Vaughn rồi làm hắn ngạt thở đến chết. Bọn vệ sĩ đi vào phát hiện Bishop và Steve, một trận đấu súng diễn ra. Bishop và Steve vẫn chạy thoát được, hai người hẹn gặp nhau tại nhà Bishop vào sáng mai. Trên đường về Bishop chạm trán Sebastian - một đồng nghiệp cũ, ông này nói Dean từng đưa ông ta số tiền lớn để giết bốn thành viên còn lại ở Nam Phi. Bishop nhận ra mình đã bị Dean lừa giết Harry, anh tức giận giết gã Sebastian đúng lúc ông ta tấn công anh. Sau đó Dean gửi đội sát thủ giỏi nhất của hắn đến xử lý Bishop và Steve nhưng cả hai đều tiêu diệt hết bọn này, họ lên kế hoạch giết Dean trả thù cho ông Harry.', N'https://www.youtube.com/embed/CMklQNn0OH0', N'hói.jpg', N'Hành động', N'moi')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD10', N'MAD MAX', N'Max điên: Con đường tử thần[5][6] (tiếng Anh: Mad Max: Fury Road) là một bộ phim hành động 2015 do George Miller đạo diễn và sản xuất, các biên kịch gồm Miller, Brendan McCarthy và Nico Lathouris. Đây là phần thứ tư của loạt sản phẩm Mad Max do Kennedy Miller Mitchell, RatPac-Dune Entertainment và Village Roadshow Pictures của Mỹ và Úc liên doanh sản xuất. Phim có sự tham gia của các diễn viên Tom Hardy, Charlize Theron, Nicholas Hoult, Hugh Keays-Byrne, Josh Helman, Nathan Jones, Zoë Kravitz, Rosie Huntington-Whiteley.', N'George Miller', 120, N'Anh', N'Phim mới lấy bối cảnh thế giới ở thời kỳ văn minh nhân loại đã sụp đổ, con người trở nên mất nhân tính và cuồng điên trong những trận chiến để giành giật sự sống, các nhu yếu phẩm như nước và xăng. Thế giới giờ là sa mạc mênh mông, con người chia làm nhiều phe chuyên giết nhau để tồn tại. Đứng giữa cuộc chạy đua vũ trang và phản kháng khốc liệt. Người hùng cô độc Max Rockatansky (Tom Hardy) trên đường lang thang để trốn chạy những ám ảnh từ quá khứ đã chạm trán đám quân lính (War Boys) của bạo chúa Immortan Joe (Hugh Keays-Byrne), không may, Max bị chúng bắt giữ làm tù binh. Anh bị biến thành “túi máu” cho một tên War Boys lái xe ốm yếu mang tên Nux (Nicholas Hoult). Thành trì của Immortan Joe là một xã hội điên loạn bất công khi Immortan Joe là người kiểm soát nguồn nước và quyết định cung cấp cho người dân khi nào hắn muốn. Để thoát khỏi ách độc tài này, chỉ huy Furiosa (Charlize Theron) – đã lợi dụng cơ hội khi làm nhiệm vụ để chạy trốn cùng với năm người vợ của Immortan Joe (Những người mà hắn coi là "máy đẻ") để trở về "Vùng xanh". Lãnh chúa Joe phát hiện ra điều này và kéo toàn bộ đội quân của mình để cướp lại những vật sở hữu của hắn, nhưng không may trong lúc truy đuổi Furiosa lại gặp một trận bão sa mạc. Sau khi trận bão đi qua Max tỉnh dậy trong xe cùng Nux - lúc này đã bất tỉnh, Max gặp Furiosa và giữa 2 người xảy ra trận đánh nhau rất dữ dội, Max là người chiến thắng và cướp đi chiếc Chiến Xa nhưng nó không thể chạy nếu thiếu Furiosa nên Max bắt buộc phải để Furiosa và năm cô vợ của Joe lên xe, và bỏ lại Nux. Dù bị truy đuổi bởi Joe và các bộ tộc, nhưng Max, Furiosa - đã chịu hợp tác với nhau, 4 cô vợ của Joe (đã chết một người) và Nux - lúc này đã lên được xe và có cảm tình với Capable - một trong năm cô vợ của Joe. Cuối cùng họ cũng đã đến được " Vùng Xanh" và gặp bộ tộc Vuvalini (bộ tộc của Furiosa) qua đó họ biết được, nơi đó họ đã đi qua và đã trở thành vùng đất chết. Furiosa cùng các Vuvalini và các cô vợ quyết định đi tìm một nơi mà họ mơ ước, nhưng Max đã khuyên Furiosa rằng nên quay trở lại thành trì của Joe vì nếu cô tiếp tục đi trong vài chục ngày nữa chẳng có gì ngoài muối và cát. Họ quyết định quay trở lại trên chiếc Chiến xa và bị truy đuổi bởi Joe và các bộ lạc, Furiosa bị thương nghiêm trọng, Joe vượt lên chiếc Chiến xa, trong lúc chiến đấu với đứa con trai khổng lồ của Joe, Furiosa nhờ Nux lái dùm chiếc Chiến xa và sẽ tự mình đương đầu với Joe, Furiosa giết được Joe trên chính chiếc xe của hắn. Trong lúc Max, những người bộ lạc Vuvalini, các cô vợ của Joe,đang di chuyển sang xe của Joe, thì con trai của Joe tỉnh dậy sau khi bị Max đánh ngất đi. Nux hi sinh thân mình để chặn hẻm núi tạo điều kiện để chiếc Chiến Xa vượt qua và thoát khỏi sự truy đuổi của đoàn người của Joe và các bộ tộc còn lại. Trong lúc truyền máu cho Furiosa - đang bị thương nghiêm trọng, Max đã nói cho cô biết tên mình. Về được đến thành trì những người sống dưới thành trì của Joe vui mừng khi thấy xác chết của hắn, Furiosa và các cô vợ được sự hoan nghênh của mọi người, nhưng Max bỏ đi trong ánh nhìn của Furiosa trước khi biến mất vào đám đông.', N'https://www.youtube.com/embed/1VgYndcAdAE', N'rap5.jpg', N'Hành động', N'rap')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD11', N'BLACK PANTHER', N'Black Panther: Chiến binh Báo Đen (tiếng Anh: Black Panther) là một phim của điện ảnh Hoa Kỳ dựa trên nhân vật siêu anh hùng cùng tên của hãng Marvel Comics, sản xuất bởi Marvel Studios và phân phối bởi Walt Disney Studios Motion Pictures. Đây là bộ phim thứ 18 trong Vũ trụ Điện ảnh Marvel (MCU), đồng thời đánh dấu bộ phim siêu anh hùng da màu đầu tiên.', N'Ryan Coogler', 134, N'Anh', N'Từ nhiều thế kỉ trước, đã xảy ra cuộc chiến tranh năm tộc người châu Phi gần thiên thạch có chứa Vibranium. Đã có một chiến binh nuốt phải Tâm Hình Thảo bị ảnh hưởng bởi kim loại trên và nhận được sức mạnh siêu nhiên, trở thành Chiến binh Báo Đen đầu tiên và trở thành vua. Ông đã thống nhất các bộ tộc trừ tộc Jabari, tạo nên quốc gia mang tên Wakanda. Người Wakanda dùng Vibranium đã phát triển công nghệ, đồng thời tự cô lập mình với thế giới như một "Thế giới thứ ba".

Trong khi làm việc tại Oakland, California vào cuối thế kỉ XX, hoàng tử N''Jobu nhận ra chính sách cô lập khỏi thế giới chỉ mang đến tác động tiêu cực cho Wakanda và thề sẽ chia sẻ công nghệ đó đến với thế giới. N''Jobu bắt tay với một tay buôn bán chợ đen là Ulysses Klaue để xâm nhập vào Wakanda và lấy đi một lượng lớn Vibranium.

Năm 1992, khi biết được việc làm của em trai mình, nhà vua T''Chaka đã tìm đến N''Jobu. Trước sự đe dọa sẽ giết Zuri, người bạn trung thành của mình, T''Chaka đã miễn cưỡng giết N''Jobu, đồng thời bỏ rơi Erik, con trai của N''Jobu nhằm che đậy người dân Wakanda khỏi sự thật.

Sau sự kiện trong Captain America: Nội chiến siêu anh hùng,[5] khi T''Chaka chết dưới tay của Helmut Zemo, người con là T''Challa đã trở về Wakanda để tiếp tục điều hành đất nước. Sau khi làm việc với Okoye, thủ lĩnh của Đội quân Dora Milaje và người yêu cũ của mình là Nakia nhằm kí kết một hiệp định bí mật tại khu rừng Sambisa, Nigeria. Tại đây, anh được đoàn tụ với mẹ là nữ hoàng Ramonda và em gái, công chúa Shuri, đồng thời biết được rằng M''Baku, thủ lĩnh của bộ lạc Jabari đang thách đấu cho ngai vàng. Trận đấu diễn ra và T''Challa đã giành chiến thắng, giữ được ngôi vua mới.

Cũng trong thời điểm đó, Klaue và Erik Stevens (với biệt danh là Killmonger) đang trộm Vibranium ở Bảo tàng Vương Quốc Anh. Khi biết tin này, W''Baki, một người bạn của T''Challa, đồng thời mất đi người thân bởi những thương vụ trên đã thúc giục nhà vua phải đòi lại công bằng cho mình. T''Challa, Okoye và Nakia lên kế hoạch tập kích Klaue tại một sòng bài ở Busan, Hàn Quốc, nơi mà hắn sẽ bán đồ mình đã trộm cho một người mua không rõ danh tính. Kế hoạch đổ bể khi T''Challa nhận ra người mua là đặc vụ của CIA, Everett Ross. Như một điều tất yếu, Okoye buộc phải thay đổi kế hoạch, dẫn đến một vụ đấu súng xảy ra.', N'https://www.youtube.com/embed/xjDjIWPwcPU', N'rap6.jpg', N'Hành động', N'rap')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD12', N'BLINDSPOT', N'Blindspot (Điểm mù) là một bộ phim truyền hình tội phạm của Mỹ được tạo ra bởi Martin Gero, với sự tham gia của Sullivan Stapleton và Jaimie Alexander.[1] Bộ phim được công chiếu vào ngày 21 tháng 9 năm 2015. Một đơn đặt hàng chín trở lại đã được đưa ra vào ngày 9 tháng 10 năm 2015, đưa mùa đầu tiên lên tổng cộng 22 tập, cộng với tập bổ sung đưa thứ tự đến 23 tập.[2][3]

Vào ngày 10 tháng 5 năm 2018, NBC đã gia hạn loạt phim cho mùa thứ tư, dự kiến ra mắt vào ngày 12 tháng 10 năm 2018.', N'Finnian Murray', 67, N'Anh', N'Blindspot tập trung vào một người phụ nữ xăm hình bí ẩn được tìm thấy khỏa thân bên trong một túi du lịch ở Quảng trường Thời đại của FBI, mà không có hồi ức về quá khứ của riêng mình hoặc danh tính của riêng mình. Họ phát hiện ra rằng hình xăm của cô có chứa manh mối về tội ác họ sẽ phải giải quyết.', N'https://www.youtube.com/embed/RqZkit-aCTo', N'bo1.jpg', N'Hành động', N'bo')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD13', N'PRISON BREAK', N'Vượt ngục (tiếng Anh: Prison Break) là loạt phim truyền hình dài tập được sản xuất bởi Paul Scheuring và được kênh truyền hình Fox công chiếu vào ngày 29 tháng 8 năm 2005. Nội dung xoay quanh hai anh em: một người bị kết án tử hình vì một tội ác mình không gây ra, và người kia lập kế hoạch để giải thoát anh trai. Bộ phim do Adelstein-Parouse Productions, Original Television và hãng 20th Century Fox Television hợp tác sản xuất.', N'Paul Scheuring', 90, N'Anh', N'Lincoln Burrows (Dominic Purcell) bị cáo buộc giết Terrence Steadman (Jeff Perry), anh trai của Phó Tổng thống Hoa Kỳ. Lincoln bị kết án tử hình và giam giữ tại trại giam Fox River để chờ thi hành án. Em trai của Lincoln, kỹ sư thông minh Michael Scofield (Wentworth Miller) tin rằng anh trai mình vô tội và lập tức lên kế hoạch giải cứu anh trai ra khỏi nhà tù. Để vào được Fox River, Michael thừa nhận mình phạm tội cướp có vũ trang. Trong tù, Michael làm bạn với bác sĩ Sara Tancredi (Sarah Wayne Callies) khi giả vờ bị bệnh tiểu đường để được ra vào bệnh xá hàng ngày. Cuộc chiến đầu của hai anh em nhằm tránh việc thi hành án được hỗ trợ bởi người bạn thân Veronica Donovan (Robin Tunney), người bắt đầu để điều tra về âm mưu gài bẫy Lincoln. Tuy nhiên, công việc của họ luôn bị cản trở bởi một tổ chức bí mật có tên gọi The Company. The Company chịu trách nhiệm về việc gài bẫy Lincoln, và họ làm vậy để buộc cha của Lincoln, Aldo Burrows, một thành viên cũ của The Company phải ra mặt. Hai anh em, cùng với sáu tù nhân khác: Fernando Sucre (Amaury Nolasco), Theodore "T-Bag" Bagwell (Robert Knepper), Benjamin Miles "C-Note" Franklin (Rockmond Dunbar), David "Tweener" Apolskis (Lane Garrison), John Abruzzi (Peter Stormare), và Charles "Haywire" Patoshik (Silas Weir Mitchell), đã vượt ngục thành công vào cuối phần 1', N'https://www.youtube.com/embed/-skP2oHuVlM', N'bo2.jpg', N'Hành động', N'bo')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD14', N'THE VIETNAM WAR', N'Chiến tranh Việt Nam (1955–1975) là giai đoạn thứ hai và khốc liệt nhất trong các cuộc Chiến tranh tại Đông Dương (1945–1979). Chiến tranh bắt đầu ngày 1 tháng 11 năm 1955 khi Phái bộ Cố vấn và Viện trợ Quân sự Hoa Kỳ (MAAG) được thành lập ở miền Nam Việt Nam và kết thúc với sự kiện 30 tháng 4 năm 1975 khi chính quyền Việt Nam Cộng hòa đầu hàng Chính phủ Cách mạng lâm thời Cộng hòa miền Nam Việt Nam. Đây là cuộc chiến giữa hai bên: một bên là Hoa Kỳ, Việt Nam Cộng hòa và các đồng minh như Úc, Hàn Quốc, Thái Lan, Philippines, New Zealand cũng như một số đồng minh chống cộng khác;[56][57] một bên là liên minh Việt Nam Dân chủ Cộng hòa-Mặt trận Dân tộc Giải phóng miền Nam-Chính phủ Cách mạng lâm thời Cộng hòa miền Nam Việt Nam do Đảng Lao động Việt Nam lãnh đạo với sự viện trợ từ các nước xã hội chủ nghĩa, đặc biệt là Liên Xô[58] và Trung Quốc', N'Ken Burns và Lynn Novick', 10, N'Tiếng Việt', N'Bộ phim tốn kinh phí khoảng 30 triệu đô la và phải mất hơn 10 năm để thực hiện[4]. The Vietnam War được sản xuất bởi hai đạo diễn Ken Burns và Lynn Novick, cả hai đã từng cộng tác sản xuất các phim The War (2007), Baseball: The 10th Inning (2010) và Prohibition (2011).

Trong suốt các tập, phim phỏng vấn với 79 nhân chứng, trong đó có nhiều người Mỹ đã chiến đấu trong chiến tranh Việt Nam hoặc tham gia phong trào phản chiến, đặc biệt là quan điểm của những người Việt Nam thuộc 2 phe Việt Nam Dân chủ Cộng hòa và Việt Nam Cộng hòa.[5]

Các nhà làm phim cho biết, toàn bộ phim cũng đã được lấy bởi hơn 24.000 bức ảnh và phải mất 1.500 giờ lưu trữ.[4] Trong 18 tiếng của bộ phim tài liệu, có những cảnh chiến đấu chi tiết ghi lại các hành động từ nhiều góc nhìn khác nhau[6]. Kịch bản của phim được viết bởi Geoffrey Ward do Peter Coyote dẫn chuyện.', N'https://www.youtube.com/embed/iWFzaUlZz-k', N'bo3.jpg', N'Kí sự', N'bo')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD15', N'BAND OF BROTHER', N'Band of Brothers là một loạt phim truyền hình Mỹ nói về những người lính ở đại đội Easy, Sư đoàn lính dù 101 của Mỹ trong Thế chiến thứ 2, từ cuộc đổ bộ bằng dù xuống Normandy, Pháp, chiến dịch Market Garden đến những trận đánh ở Bastogne và kết thúc cuộc chiến ở Đức. Bộ phim được sản xuất dựa trên cuốn sách nổi tiếng cùng tên của Stephen Ambrose.

Phim trình chiếu lần đầu vào năm 2001 và được phát lại nhiều lần từ đó đến nay. Mở đầu bộ phim thường là đoạn phỏng vấn những cựu chiến binh của đại đội Easy. Họ là những người còn sống và kể lại cho chúng ta nghe những gian nan mà chính họ phải nếm trải. Tuy nhiên, danh tính của những cựu chiến binh này được giữ kín cho đến gần hết phim, khi đoạn phỏng vấn cuối cùng có tên của những nhân vật đã xuất hiện tương ứng với những người lính thật. Phim do Tom Hanks và một số người khác làm đạo diễn.', N'	Phil Alden Robinson', 10, N'Anh', N'Band of Brothers là một loạt phim truyền hình Mỹ nói về những người lính ở đại đội Easy, Sư đoàn lính dù 101 của Mỹ trong Thế chiến thứ 2, từ cuộc đổ bộ bằng dù xuống Normandy, Pháp, chiến dịch Market Garden đến những trận đánh ở Bastogne và kết thúc cuộc chiến ở Đức. Bộ phim được sản xuất dựa trên cuốn sách nổi tiếng cùng tên của Stephen Ambrose.

Phim trình chiếu lần đầu vào năm 2001 và được phát lại nhiều lần từ đó đến nay. Mở đầu bộ phim thường là đoạn phỏng vấn những cựu chiến binh của đại đội Easy. Họ là những người còn sống và kể lại cho chúng ta nghe những gian nan mà chính họ phải nếm trải. Tuy nhiên, danh tính của những cựu chiến binh này được giữ kín cho đến gần hết phim, khi đoạn phỏng vấn cuối cùng có tên của những nhân vật đã xuất hiện tương ứng với những người lính thật. Phim do Tom Hanks và một số người khác làm đạo diễn.', N'https://www.youtube.com/embed/aH06LWZs-Ys', N'bo4.jpg', N'Hành động', N'bo')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD16', N'THE WALKING DEAD', N'The Walking Dead là một loạt phim truyền hình Mỹ thuộc thể loại kinh dị và hậu tận thế của kênh AMC, dựa trên seri truyện tranh cùng tên do Robert Kirkman, Tony Moore và Charlie Adlard sáng tạo. Lấy bối cảnh đại dịch zombie, bộ phim quy tụ một dàn diễn viên đông đảo vào vai những người cố gắng sống sót trước nguy cơ luôn rình rập: bị tấn công bởi những thây ma ăn thịt – thường được gọi bằng cái tên "walkers". Không dừng lại ở đó, trong hoàn cảnh trật tự xã hội đã hoàn toàn sụp đổ, những người còn sống này tập hợp thành nhiều nhóm và cộng đồng với luật lệ cũng như tôn chỉ riêng biệt, do đó liên tục xảy ra xung đột và thù địch giữa các cộng đồng. Nam diễn viên Andrew Lincoln đảm nhiệm vai chính Rick Grimes cho đến khi anh rời đi vào cuối mùa thứ chín. Ngoài Lincoln, các diễn viên cũng đã gắn bó nhiều năm với bộ phim bao gồm Norman Reedus, Steven Yeun, Chandler Riggs, Melissa McBride, Lauren Cohan, Danai Gurira, Josh McDermitt và Christian Serratos.', N'
Andrew Lincoln', 145, N'Anh', N'Tại Mỹ, The Walking Dead được phát sóng độc quyền trên kênh AMC và chiếu quốc tế bởi Fox Networks Group. Tập phim đầu tiên công chiếu ngày 31 tháng 10 năm 2010. Mùa thứ mười phát sóng vào ngày 6 tháng 10 năm 2019 và AMC đã xác nhận việc thực hiện mùa 11 – cũng là mùa cuối cùng. Nhiều sản phẩm liên quan đến loạt phim được AMC phát triển, trong đó có seri phim ngoại truyện Fear the Walking Dead ra mắt vào ngày 23 tháng 8 năm 2015 và đang được làm mới cho mùa thứ sáu. Phần phim ngoại truyện thứ hai mang tên The Walking Dead: World Beyond dự kiến ​​khởi chiếu vào năm 2020. AMC đã công bố kế hoạch sản xuất ba bộ phim tiếp nối câu chuyện của Rick sau khi Lincoln rời The Walking Dead. Năm 2020, thêm hai phần phim ngoại truyện được công bố: một xoay quanh hai nhân vật của Reedus và McBride; một kể về quá khứ của từng nhân vật và thuộc thể loại tuyển tập.

AMC Studios thực hiện quá trình sản xuất cho The Walking Dead tại bang Georgia, Hoa Kỳ. Hầu hết các cảnh quay diễn ra trong không gian ngoài trời rộng lớn của Riverwood Studios gần Senoia, Georgia. Frank Darabont, tác giả loạt truyện tranh gốc, cũng là giám đốc sản xuất của mùa đầu tiên. Tuy nhiên, mâu thuẫn giữa Darabont và AMC buộc ông phải rời khỏi loạt phim, dẫn đến việc ông và một số người khác nhiều lần đâm đơn kiện nhà đài này. Sau Darabont, Glen Mazzara, Scott M. Gimple và Angela Kang đảm nhiệm vai trò giám đốc sản xuất của The Walking Dead.

Kể từ mùa thứ ba, The Walking Dead thu hút lượng khán giả từ ​​18 đến 49 tuổi nhiều nhất trong số bất kỳ bộ phim truyền hình cáp hoặc truyền hình mặt đất nào, dù vậy số lượng người xem đã giảm trong các mùa sau. Ngoài ra, nhìn chung loạt phim cũng được các nhà phê bình đánh giá tích cực,[3] mang về nhiều đề cử cho các giải thưởng, trong đó bao gồm đề cử của lễ trao giải Quả cầu vàng cho Phim truyền hình hay nhất – Chính kịch và Hiệp hội biên kịch Mỹ cho Seri mới.', N'https://www.youtube.com/embed/R1v0uFms68U', N'bo5.jpg', N'Khoa học viễn tưởng', N'bo')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD17', N'24H', N'24 là một bộ phim truyền hình hành động, gián điệp, chính trị dài tập của Mỹ được sản xuất và phát sóng trên kênh Fox, ý tưởng phim do Joel Surnow và Robert Cochran đồng sáng tạo. Nam Diễn viên Kiefer Sutherland là người thủ vai chính Jack Bauer trong phim, một đặc vụ chống khủng bố. Mỗi phần phim gồm có 24 tập, tương ứng 24 giờ trong cuộc đời của Bauer, sử dụng phương pháp tường thuật thời gian thực. Được phát sóng lần đầu tiên vào ngày 6 tháng 11 năm 2001, trải qua 8 phần bộ phim đã phát sóng 192 tập. Tập cuối cùng trong phần 8 được phát sóng vào ngày 24 tháng 5 năm 2010. Thêm vào đó, tập phim 24: Redemption được phát sóng giữa phần 6 và 7 vào ngày 23 tháng 11 năm 2008. 24 đã trở lại với 12 tập phim đặc biệt trong 24: Live Another Day, lên sóng từ ngày 5 tháng 5 tới ngày 14 tháng 7 năm 2014. Kiefer Sutherland không trở lại trong loạt phim ngoại truyện là 24: Legacy và có một dàn Diễn viên và nhân vật hoàn toàn mới. Phim được công chiếu vào ngày 5 tháng 2 năm 2017, ngay sau trận Super Bowl LI. Sau khi 24: Legacy bị ngừng sản xuất vào tháng 6 năm 2017, Fox xác nhận rằng họ đang lên kế hoạch phát triển một hướng đi mới cho loạt phim', N'Joel Surnow', 205, N'Anh', N'Đặc vụ Bauer làm việc cho tổ chức Counter Terrorist Unit (tạm dịch là Đơn vị chống khủng bố) tại Los Angeles. Bauer là một đặc vụ đầy kinh nghiệm và thành thạo trong cách tiếp cận cũng như tra khảo những đối tượng khủng bố nguy hiểm, nhưng đôi khi những cách này cũng rất tàn bạo. Hầu hết trong suốt cả loạt phim, yếu tố cốt truyện chính diễn ra giống như một bộ phim về chính trị. Còn cốt truyện điển hình trong phim là Bauer luôn phải chạy đua với thời gian trong nỗ lực ngăn chặn nhiều âm mưu khủng bố khác nhau bao gồm: âm mưu ám sát tổng thống, vũ khí hủy diệt hàng loạt, khủng bố bằng vũ khí sinh học, tấn công mạng Internet,... cũng như những âm mưu đối phó với chính phủ và tham nhũng.

24 đã nhận được những lời khen ngợi từ phía các nhà phê bình phim cũng như khán giả truyền hình cùng với đó là hàng loạt giải thưởng qua các phần phim. Khi phần 8 kết thúc, 24 đã trở thành bộ phim truyền hình về gián điệp và chống khủng bố dài nhất nước Mỹ, vượt qua cả hai loạt phim truyền hình trong thập niên 1960 là Mission: Impossible và The Avengers.', N'https://www.youtube.com/embed/e1Dam6exiYE', N'bo6.jpg', N'Hành động', N'bo')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD2', N'John Wick', N'John Wick là một loạt tác phẩm giả tưởng thuộc thể loại hành động giật gân của Mỹ, được tạo ra bởi Derek Kolstad và thuộc sở hữu của Summit Entertainment. Nhân vật chính của sê-ri là John Wick (Keanu Reeves thủ vai), một cựu sát thủ trả thù những kẻ đã giết chó và trộm xe của mình.', N'Derek Kolstad', 122, N'Anh', N'Bốn ngày sau sự kiện của phần phim trước, cựu sát thủ John Wick đã lấy lại chiếc xe hơi Mustang ở địa bàn của Abram Tarasov, em trai của Viggo và chú của Iosef. John hạ gục hết thuộc hạ của Abram trong cuộc giao chiến dữ dội khiến chiếc Mustang bị dập nát. John sau đó chấm dứt mối thù với nhà Tarasov và quay về nhà.

John giao chiếc Mustang cho Aurelio sửa chữa. Đêm đó Santino D''Antonio - tên trùm tội phạm người Ý ghé nhà John. Santino đưa ra huyết ấn mà John đã giao cho hắn năm xưa để đổi lấy việc được quy ẩn nhằm yêu cầu John làm giúp hắn một việc, nhưng John từ chối vì cho rằng mình đã bỏ nghề. Santino sau đó phá hủy ngôi nhà của John với khẩu súng phóng lựu.

Winston, quản lý của khách sạn Continental New York, nhắc cho John nhớ hai nguyên tắc: không được giết chóc trong Continental và phải biết tôn trọng huyết ấn. John đồng ý đến gặp Santino để nhận nhiệm vụ. Santino muốn John giết chết chị gái của hắn là Gianna D''Antonio, để hắn có thể thay thế chị hắn lên nắm quyền tổ chức mafia Ý. Santino cử Ares, nữ vệ sĩ bị câm của hắn, đi theo giám sát John.

Ở Rome, John thâm nhập vào bữa tiệc của Gianna và đối mặt với cô trong phòng riêng. Gianna quyết định tự tử bằng cách cắt tay. John bắn thêm một phát súng để đảm bảo cô chết thật sự, xem như hoàn thành nhiệm vụ. Khi đang rời đi, John bị đám thuộc hạ của Santino phục kích, chúng muốn giết anh bịt đầu mối. John tiêu diệt rất nhiều tên mafia rồi bị Cassian - vệ sĩ thân tín của Gianna đuổi theo. John và Cassian đánh nhau cho đến khi rơi vào khách sạn Continental. Giống như khách sạn Continental New York, khách sạn ở Rome cũng có nội quy cấm giết chóc, buộc John và Cassian phải ngừng đánh nhau. Cả hai cùng ngồi uống rượu, Cassian thề sẽ trả thù cho Gianna.', N'https://www.youtube.com/embed/XGk2EfbD_Ps', N'john wick.jpg', N'Hành động', N'moi')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD3', N'King Kong', N'King Kong có nghĩa là Vua Kông là một Kaiju với hình dáng một loài khỉ không đuôi (hoặc khỉ đột) khổng lồ đã xuất hiện trên nhiều phương tiện thông tin đại chúng kể từ năm 1933. Nhân vật này xuất hiện lần đầu tiên trong phim điện ảnh King Kong vào năm 1933 và đã nhận được nhiều lời khen ngợi tích cực. Phim đã được làm lại vào năm 1976 và 2005. King Kong đã trở thành một trong những biểu tượng điện ảnh lớn nhất trên thế giới, tạo cảm hứng cho vô số các phần phim tiếp nối, phim làm lại, phim ăn theo, hoạt hình, tiểu thuyết, truyện tranh, nhạc kịch...[1] Vai trò của King Kong khá đa dạng theo từng phim, đôi khi là một con quái điên, đôi khi lại là một nhân vật phản anh hùng.', N'Edgar Wallace', 120, N'Anh', N'Vào năm 1944, hai phi công chiến đấu thời Thế chiến II, phi công Hoa Kỳ Hank Marlow và phi công Nhật Bản Gunpei Ikari, đã nhảy dù xuống một hòn đảo hoang nằm ở đâu đó giữa Thái Bình Dương sau một trận không chiến. Hai phi công sau đó rượt đuổi nhau và đánh cận chiến nhưng cuộc chiến bị gián đoạn bởi sự xuất hiện của một con vượn (khỉ đột) khổng lồ cao 100 feet.

Năm 1973, tức 29 năm sau, Bill Randa (người đứng đầu tổ chức Monarch của chính phủ Hoa Kỳ) lên kế hoạch tìm kiếm những quái vật nguyên thủy tại một nơi gọi là “Đảo Đầu lâu” mới được phát hiện gần đây. Cựu đại úy Không quân Anh James Conrad đã được Randa thuê để làm người hướng dẫn cho cuộc thám hiểm. Randa còn tuyển dụng thêm cả Sky Devils, một phi đội trực thăng do Trung tá Preston Packard chỉ huy cùng với tay phụ tá, cơ trưởng Jack Chapman và Earl Cole hộ tống họ đến hòn đảo. Nhóm thám hiểm còn có sự tham gia của một nhiếp ảnh gia là Mason Weaver.

Khi đến Đảo Đầu lâu, người của Packard bắt đầu thả các quả bom nổ dò địa chấn do nhà địa chấn học Houston Brooks phát minh để xác định xem nền đất có rỗng không và chứng minh cho lý thuyết “Trái đất rỗng” của Brooks, bất chấp sự phản đối của Conrad. Trực thăng đột nhiên bị tấn công bởi một con vượn khổng lồ, nhiều máy bay bị phá hủy và nhiều người thiệt mạng, những người sống sót sau khi đổ bộ xuống đảo chia thành hai nhóm. Hi vọng duy nhất của những người sống sót là được cứu hộ nhờ một nhóm tiếp tế sẽ đến ở phía Bắc của hòn đảo trong ba ngày tới. Randa tiết lộ cho Packard biết sự liên kết bí mật của ông với tổ chức chính phủ Monarch và mục đích thực sự của cuộc thám hiểm là để có được bằng chứng về sự tồn tại của những quái vật bị lãng quên.', N'https://www.youtube.com/embed/94pL8kLMCWM', N'king kong.jpg', N'Khoa học viễn tưởng', N'moi')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD4', N'Frozen', N'Nữ hoàng băng giá (còn gọi là Băng giá, tiếng Anh: Frozen) là phim điện ảnh nhạc kịch kỳ ảo sử dụng công nghệ hoạt hình máy tính của Mỹ do Walt Disney Animation Studios sản xuất và Walt Disney Pictures phát hành vào năm 2013.[5] Đây là bộ phim hoạt hình chiếu rạp thứ 53 trong series Walt Disney Animated Classics. Lấy cảm hứng từ câu chuyện cổ tích Bà chúa Tuyết của nhà văn Hans Christian Andersen, bộ phim kể về một nàng công chúa dũng cảm lên đường dấn thân vào một cuộc hành trình gian khó với một anh chàng miền núi cường tráng, dễ rung động nhưng ban đầu hơi thô lỗ, cùng chú tuần lộc trung thành của mình và một chàng người tuyết vui nhộn tình cờ gặp để đi tìm người chị gái đang phải sống một mình trên núi, một nữ hoàng sở hữu sức mạnh tạo ra băng giá đã vô tình khiến cả vương quốc chìm trong mùa đông vĩnh cửu.', N'Chris Buck', 99, N'Anh', N'Bộ phim mở đầu với cảnh một nhóm người đang khoét băng thành những tảng nước đá lớn, mang đi bán kiếm tiền. Trong số đó có Kristoff hồi còn nhỏ và chú tuần lộc của mình tên Sven.

Cách đó không xa, Elsa là công chúa vương quốc Arendelle, mang trong mình sức mạnh tạo ra băng giá. Một đêm nọ, khi đang chơi đùa, nàng vô tình làm bị thương em gái mình là Anna. Nhà vua và hoàng hậu nhờ tới sự giúp đỡ của đám thạch yêu tinh; và vị trưởng tộc của họ là ông Pabbie lớn, đã chữa lành cho Anna và xoá đi mọi ký ức của nàng về phép thuật của chị gái. Ông cũng nói với Elsa rằng rất may phép thuật chỉ tác động tới đầu Anna, nên ông có thể chữa được, nhưng nếu đó là trái tim thì sẽ khó qua khỏi; hơn nữa sức mạnh của nàng sẽ chỉ lớn dần lên theo thời gian và nàng phải học cách kiểm soát nó: nỗi sợ hãi chính là kẻ thù của nàng. Quyết định giấu kín món quà đặc biệt của con gái cho tới khi nàng học được cách điều khiển nó, gia đình hoàng gia đã ngăn cách hai nàng công chúa với thế giới bên ngoài. Họ lớn lên chỉ trong bốn bức tường của lâu đài mà thôi. Elsa sợ rằng mình sẽ lại làm ai đó bị thương thêm một lần nữa, nên hầu như nàng chỉ sống một mình trong phòng. Anna không được chơi với chị, điều đó đã vô tình tạo nên một vết rạn nứt trong tình chị em khi họ lớn lên. Khi Anna và Elsa là những thiếu niên, thì đức vua và hoàng hậu không may gặp bão trên biển và qua đời.', N'https://www.youtube.com/embed/TbQm5doF_Uc', N'forzen.jpg', N'Hoạt hình', N'moi')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD5', N'V for Vendetta ', N'V for Vendetta (V báo thù) là một bộ phim Mỹ thuộc thể loại hành động - li kì, viễn tưởng, do Warner Bros. sản xuất năm 2005. Phim được làm theo truyện tranh của Alan Moore và David Lloyd thuộc hãng DC Comics, lấy bối cảnh Anh quốc trong một tương lai giả định của thế kỷ 21. Sau thế chiến thứ ba, nước Anh bị thống trị bởi nền độc tài chuyên chế, gần giống chế độ phát xít của Đức quốc xã. V là một chiến binh đấu tranh cho tự do và sự thật, luôn giấu mình sau mặt nạ Guy Fawkes. Anh kêu gọi dân chúng đứng lên chống lại chế độ độc tài, thông qua việc trả thù cá nhân bằng bạo lực, khủng bố. Trong đêm V kích nổ Tòa Đại Hình Luân Đôn, anh đã gặp và cứu cô gái trẻ Evey Hammond thoát khỏi bọn mật vụ, dần dần, Evey trở thành người bạn chiến đấu kỳ lạ của V.', N'James McTeigue', 132, N'Anh', N'Vào năm 2020, Anh quốc, sau một thời gian dài bạo loạn, giờ đang chìm trong một nền hòa bình giả tạo với sự chuyên chế độc tài của đảng Norsefire (Đảng Bảo thủ), đứng đầu là đại pháp quan Adam Sutler (nhân vật được tạo ra dựa trên hình mẫu Adolf Hitler). Adam Sulter và Đảng Bảo Thủ đã gây ra cái chết của 100,000 người vì gieo rắc vũ khí sinh học bí mật tại trường học St. Mary, ga tàu điện ngầm và nhà máy lọc nước số ba. Virus gây ra bi kịch đó được lấy từ máu của một người tù ở trại Larkhill - kẻ duy nhất sống sót sau những thí nghiệm và tra tấn của chính phủ. Nhờ có virus, Đảng Bảo Thủ dễ dàng khiến người dân sợ hãi. Họ điều chế thuốc chữa trị độc quyền, bán cho mọi người, thu lợi nhuận khổng lồ và được đắc cử. Từ đó, chế độ độc tài bao trùm khắp nước Anh. Dưới chế độ này, người dân bị bóp nghẹt quyền tự do ngôn luận, báo chí vá truyền thông bị chính quyền thao túng, các tác phẩm văn học, nghệ thuật cũng bị kiểm duyệt, cấm đoán.

Evey Hammond, một phụ nữ trẻ, sau những biến cố khủng khiếp của gia đình trong quá khứ, đang gắng kiếm tìm một cuộc đời bình lặng. Nhưng một ngày kia, cuộc gặp gỡ vô tình với V - người đeo mặt nạ Guy Fawkes, đã hoàn toàn thay đổi cuộc đời cô. Tình cờ trở thành nhân chứng duy nhất và bị nghi ngờ là đồng phạm của V, kẻ đã đánh bom Tòa Đại hình Luân Đôn, Evey phải lưu lại nơi ẩn náu bí mật của anh và ngày càng lấn sâu vào một con đường đầy mạo hiểm. Càng tiếp xúc với V, cô càng nhận ra rằng ẩn giấu dưới tấm áo choàng đen và chiếc mặt nạ kia là một tâm hồn cao thượng, cô đơn và một trái tim chất chứa hận thù. Hơn hết thảy, anh còn có một khát khao thức tỉnh con người và đổi thay thế giới bằng cách làm nổ tung tòa nhà Nghị viện Anh quốc vào ngày 5 tháng 11, giống như Guy Fawkes đã từng cố gắng thực hiện năm 1605.', N'https://www.youtube.com/embed/lSA7mAHolAw', N'cay sung.jpg', N'Hành động', N'moi')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD6', N'GODZILLA AND KONG', N'Godzilla vs. Kong là một bộ phim điện ảnh của Mỹ sắp ra mắt của đạo diễn Adam Wingard. Phần tiếp theo của Godzilla: King of the Monsters (2019) và Kong: Skull Island (2017), đây là bộ phim thứ tư trong MonsterVerse của Legendary. Đây cũng là bộ phim thứ 36 trong loạt phim Godzilla, bộ phim thứ 12 trong loạt phim King Kong và bộ phim Godzilla thứ tư được sản xuất hoàn toàn bởi một hãng phim Hollywood. Phim có sự tham gia của Alexander Skarsgård, Millie Bobby Brown, Rebecca Hall, Brian Tyree Henry, Shun Oguri, Eiza González, Jessica Henwick, Julian Dennison, Kyle Chandler, Zhang Ziyi và Demián Bichir.', N'Adam Wingard', 125, N'Anh', N'Vào tháng 9 năm 2015, Legendary đã chuyển Kong: Skull Island từ Universal sang Warner Bros., điều này đã làm dấy lên những đồn đoán của giới truyền thông rằng Godzilla và King Kong sẽ xuất hiện trong một bộ phim cùng nhau.[7][8] Vào tháng 10 năm 2015, Legendary xác nhận rằng họ sẽ hợp nhất Godzilla và King Kong trong Godzilla vs Kong, tại thời điểm được nhắm mục tiêu phát hành vào ngày 29 tháng 5 năm 2020. Huyền thoại có kế hoạch tạo ra một thương hiệu điện ảnh chia sẻ "tập trung quanh Monarch", "kết hợp Godzilla và Legendary King Kong trong một hệ sinh thái của các siêu loài khổng lồ khác, cả cổ điển và mới."[9][10][11]

Vào tháng 7 năm 2017, Wingard đã nói về phác thảo được tạo ra bởi phòng nhà văn, nói rằng: "Chúng tôi sẽ rất chi tiết thông qua tất cả các nhân vật, các cung mà họ có, họ liên quan với nhau như thế nào và quan trọng nhất là họ liên quan đến nhau như thế nào những con quái vật và cách những con quái vật liên quan đến chúng hoặc phản ánh chúng. " Anh ấy cũng tuyên bố rằng anh ấy và nhóm của anh ấy sẽ "đánh bại theo nhịp" trên bản phác thảo, nói rằng "Vì vậy, một lần nữa, đó là một cuộc thảo luận và về việc làm thế nào để làm cho nó mạnh nhất có thể', N'https://www.youtube.com/embed/odM92ap8_c0', N'rampage.jpg', N'Khoa học viễn tưởng', N'rap')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD7', N'SIÊU SÁT THỦ', N'Sát thủ chuyên nghiệp hay Thanh trừng sát thủ (tựa gốc tiếng Anh: Killer Elite) là một bộ phim hành động của Anh-Úc hợp tác sản xuất, dựa theo tiểu thuyết The Feather Men của nhà văn Ranulph Fiennes, đạo diễn bởi Gary McKendry và công chiếu vào năm 2011. Phim có sự tham gia của Jason Statham, Robert De Niro và Clive Owen.', N'Gary McKendry', 114, N'Anh', N'Phim lấy bối cảnh năm 1980. Mở đầu phim là cảnh anh lính đánh thuê Danny Bryce cùng với ba người bạn Hunter, Davies và Meier ám sát một gã đại gia ở Mexico. Danny bị xao lãng vì thấy một đứa trẻ trong xe và anh bị bắn. Sau sự việc này Danny bỏ nghề và quay về quê nhà ở nước Úc.

Một năm sau, Danny đến Oman để gặp Người Đặc vụ (The Agent). Anh biết được rằng Hunter đã thất bại với một nhiệm vụ trị giá 6 triệu đôla. Nếu Danny không hoàn tất nhiệm vụ của Hunter, Hunter sẽ bị giết chết. Ông trùm dầu mỏ Amr muốn Danny giết chết ba người cựu chiến sĩ SAS - Steven Harris, Steven Cregg và Simon McCann - vì trước đây chúng giết chết những người con trai của ông. Danny phải quay phim lại cảnh chúng thú tội, làm cái chết của chúng trông giống như tai nạn, mọi việc phải được hoàn tất trước khi ông trùm chết vì bệnh. Davies và Meier đồng ý giúp Danny để chia phần tiền.

Khi đột nhập vào nhà Harris, Danny và Meier định dựng hiện trường giả là Harris trượt chân ngã đập đầu xuống sàn trong phòng tắm. Bất ngờ bạn gái của Harris đến gõ cửa, Harris nhân lúc đó chống cự và bị Meier giết chết.

Ở nước Anh, Davies hỏi những người trong quán rượu về những cựu thành viên SAS. Điều này được báo cáo lại cho tổ chức Feather Men, một tổ chức xã hội bảo vệ cho những người cựu SAS. Spike Logan được cử đi điều tra về việc này.

Davies biết được sắp tới Cregg có một chuyến đi tập luyện trên ngọn đồi tuyết. Danny xâm nhập vào khu căn cứ, cải trang trong bộ quân phục và bỏ thuốc vào ly cà phê của Cregg. Danny đi theo Cregg lên đồi, quay phim lại cảnh hắn thú tội và bỏ mặc hắn chết vì sốc thuốc.', N'https://www.youtube.com/embed/lft48yFsHGU', N'rap2.jpg', N'Hành động', N'rap')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD8', N'WONDER WOMAN', N'Wonder Woman là một siêu anh hùng hư cấu xuất hiện trong truyện tranh Mỹ, được xuất bản bởi DC Comics.[1] Nhân vật là công chúa chiến binh của Amazon (dựa trên nhân vật Chiến binh Amazon trong thần thoại Hy Lạp) và được biết đến ở quê hương cô với vai trò là công chúa Diana của xứ Themyscira. Khi không ở quê hương, đôi khi cô được biết đến với danh tính bí mật là Diana Prince.', N'DC Comics', 120, N'Anh', N'Wonder Woman được miêu tả là một chiến binh, bậc thầy võ thuật, được dạy và có kinh nghiệm trong cả võ thuật cổ đại và hiện đại, kể cả võ thuật của người Amazon. Cô thành thục cách sử dụng đôi vòng tay Amazon của mình và chiếc dây thòng lọng bằng vàng.[14] Batman đã từng gọi cô là "chiến binh cận chiến tốt nhất trên thế giới".[15] Phiên bản hiện đại của nhân vật này chỉ sử dụng vũ lực khi cô thấy cần thiết.[16]

Trong New 52, võ thuật siêu việt của cô là thành quả của việc huấn luyện chiến binh Amazon và từ Ares, thần chiến tranh. Phiên bản Thời đại vàng của nhân vật còn có kiến thức về tâm lý học.

Wonder Woman cũng có một số điểm yếu, cô có thể bị đánh bại bởi một số loại độc tố, ma thuật hoặc vũ khí đặc biệt. Batman đã sử dụng các điểm yếu này để đánh bại Wonder Woman trong một số lần giao đấu (khi cô bị tẩy não thành tay sai của kẻ ác).', N'https://www.youtube.com/embed/1Q8fG0TtVAY', N'rap3.jpg', N'Hành động', N'rap')
INSERT [dbo].[Video] ([Id], [title], [content], [director], [timee], [languagee], [review], [trailer], [img], [tenloai], [kieu]) VALUES (N'VD9', N'THE ADVANGERS', N'Biệt đội siêu anh hùng (tiếng Anh: The Avengers) là một phim của điện ảnh Hoa Kỳ được xây dựng dựa trên nguyên mẫu các thành viên trong biệt đội siêu anh hùng Avengers của hãng Marvel Comics, sản xuất bởi Marvel Studios và phân phối bởi Walt Disney Studios Motion Pictures. Đây là bộ phim thứ 6 trong Marvel Cinematic Universe (MCU).

Bộ phim được viết kịch bản ra và đạo diễn bởi Joss Whedon cùng một dàn diễn viên bao gồm Robert Downey, Jr., Chris Evans,Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Tom Hiddleston, và Samuel L. Jackson. Trong The Avengers, Nick Fury, người điều hành của tổ chức gìn giữ hòa bình S.H.I.E.L.D, chiêu mộ Người Sắt, Hulk, Thor, và Đội trưởng Mỹ để cứu thế giới khỏi bị hủy diệt.', N'Joss Whedon', 142, N'Anh', N'Loki gặp gỡ The Other - thủ lĩnh của một chủng tộc ngoài Trái Đất – Chitauri và là thủ hạ của một kẻ bí ẩn, nhận một cây trượng gắn đá Tâm trí để lấy khối Tesseract – một nguồn năng lượng với khả năng tiềm tàng rất lớn. Chúng đã hứa với Loki bằng việc cho phép hắn sử dụng đội quân của mình để xâm chiếm Trái Đất. Nick Fury – Giám đốc của S.H.I.E.L.D và trung tá Maria Hill đi đến trung tâm nghiên cứu chức năng, nơi việc sơ tán đang diễn ra, Tiến sĩ Erik Selvig là người dẫn đầu nhóm nghiên cứu tại đây. Đặc vụ Phil Coulson giải thích rằng khối Tesseract đang tăng cường hoạt động. Nó đột ngột khởi động và mở ra cánh cổng, cho phép Loki đi đến Trái Đất. Loki lấy đi khối Tesseract, tẩy não tiến sĩ Selvig cùng một vài đặc vụ thành nô lệ của mình, trong đó có cả đặc vụ Clint Barton.

Đáp trả lại cuộc tấn công, Fury phục hồi lại chiến lược khởi động nhóm Avengers. Đặc vụ Natasha Romanoff được đưa đến Ấn Độ để thuyết phục tiến sĩ Bruce Banner, còn đặc vụ Coulson đến gặp Tony Stark để nhờ anh phục hồi lại những nghiên cứu của tiến sĩ Selvig. Fury đến gặp Steve Rogers để nói về nhiệm vụ lấy lại khối Tesseract. Trong khi Barton lấy đi chất Iridi cần thiết để ổn định năng lượng của khối Tesseract, Loki đã gây rối với người dân tại Đức, điều này dẫn đến việc chạm trán với Rogers, Stark và Romanoff, kết thúc với việc Loki đầu hàng dường như khá dễ dàng. Trong lúc Loki được đưa tới S.H.I.E.L.D, Thor – anh trai nuôi của Loki đã đến (nhờ Odin dùng năng lượng tối thay cho cầu Bifrost bị phá hủy) và bắt Loki với hy vọng thuyết phục Loki quay về Asgard. Stark và Rogers đuổi theo chạm trán Thor, và Thor đồng ý đưa Loki về Helicarrier của S.H.I.E.L.D. cho đến khi khối Tesseract được tìm thấy. Tại đó Loki bị giam, còn Banner và Stark dò tìm Tesseract. Các siêu anh hùng trở nên chia rẽ sau lời nói của Loki. Lần lượt Rogers, Stark và Banner nghi ngờ cả Fury do họ phát hiện S.H.I.E.L.D định dùng khối Tesseract để sản xuất vũ khí - giống với HYDRA ngày trước. Ngay khi Banner nhìn thấy và sắp nói ra vị trí của khối Tesseract, Barton và nhóm tay sai của Loki đã tấn công Helicarrier, vô hiệu hóa hai động cơ khiến nó rơi. Banner ngã bị thương và biến thành Hulk. Stark và Rogers cố gắng khởi động lại được một động cơ để trực hạm bay được trở lại. Thor cố kiềm chế cơn giận của Hulk nhưng bị đánh bại do không dám tung hết sức trên trực hạm. Romanoff đối đầu với Barton và hạ anh ta bất tỉnh, giúp anh ta thoát khỏi sự khống chế của Loki. Loki trốn thoát sau khi lừa Thor vào lồng giam, sát hại đặc vụ Coulson và thả rơi chiếc lồng (nhưng Thor về sau tự thoát ra được). Hulk rơi xuống mặt đất và trở lại thành Banner sau cuộc tấn công của một máy bay S.H.I.E.L.D.', N'https://www.youtube.com/embed/i_a2ASIuJGI', N'rap4.png', N'Hành động', N'rap')
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD FOREIGN KEY([VideoId])
REFERENCES [dbo].[Video] ([Id])
GO
ALTER TABLE [dbo].[Share]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Share]  WITH CHECK ADD FOREIGN KEY([VideoId])
REFERENCES [dbo].[Video] ([Id])
GO
USE [master]
GO
ALTER DATABASE [WebPhim] SET  READ_WRITE 
GO
