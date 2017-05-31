J%   I�w��.Y    *%  pathoComp.html <!DOCTYPE html> <html> <head> <title>Pathogen Manipulator</title> <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1"> <meta http-equiv=Content-Type content="text/html; charset=UTF-8"> <script src=http://cdn.goonhub.com/js/jquery.min.js type=text/javascript></script> <!--<script src="./json2.min.js" type="text/javascript"></script>--> <script src=http://cdn.goonhub.com/js/pathology_display.js type=text/javascript></script> <script src=http://cdn.goonhub.com/js/pathoui-script.js type=text/javascript></script> <link href=http://cdn.goonhub.com/css/pathoui.css rel=stylesheet type=text/css> </head> <body> <div class=mainContent> <!--Displays information about the currently loaded pathogen--> <div id=loadedPathogen> <div class=noborder> <span class=label>DNA Load Status: </span> <div class="annunciator a-green" id=annDNALoad> LOAD </div> <div class="annunciator a-red" id=annDNANoLoad> NO LOAD </div> <div class="annunciator a-yellow" id=annDNASplice> SPLICE </div> <span class=label>Pathogen: </span> <div class="text-field tf-med" id=txtPName>G68P68</div> <div class="text-field tf-med" id=txtPType>(fungus)</div> </div> <div class=noborder> <span class=label>Slot: </span> <div class="text-field tf-narrow" id=txtExpSlot>1</div> <div class="annunciator a-yellow" id=annSlotExp>EXPOSED</div> <div class="annunciator a-green" id=annSlotSample>SAMPLE</div> <div class="button btn-small" id=btnCloseSlot>Close</div> <div class="button btn-small" id=btnEjectSample>Eject</div> </div> <div class=noborder> <span class=label>DNA Seq: </span><br> <div class="text-field tf-long" id=txtPSeq> </div> </div> </div> <!--Displays the currently selected page--> <div class=dataDisplay> <div class=dataPage id=dpManip> <h1>DNA Manipulator</h1> <div id=manipHolder> <div class="narrow-border extrapad"> <span class="label lb-long">Status:</span> <div class="annunciator a-green" id=aMutRdy>READY</div> <div class="annunciator a-yellow" id=aMutIrr>RAD</div> <div class="annunciator a-green" id=aMutAck>PASS</div> <span class="label lb-long"></span> <div class="annunciator a-red" id=aMutOpen>EXPOSED</div> <div class="annunciator a-red" id=aMutSample>SAMPLE</div> <div class="annunciator a-red" id=aMutNack>FAIL</div> </div> <table> <tr> <td><span class="label lb-long">Mutativeness:</span></td> <td><div class="button btn-tiny" data-tsk="mut=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtMut></div></td> <td><div class="button btn-tiny" data-tsk="mut=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Mutation Speed:</span></td> <td><div class="button btn-tiny" data-tsk="mts=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtMts></div></td> <td><div class="button btn-tiny" data-tsk="mts=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Advance Speed:</span></td> <td><div class="button btn-tiny" data-tsk="adv=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtAdv></div></td> <td><div class="button btn-tiny" data-tsk="adv=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Maliciousness:</span></td> <td><div class="button btn-tiny" data-tsk="mal=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtMal></div></td> <td><div class="button btn-tiny" data-tsk="mal=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Suppression Threshold:</span></td> <td><div class="button btn-tiny" data-tsk="sth=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtSth></div></td> <td><div class="button btn-tiny" data-tsk="sth=1">+</div></td> </tr> </table> </div> </div> <div class=dataPage id=dpSplice1> <h1>Select splice target</h1> <span class="label lb-slong">The loaded DNA will be modified during this session.</span> <div class="noborder splice-selection"> <div class="noborder slot-holder" id=spliceSlots> </div> <div class="narrow-border button-holder" id=spliceButtons> <div class="annunciator a-red" id=annSpliceStatExp>EXPOSED</div> <div class="annunciator a-green" id=annSpliceStatSource>SOURCE</div> <div class="annunciator a-green" id=annSpliceStatTarget>TARGET</div> <hr> <div class=button id=btnSpliceBegin>Begin<br>Splice</div> <div class=button id=btnSpliceCancel>Cancel<br>Splice</div> </div> </div> </div> <div class=dataPage id=dpSplice2> <h1>Splicing Session</h1> <div class="noborder splice-selection"> <!--DATA HOLDER--> <div class=noborder id=spliceData> <div class="extrapad button-holder prediction-holder"> <span class="label lb-long">Predictive Effectiveness:</span> <div class="text-field tf-med txtPredEffect"></div> <div class="button btn-med display-known">Sequences</div> </div> <div class="extrapad splice-sequence" id=spliceTargetField> <span class="label lb-long">Target sequence:</span> <div class="text-field tf-long" id=txtSpliceTarget></div> <div class="button btn-small btn-seq-off" dir=-1>-</div> <div class="button btn-small btn-seq-off" dir=1>+</div> <span class=label>Status:</span> <div class="annunciator a-red" id=annSpliceTargetEmpty>EMPTY</div> </div> <div class="button-holder extrapad splice-controls" id=spliceActions> <span class="label lb-elong">Splice actions:</span> <div class="button btn-small" dir=-1>Before</div> <div class="button btn-small" dir=1>After</div> <div class="button btn-small" dir=0>Remove</div> </div> <div class="extrapad splice-sequence" id=spliceSourceField> <span class="label lb-long">Source sequence:</span> <div class="text-field tf-long" id=txtSpliceSource></div> <div class="button btn-small btn-seq-off" dir=-1>-</div> <div class="button btn-small btn-seq-off" dir=1>+</div> <span class=label>Status:</span> <div class="annunciator a-red" id=annSpliceSourceEmpty>EMPTY</div> </div> </div> <!--FINALIZING BUTTONS--> <div class="button-holder extrapad" id=spliceFinalButtons> <span class="label lb-med">Splice status:</span> <div class="annunciator a-green" id=annSpliceSuccess>SUCCESS</div> <div class="annunciator a-red" id=annSpliceFail>FAIL</div> <span class=label>Prediction:</span> <div class="annunciator a-green" id=annPredSuccess>SUCCESS</div> <div class="annunciator a-yellow" id=annPredUnk>UNKNOWN</div> <div class="annunciator a-red" id=annPredFail>FAIL</div> <hr> <div class=button id=btnSpliceFinish>Finish Splicing</div> </div> </div> </div> <div class=dataPage id=dpTester> <h1>DNA Stability Analyzer</h1> <div class=noborder id=analyzerHolder> <!--SHOWING PREDICTIVE EFFECTIVENESS--> <div class="narrow-border extrapad button-holder" id=predictionHolder> <span class="label lb-long">Predictive Effectiveness:</span> <div class="text-field tf-med txtPredEffect"></div> <div class="button btn-med display-known">Sequences</div> </div> <!--HOLDING BOTH ANALYSIS BUFFERS (current / previous) --> <div class="noborder extramargin"> <div class="narrow-border analysis-buffer extrapad" id=currAnalysis> <span class="label lb-long block">Current analysis:</span> <div class="text-field tf-enarrow" id=currAnalysis0></div> <div class="text-field tf-enarrow" id=currAnalysis1></div> <div class="text-field tf-enarrow" id=currAnalysis2></div> <div class="text-field tf-enarrow" id=currAnalysis3></div> <div class="text-field tf-enarrow" id=currAnalysis4></div> <div class="button btn-tinyish" id=btnClrAnalysisCurr>CLR</div> </div> <div class="narrow-border analysis-buffer extrapad" id=prevAnalysis> <span class="label lb-long block">Previous analysis:</span> <div class="text-field tf-enarrow" id=prevAnalysis0></div> <div class="text-field tf-enarrow" id=prevAnalysis1></div> <div class="text-field tf-enarrow" id=prevAnalysis2></div> <div class="text-field tf-enarrow" id=prevAnalysis3></div> <div class="text-field tf-enarrow" id=prevAnalysis4></div> </div> </div> <div class="noborder extramargin"> <div class="extrapad button-holder" id=analyzeComponents> </div> <div class="narrow-border extrapad" id=analyzeResults> <span class=label>Stable:</span> <div class="annunciator a-green" id=annStableYes>YES</div> <div class="annunciator a-red" id=annStableNo>NO</div> <span class=label>Transient:</span> <div class="annunciator a-green" id=annTransYes>YES</div> <div class="annunciator a-red" id=annTransNo>NO</div> <hr> <span class=label>Error:</span> <div class="annunciator a-red" id=annErrBuffer>BUFFER</div> <div class="annunciator a-red" id=annErrNack>NACK</div> <span class=label></span> <div class="annunciator a-yellow" id=annErrSample>SAMPLE</div> <div class="annunciator a-yellow" id=annErrData>T. DATA</div> </div> </div> <div class="button btn-long" id=btnAnalysisLoad>Load Sample &amp; Clear Buffer</div> <div class="button btn-long" id=btnAnalysisDoTest>Test DNA</div> </div> </div> <div class=dataPage id=dpLoadSave> <h1>Load / Save DNA</h1> <div class="noborder slot-holder" id=dnaSlotHolder> </div> </div> <div class=dataPage id=dpWelcome> <h1>Welcome to the Path-o-matic 2000</h1> <span>The leading market solution for pathology research.</span> <span>This device is capable of the following:</span> <ul> <li>DNA Sequence Verification</li> <li>DNA Sequence Splicing</li> <li>DNA Trait Segment Manipulation</li> <li>Predictive Stability Analysis</li> <li>Pathogen Sample Identification</li> </ul> </div> </div> <!--The main menu, used for scrolling through the pages--> <div id=mainMenu> <div class=button id=btnRetMain>Main Screen</div> <div class=button id=btnManip>Manipulate</div> <div class=button id=btnSplice>Splice</div> <div class=button id=btnTester>DNA Analyzer</div> <div class=button id=btnLoadSave>Load / Save DNA</div> <div class="annunciator a-yellow" id=annSynch>SYNCH</div> </div> </div> </body> </html>6   �d����.Y    $    DDMI   �  snackcake @���T  �B 6   h�ۯ��.Y    $    DDMI   �  snackcake @���3� �B 6   v�����.Y    $    DDMI   �  snackcake @���  ��B 6   ��B��.Y    $    DDMI   �  snackcake @���ۡ(�B 6   v�ϟ��.Y    $    DDMI   �  snackcake @����� �B 4   3\O���.Y    "    DDMI   )	  wanted-unknown @���3   �B���.Y    !    DDMI   T	  precursor-2fx @����   ߟ9���.Y    o    DDMIg   d  �  eyebot-logout @   BJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B'   ��Y��.Y        DDMI   �  ����B 3   ��j�.Y    !    DDMI   �  ice100 @�������B �   �#K
�.Y    �    DDMI�   X   body_m @���   �B w   No Underwear @�������BBd  N   blank @   BBJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B�   ӭ?
�.Y    �    DDMI�   X   body_f @���   �B w   No Underwear @�������BBd  N   blank @   BBJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B6   xL��.Y    $    DDMI   �   seeds-ovl @���   �B 6   r}��.Y    $    DDMI   �   seeds-ovl @�������B 1   gx��.Y        DDMI   �  butt @���   �B �   �~j-�.Y    �    DDMI{   		  head @���   �B Y   eyes @����BBY   none @����BBY   none @����BBY   none @����BBM   (��F�.Y    ;    DDMI3   �  chest_m @���   �B �  chest_blood @���B3   x�a�.Y    !    DDMI   T	  precursor-5fx @���;   �2;�.Y    )    DDMI!   d  �  eyebot-logout @   B3   A���.Y    !    DDMI   d  N   blank @   B�   �a)��.Y    �    DDMI�   X   body_m @���   �B w   No Underwear @�������BB[  BJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B3   L��C�.Y    !    DDMI   �  ice100 @���'�B �   wD��.Y    �    DDMI}   		  head @���   �B Y   eyes @����BBY   short @����BBY   tramp @����BBY   none @����BB�   O9��.Y    �    DDMI|   		  head @���   �B Y   eyes @����BBY   short @����BBY   none @����BBY   none @����BB�   �H���.Y    �    DDMI{   		  head @���   �B Y   eyes @����BBY   pomp @�����F�BBY   none @����BBY   none @����BBJ    .���.Y    3   .html {"error":"You don't have access to this resource."}/   օ���.Y      create_object.html <!DOCTYPE html> <html> <head> <title>Create Object</title> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/style.css> </head> <body id=createobj> <form name=spawner action="byond://?src=/* ref src */" method=get> <input type=hidden name=src value="/* ref src */"> <input type=hidden name=action value=object_list> Type <input type=text name=filter style=width:280px onkeydown=submitFirst(event)><input type=button name=search value=Search onclick=updateSearch() style=width:70px><br> Offset: <input type=text name=offset value=x,y,z style=width:250px> A <input type=radio name=offset_type value=absolute> R <input type=radio name=offset_type value=relative checked><br> Direction: S<input type=radio name=one_direction value=2 checked> SE<input type=radio name=one_direction value=6> E<input type=radio name=one_direction value=4> NE<input type=radio name=one_direction value=5> N<input type=radio name=one_direction value=1> NW<input type=radio name=one_direction value=9> W<input type=radio name=one_direction value=8> SW<input type=radio name=one_direction value=10><br> Number: <input type=text name=object_count value=1 style=width:330px> <br><br> <div id=selector_hs> <select name=type id=object_list multiple size=20> </select> </div> <br> <input type=submit value=spawn> </form> <script language=JavaScript> var old_search = "";
		var object_list = document.spawner.object_list;
		var object_list_container = document.getElementById('selector_hs');
		var object_paths = null /* object types */;
		var objects = object_paths == null ? new Array() : object_paths.split(";");
		
		document.spawner.filter.focus();
		populateList(objects);
		
		function populateList(from_list)
		{
			var newOpts = '';
			var i;
			for (i in from_list)
			{
				newOpts += '<option value="' + from_list[i] + '">'
					+ from_list[i] + '</option>';
			}
			object_list_container.innerHTML = '<select name="type" id="object_list" multiple size="20">' + 
			newOpts + '</select>';
		}
		
		function updateSearch()
		{
			if (old_search == document.spawner.filter.value)
			{
				return false;
			}
			
			old_search = document.spawner.filter.value;
			
			
			var filtered = new Array();
			var i;
			for (i in objects)
			{
				if(objects[i].search(old_search) < 0)
				{
					continue;
				}
				
				filtered.push(objects[i]);
			}
			
			populateList(filtered);
			
			if (object_list.options.length)
				object_list.options[0].selected = 'true';
			
			return true;
		}
		
		function submitFirst(event)
		{
			if (event.keyCode == 13 || event.which == 13)
			{
				if (updateSearch())
				{
					if (event.stopPropagation) event.stopPropagation();
					else event.cancelBubble = true;

					if (event.preventDefault) event.preventDefault();
					else event.returnValue = false;
				}
			}
		} </script> </body> </html>:   ����.Y      tooltip.html <!DOCTYPE html> <html> <head> <title>Tooltip</title> <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1"> <meta http-equiv=Content-Type content="text/html; charset=UTF-8"> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/font-awesome.css> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/tooltip.css> </head> <body> <div id=wrap class=wrap> <div id=content class=content></div> <a href=# class=close-tip style="display: none"><i class=icon-remove></i></a> </div> <script type=text/javascript src=http://cdn.goonhub.com/js/jquery.min.js></script> <script type=text/javascript src=http://cdn.goonhub.com/js/jquery.waitForImages.js></script> <script type=text/javascript src=http://cdn.goonhub.com/js/errorHandler.js></script> <script type=text/javascript src=http://cdn.goonhub.com/js/animatePopup.js></script> <script type=text/javascript> var tooltipRef = 'TOOLTIPREFPLACE';
		var tooltipDebug = false; </script> <script type=text/javascript src=http://cdn.goonhub.com/js/tooltip.js></script> </body> </html>�   �"�.Y    �  browserOutput.html <!DOCTYPE html> <html> <head> <title>Chat</title> <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1"> <meta http-equiv=Content-Type content="text/html; charset=UTF-8"> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/font-awesome.css> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/browserOutput.css> <script type=text/javascript src=http://cdn.goonhub.com/js/jquery.min.js></script> <!-- <script type="text/javascript" src="http://cdn.goonhub.com/js/array.generics.min.js"></script> --> </head> <body> <div id=loading> <i class="icon-spinner icon-2x"></i> <div> Loading...<br><br> If this takes longer than 30 seconds, it will automatically reload a maximum of 5 times.<br> If it STILL doesn't work, please post a report here: <a href="https://forum.ss13.co/viewforum.php?f=7">https://forum.ss13.co/viewforum.php?f=7</a> </div> </div> <div id=messages> </div> <div id=userBar style="display: none"> <div id=ping> <i class=icon-circle id=pingDot></i> <span class=ms id=pingMs>--ms</span> </div> <div id=options> <a href=# class=toggle id=toggleOptions title=Options><i class=icon-cog></i></a> <div class=sub id=subOptions> <a href=# class=decreaseFont id=decreaseFont><span>Decrease font size</span> <i class=icon-font>-</i></a> <a href=# class=increaseFont id=increaseFont><span>Increase font size</span> <i class=icon-font>+</i></a> <a href=# class=chooseFont id=chooseFont>Change font <i class=icon-font></i></a> <a href=# class=togglePing id=togglePing><span>Toggle ping display</span> <i class=icon-circle></i></a> <a href=# class=highlightTerm id=highlightTerm><span>Highlight string</span> <i class=icon-tag></i></a> <a href=# class=saveLog id=saveLog><span>Save chat log</span> <i class=icon-save></i></a> <a href=# class=clearMessages id=clearMessages><span>Clear all messages</span> <i class=icon-eraser></i></a> </div> </div> </div> <audio id=play-music class=hidden autoplay></audio> <script type=text/javascript src=http://cdn.goonhub.com/js/errorHandler.js></script> <!-- <script type="text/javascript" src="http://cdn.goonhub.com/js/anchorme.js"></script> --> <script type=text/javascript src=http://cdn.goonhub.com/js/browserOutput.js></script> </body> </html>�   ����6�.Y    �    DDMI�   X   body_m @���   �B Y   eyes @����BY   short @����BBY   none @����BBY   none @����BBw   none @�������BBB-   �R�#6�.Y        DDMI   n   preview @����   P�A7�.Y    �  changelog.html <style type=text/css> .postcard {display: block; margin: 10px auto; width: 300px;}
	h1 {font-size: 2.5em; padding: 0 10px; margin: 0; color: #115FD5;}
	h1 a {display: block; float: right;}
	.links {list-style-type: none; margin: 15px 5px; padding: 0; border: 1px solid #ccc; color: #333;}
	.links li {float: left; width: 50%; text-align: center; background: #f9f9f9; padding: 10px 0; position: relative;}
	.links li span {position: absolute; top: 0; right: 0; bottom: 0; width: 1px; background: #ccc;}

	.log {list-style-type: none; padding: 0; background: #f9f9f9; margin: 20px 5px; border: 1px solid #ccc; font-size: 1em; color: #333;}
	.log li {padding: 5px 5px 5px 20px; border-top: 1px solid #ccc; line-height: 1.4}
	.log li.title {background: #efefef; font-size: 1.7em; color: #115FD5; padding: 10px 10px; border-top: 0;}
	.log li.date {background: #f1f1f1; font-size: 1.1em; font-weight: bold; padding: 8px 5px; border-bottom: 2px solid #bbb;}
	.log li.admin {font-size: 1.2em; padding: 5px 5px 5px 10px;}
	.log li.admin span {color: #2A76E7;}

	h3 {padding: 0 10px; margin: 0; color: #115FD5;}
	.team, .lic {padding: 10px; margin: 0; line-height: 1.4;}
	.lic {font-size: 0.9em;} </style> <!-- HTML GOES HERE -->�    ��ں:�.Y    i   shinmera.txt general
	key = "Shinmera"
	ckey = "shinmera"
	gender = "female"
	joined = "2012-11-19"
	online = 1
*    ǡp<�.Y       parser.html Go away nerd.