<?*

MIT License (http://www.opensource.org/licenses/mit-license.php)

Copyright (c) 2007, Slava Tretyak (aka restorer)
Zame Software Development (http://zame-dev.org)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

Zame CMS

*?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	<title><?@h conf('sitename') ?></title>
	<link rel="stylesheet" href="main.css" />
	<link rel="stylesheet" href="<?= ROOT ?>s-js/s.css" />
	<script type="text/javascript" src="<?= ROOT ?>s-js/s.js"></script>
	<script type="text/javascript" src="<?= ROOT ?>s-js/modules/interface.js"></script>
	<script type="text/javascript">
PUB_ROOT = '<?@j PUB_ROOT ?>';
TYPE = '<?@j $type ?>';
	</script>
	<script type="text/javascript" src="main.js"></script>
</head>
<body>
	<table class="z-wrap" cellspacing="0">
		<tr class="z-tabs-top">
			<td colspan="5">&nbsp;</td>
		</tr>
		<tr class="z-tabs">
			<td class="z-pad">&nbsp;</td>
			<? if $type=='image' ?><td class="z-sel"><span>Images<span></td><? else ?><td><a href="?type=image">Images<a></td><? end ?>
			<? if $type=='media' ?><td class="z-sel"><span>Media</span></td><? else ?><td><a href="?type=media">Media</a></td><? end ?>
			<? if $type=='file' ?><td class="z-sel"><span>Files</span></td><? else ?><td><a href="?type=file">Files</a></td><? end ?>
			<td width="100%" id="upload-wrap">
			</td>
		</tr>
		<tr valign="top" class="z-below-tabs">
			<td colspan="5">
				<div class="z-content-wrap">
					<div class="z-content">
						<? each $files as $name ?>
							<div class="z-line"><span class="z-rm" onclick="ZameFileBrowser.rm('<?@j $name ?>')">&times;</span>&nbsp;<span class="z-item" onclick="ZameFileBrowser.sel('<?@j $name ?>')"><?@h $name ?></span></div>
						<? end ?>
					</div>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
