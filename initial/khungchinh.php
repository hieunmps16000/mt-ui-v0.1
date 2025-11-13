<?php
defined ( '_JEXEC' ) or die ( 'Restricted access' ); 
?>		
<?php $this->genBlockBegin ($block) ?>
<div id="ja-khungchinh">
	<div class="main">
		<?php // Chèn thẻ H1 tạm cho trang theo tên miền ?>
		<div id="ja-h1" style="display:none!important;">
			<?php
				$app  = JFactory::getApplication();
				$menu = $app->getMenu()->getActive();
				if( $menu->home ){
			?>
					<h1><?php echo JFactory::getDocument()->getTitle(); ?></h1>
			<?php
				}
				$page404 = false;
				if( $menu->home && JUri::root() != JUri::current() ){
					$page404 = true;
				}
			?>
			
			<?php // Google Analytics ?>
			<script async src="https://www.googletagmanager.com/gtag/js?id=UA-123456789-1"></script>
			<script async>
				window.dataLayer = window.dataLayer || [];
				function gtag(){dataLayer.push(arguments);}
				gtag('js', new Date());
				gtag('config', 'UA-123456789-1');
			</script>
		</div>
		<?php
			/********** CÓ 4 STYLE CỦA VỊ TRÍ QUY ĐỊNH THẺ CỦA TITLE: JAworkshomeDIV, JAworkshomeH1, JAworkshomeH2, JAworkshomeH3 **********/
		?>
		<div id="ja-header">
			<div class="header1">
				<div class="main2">
					<div class="header1_1">
						<jdoc:include type="modules" name="header1_1" style="JAworkshomeDIV"/>
					</div>
					<div class="header1_2 socials">
						<jdoc:include type="modules" name="header1_2" style="JAworkshomeDIV"/>
					</div>
					<div class="header1_3">
						<jdoc:include type="modules" name="header1_3" style="JAworkshomeDIV"/>
					</div>
				</div>
			</div>
			<div class="header2">
				<div class="main2">
					<div class="header2_1">
						<jdoc:include type="modules" name="header2_1" style="JAworkshomeDIV"/>
					</div>
					<div class="header2_2">
						<jdoc:include type="modules" name="header2_2" style="JAworkshomeDIV"/>
					</div>
					<div class="header2_3">
						<jdoc:include type="modules" name="header2_3" style="JAworkshomeDIV"/>
					</div>
					<div class="header2_4">
						<jdoc:include type="modules" name="header2_4" style="JAworkshomeDIV"/>
					</div>
				</div>
			</div>
		</div>
		<div id="ja-menungang">
			<div class="menungang">
				<div class="main2">
					<jdoc:include type="modules" name="menungang" style="JAworkshomeDIV"/>
				</div>
			</div>
		</div>
		<?php
			if( $page404 ){
				http_response_code(404);
				echo '<h1 style="margin: 100px 0px; text-align:center;">404 error: Page not found</h1>';
			}
			else{
		?>
				<div id="ja-slideshow">
					<div class="slideshow1">
						<div class="main2">
							<jdoc:include type="modules" name="slideshow1" style="JAworkshomeH2"/>
						</div>
					</div>
					<div class="slideshow2">
						<div class="main2">
							<jdoc:include type="modules" name="slideshow2" style="JAworkshomeH2"/>
						</div>
					</div>
				</div>
				<div id="ja-dinhhuong">
					<div class="dinhhuong1">
						<div class="main2">
							<jdoc:include type="modules" name="dinhhuong1" style="JAworkshomeH2"/>
						</div>
					</div>
				</div>
				<div id="ja-extra">
					<div class="extra1">
						<div class="main2">
							<jdoc:include type="modules" name="extra1" style="JAworkshomeH2"/>
						</div>
					</div>
					<div class="extra2">
						<div class="main2">
							<jdoc:include type="modules" name="extra2" style="JAworkshomeH2"/>
						</div>
					</div>
				</div>
				<div id="ja-noidunggiua" class="<?php if($this->countModules( 'cottrai' )){}else{echo 'noleft';} ?> <?php if($this->countModules( 'cotphai' )){}else{echo 'noright';} ?>">
					<div class="main2">
						<?php if($this->countModules( 'cottrai' )){ ?>
							<div id="ja-cottrai">
								<jdoc:include type="modules" name="cottrai" style="JAworkshomeH2"/>
							</div>
						<?php } ?>
							<div id="ja-cotgiua">
								<div class="errorclass" style="display:none;"><?php echo $this->loadBlock ('message') ?></div>
								<div class="noidungtren1">
									<jdoc:include type="modules" name="noidungtren1" style="JAworkshomeH2"/>
								</div>
								<div class="noidungtren2">
									<jdoc:include type="modules" name="noidungtren2" style="JAworkshomeH2"/>
								</div>
								<?php echo $this->showBlock ('content') ?>
								<div class="noidungduoi1">
									<jdoc:include type="modules" name="noidungduoi1" style="JAworkshomeH2"/>
								</div>
								<div class="noidungduoi2">
									<jdoc:include type="modules" name="noidungduoi2" style="JAworkshomeH2"/>
								</div>
							</div>
						<?php if($this->countModules( 'cotphai' )){ ?>
							<div id="ja-cotphai">
								<jdoc:include type="modules" name="cotphai" style="JAworkshomeH2"/>
							</div>
						<?php } ?>
					</div>
				</div>
		<?php
			}
		?>
		<div id="ja-chantrang">
			<div class="footer1">
				<div class="main2">
					<jdoc:include type="modules" name="footer1" style="JAworkshomeDIV"/>
				</div>
			</div>
			<div class="footer2">
				<div class="main2">
					<div class="footer2_1">
						<jdoc:include type="modules" name="footer2_1" style="JAworkshomeDIV"/>
					</div>
					<div class="footer2_2 footer-toggle">
						<jdoc:include type="modules" name="footer2_2" style="JAworkshomeDIV"/>
					</div>
					<div class="footer2_3 footer-toggle">
						<jdoc:include type="modules" name="footer2_3" style="JAworkshomeDIV"/>
					</div>
					<div class="footer2_4 socials">
						<jdoc:include type="modules" name="footer2_4" style="JAworkshomeDIV"/>
					</div>
				</div>
			</div>
			<div class="footer3">
				<div class="main2">
					<p><a href="https://webminhthuan.vn/thiet-ke-web.html" rel="nofollow">Thiết kế website bởi Web Minh Thuận</a></p>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="widget">
	<jdoc:include type="modules" name="widget" style="JAworkshomeDIV"/>
</div>
<?php $this->showBlock('debug') ?>
<div id="extra_js">
	<script async type="text/javascript" src="<?php echo JURI::base(true).'/templates/ja_social/css/codejava.js'; ?><?php echo C_CACHED; ?>"></script>
</div>