<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5f41c82d-84d1-4fb1-a1cf-6697d2365854(com.mbeddr.mpsutil.filepicker.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="68mc" ref="r:2a10821d-612f-4a73-b7b0-ed6b57106321(com.mbeddr.mpsutil.filepicker.structure)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="fwk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.textgen.trace(MPS.Core/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="ap4t" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.generator(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="8oaq" ref="b0f8641f-bd77-4421-8425-30d9088a82f7/java:org.apache.commons.io(org.apache.commons/)" />
    <import index="btm1" ref="b0f8641f-bd77-4421-8425-30d9088a82f7/java:org.apache.commons.lang3(org.apache.commons/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="13h7C7" id="5lKnBeAtOE7">
    <property role="3GE5qa" value="pathAndFile" />
    <ref role="13h7C2" to="68mc:5lKnBeAtNw8" resolve="AbstractPicker" />
    <node concept="13i0hz" id="2RM$2quh1HO" role="13h7CS">
      <property role="TrG5h" value="mustExist" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="2RM$2quh1HP" role="1B3o_S" />
      <node concept="10P_77" id="2RM$2quh3fK" role="3clF45" />
      <node concept="3clFbS" id="2RM$2quh1HR" role="3clF47">
        <node concept="3cpWs6" id="2RM$2quh3g4" role="3cqZAp">
          <node concept="3clFbT" id="2RM$2quh3gl" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2RM$2qudEJJ" role="13h7CS">
      <property role="TrG5h" value="mayBeEmpty" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="2RM$2qudEJK" role="1B3o_S" />
      <node concept="10P_77" id="2RM$2qudGhL" role="3clF45" />
      <node concept="3clFbS" id="2RM$2qudEJM" role="3clF47">
        <node concept="3cpWs6" id="2RM$2qudGit" role="3cqZAp">
          <node concept="3clFbT" id="2RM$2qudGiW" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5lKnBeB0qXj" role="13h7CS">
      <property role="TrG5h" value="pickDirOnly" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="5lKnBeB0qXk" role="1B3o_S" />
      <node concept="10P_77" id="5lKnBeB0s5R" role="3clF45" />
      <node concept="3clFbS" id="5lKnBeB0qXm" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$E2e" role="3cqZAp">
          <node concept="3clFbT" id="6M3J7P6$E2f" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="48DzgHgr2tO" role="13h7CS">
      <property role="TrG5h" value="pickFileOnly" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="48DzgHgr2tP" role="1B3o_S" />
      <node concept="10P_77" id="48DzgHgr37S" role="3clF45" />
      <node concept="3clFbS" id="48DzgHgr2tR" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$Ep1" role="3cqZAp">
          <node concept="3clFbT" id="6M3J7P6$Ep2" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5lKnBeAIfOh" role="13h7CS">
      <property role="TrG5h" value="getPrefix" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="false" />
      <node concept="3Tm1VV" id="5lKnBeAIfOi" role="1B3o_S" />
      <node concept="17QB3L" id="5lKnBeAIg8m" role="3clF45" />
      <node concept="3clFbS" id="5lKnBeAIfOk" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$Epq" role="3cqZAp">
          <node concept="10Nm6u" id="6M3J7P6$Epr" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5lKnBeAutg0" role="13h7CS">
      <property role="TrG5h" value="getErrorMessage" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="false" />
      <node concept="3Tm1VV" id="5lKnBeAutg1" role="1B3o_S" />
      <node concept="17QB3L" id="5lKnBeAutk6" role="3clF45" />
      <node concept="3clFbS" id="5lKnBeAutg3" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$ExN" role="3cqZAp">
          <node concept="Xl_RD" id="6M3J7P6$ExO" role="3cqZAk">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5lKnBeAulu0" role="13h7CS">
      <property role="TrG5h" value="getEditorPrefix" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="false" />
      <node concept="3Tm1VV" id="5lKnBeAulu1" role="1B3o_S" />
      <node concept="17QB3L" id="5lKnBeAulGz" role="3clF45" />
      <node concept="3clFbS" id="5lKnBeAulu3" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$EEc" role="3cqZAp">
          <node concept="Xl_RD" id="6M3J7P6$EEd" role="3cqZAk">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5lKnBeAusVW" role="13h7CS">
      <property role="TrG5h" value="isValidSelection" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="false" />
      <node concept="3Tm1VV" id="5lKnBeAusVX" role="1B3o_S" />
      <node concept="10P_77" id="5lKnBeAut3a" role="3clF45" />
      <node concept="3clFbS" id="5lKnBeAusVZ" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$ELl" role="3cqZAp">
          <node concept="3clFbT" id="6M3J7P6$ELm" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5Fmx6J52q6D" role="13h7CS">
      <property role="TrG5h" value="getOutputLocationRelativePath" />
      <property role="13i0it" value="true" />
      <node concept="37vLTG" id="47170bJjoeS" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="47170bJjokV" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5Fmx6J52q6E" role="1B3o_S" />
      <node concept="17QB3L" id="5Fmx6J52q7$" role="3clF45" />
      <node concept="3clFbS" id="5Fmx6J52q6G" role="3clF47">
        <node concept="3cpWs8" id="5Fmx6J52TlQ" role="3cqZAp">
          <node concept="3cpWsn" id="5Fmx6J52TlT" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="17QB3L" id="5Fmx6J52TlO" role="1tU5fm" />
            <node concept="BsUDl" id="5Fmx6J52T_h" role="33vP2m">
              <ref role="37wK5l" node="5lKnBeAuKov" resolve="getCanonicalPath" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Fmx6J5pQHx" role="3cqZAp" />
        <node concept="3SKdUt" id="3T0oVfE1gU$" role="3cqZAp">
          <node concept="1PaTwC" id="3T0oVfE1gU_" role="3ndbpf">
            <node concept="3oM_SD" id="3T0oVfE1gUB" role="1PaTwD">
              <property role="3oM_SC" value="Ignore" />
            </node>
            <node concept="3oM_SD" id="3T0oVfE1hmQ" role="1PaTwD">
              <property role="3oM_SC" value="paths" />
            </node>
            <node concept="3oM_SD" id="3T0oVfE1hnX" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="3T0oVfE1hos" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="3T0oVfE1hrp" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="3T0oVfE1hrW" role="1PaTwD">
              <property role="3oM_SC" value="relative" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3T0oVfE1g0m" role="3cqZAp">
          <node concept="3clFbS" id="3T0oVfE1g0o" role="3clFbx">
            <node concept="3cpWs6" id="3T0oVfE1iir" role="3cqZAp">
              <node concept="37vLTw" id="3T0oVfE1iHZ" role="3cqZAk">
                <ref role="3cqZAo" node="5Fmx6J52TlT" resolve="path" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3T0oVfE1hvH" role="3clFbw">
            <node concept="2OqwBi" id="3T0oVfE1hvI" role="2Oq$k0">
              <node concept="2YIFZM" id="3T0oVfE1hvJ" role="2Oq$k0">
                <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
                <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String)" resolve="compile" />
                <node concept="Xl_RD" id="3T0oVfE1hvK" role="37wK5m">
                  <property role="Xl_RC" value="^(\\.|\\.\\.)" />
                </node>
              </node>
              <node concept="liA8E" id="3T0oVfE1hvL" role="2OqNvi">
                <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence)" resolve="matcher" />
                <node concept="37vLTw" id="3T0oVfE1hvM" role="37wK5m">
                  <ref role="3cqZAo" node="5Fmx6J52TlT" resolve="path" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3T0oVfE1hvN" role="2OqNvi">
              <ref role="37wK5l" to="ni5j:~Matcher.find()" resolve="find" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3T0oVfE1euH" role="3cqZAp" />
        <node concept="3SKdUt" id="3mZVitHMIpq" role="3cqZAp">
          <node concept="1PaTwC" id="3mZVitHMIpr" role="3ndbpf">
            <node concept="3oM_SD" id="3mZVitHMIpt" role="1PaTwD">
              <property role="3oM_SC" value="Don't" />
            </node>
            <node concept="3oM_SD" id="3mZVitHMIN5" role="1PaTwD">
              <property role="3oM_SC" value="try" />
            </node>
            <node concept="3oM_SD" id="3mZVitHMIPq" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3mZVitHMIPP" role="1PaTwD">
              <property role="3oM_SC" value="relativize" />
            </node>
            <node concept="3oM_SD" id="3mZVitHMIRS" role="1PaTwD">
              <property role="3oM_SC" value="paths" />
            </node>
            <node concept="3oM_SD" id="3mZVitHMITl" role="1PaTwD">
              <property role="3oM_SC" value="starting" />
            </node>
            <node concept="3oM_SD" id="3mZVitHMIV8" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="3mZVitHMIWz" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3mZVitHMIXM" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="3T0oVfE0Nzv" role="1PaTwD">
              <property role="3oM_SC" value="variable" />
            </node>
            <node concept="3oM_SD" id="3T0oVfE0N$e" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="3T0oVfE0N_D" role="1PaTwD">
              <property role="3oM_SC" value="environment" />
            </node>
            <node concept="3oM_SD" id="3mZVitHMJ0B" role="1PaTwD">
              <property role="3oM_SC" value="variable" />
            </node>
            <node concept="3oM_SD" id="3T0oVfE0NB6" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3mZVitHMwJs" role="3cqZAp">
          <node concept="3clFbS" id="3mZVitHMwJu" role="3clFbx">
            <node concept="3cpWs6" id="3mZVitHMRkc" role="3cqZAp">
              <node concept="37vLTw" id="3mZVitHMRkj" role="3cqZAk">
                <ref role="3cqZAo" node="5Fmx6J52TlT" resolve="path" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3mZVitHMGtB" role="3clFbw">
            <node concept="2OqwBi" id="3mZVitHMGtC" role="2Oq$k0">
              <node concept="2YIFZM" id="3mZVitHMGtD" role="2Oq$k0">
                <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String)" resolve="compile" />
                <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
                <node concept="Xl_RD" id="3T0oVfDXoja" role="37wK5m">
                  <property role="Xl_RC" value="^(\\$\\{?\\(?[\\w_-]+\\)?\\}?|%[\\w_-]+%)" />
                </node>
              </node>
              <node concept="liA8E" id="3mZVitHMGtF" role="2OqNvi">
                <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence)" resolve="matcher" />
                <node concept="37vLTw" id="3mZVitHMGtG" role="37wK5m">
                  <ref role="3cqZAo" node="5Fmx6J52TlT" resolve="path" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3mZVitHMGtH" role="2OqNvi">
              <ref role="37wK5l" to="ni5j:~Matcher.find()" resolve="find" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3mZVitHMQwJ" role="3cqZAp" />
        <node concept="3cpWs8" id="47170bJjoX8" role="3cqZAp">
          <node concept="3cpWsn" id="47170bJjoX9" role="3cpWs9">
            <property role="TrG5h" value="outputLocation" />
            <node concept="3uibUv" id="47170bJjoX7" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="2YIFZM" id="47170bJjoXa" role="33vP2m">
              <ref role="37wK5l" to="w1kc:~SModelOperations.getOutputLocation(org.jetbrains.mps.openapi.model.SModel)" resolve="getOutputLocation" />
              <ref role="1Pybhc" to="w1kc:~SModelOperations" resolve="SModelOperations" />
              <node concept="37vLTw" id="47170bJjoXb" role="37wK5m">
                <ref role="3cqZAo" node="47170bJjoeS" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="47170bJjp8a" role="3cqZAp">
          <node concept="3clFbS" id="47170bJjp8c" role="3clFbx">
            <node concept="3cpWs6" id="3mZVitHMSTS" role="3cqZAp">
              <node concept="37vLTw" id="3mZVitHMThy" role="3cqZAk">
                <ref role="3cqZAo" node="5Fmx6J52TlT" resolve="path" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3mZVitHMSyf" role="3clFbw">
            <node concept="37vLTw" id="47170bJjri$" role="3uHU7B">
              <ref role="3cqZAo" node="47170bJjoX9" resolve="outputLocation" />
            </node>
            <node concept="10Nm6u" id="47170bJjrxt" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbH" id="3mZVitHMU3i" role="3cqZAp" />
        <node concept="3cpWs8" id="47170bJhs_v" role="3cqZAp">
          <node concept="3cpWsn" id="47170bJhs_w" role="3cpWs9">
            <property role="TrG5h" value="targetPath" />
            <node concept="3uibUv" id="47170bJhs_x" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="47170bJhvy9" role="33vP2m">
              <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
              <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
              <node concept="37vLTw" id="47170bJjouN" role="37wK5m">
                <ref role="3cqZAo" node="5Fmx6J52TlT" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="47170bJhwOf" role="3cqZAp">
          <node concept="3cpWsn" id="47170bJhwOg" role="3cpWs9">
            <property role="TrG5h" value="outputPath" />
            <node concept="3uibUv" id="47170bJhwOh" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="47170bJhIa$" role="33vP2m">
              <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
              <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
              <node concept="2OqwBi" id="47170bJhKlX" role="37wK5m">
                <node concept="37vLTw" id="47170bJjoXc" role="2Oq$k0">
                  <ref role="3cqZAo" node="47170bJjoX9" resolve="outputLocation" />
                </node>
                <node concept="liA8E" id="47170bJiy85" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="1hz4WvOO_WR" role="3cqZAp">
          <node concept="3clFbS" id="1hz4WvOO_WT" role="SfCbr">
            <node concept="3clFbF" id="5Fmx6J5pPX0" role="3cqZAp">
              <node concept="37vLTI" id="5Fmx6J5pQyG" role="3clFbG">
                <node concept="37vLTw" id="5Fmx6J5pPWY" role="37vLTJ">
                  <ref role="3cqZAo" node="5Fmx6J52TlT" resolve="path" />
                </node>
                <node concept="2OqwBi" id="47170bJjsdl" role="37vLTx">
                  <node concept="2OqwBi" id="47170bJjsdm" role="2Oq$k0">
                    <node concept="37vLTw" id="47170bJjsdn" role="2Oq$k0">
                      <ref role="3cqZAo" node="47170bJhwOg" resolve="outputPath" />
                    </node>
                    <node concept="liA8E" id="47170bJjsdo" role="2OqNvi">
                      <ref role="37wK5l" to="eoo2:~Path.relativize(java.nio.file.Path)" resolve="relativize" />
                      <node concept="37vLTw" id="47170bJjsdp" role="37wK5m">
                        <ref role="3cqZAo" node="47170bJhs_w" resolve="targetPath" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="47170bJjsdq" role="2OqNvi">
                    <ref role="37wK5l" to="eoo2:~Path.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3mZVitHMOu5" role="3cqZAp">
              <node concept="2YIFZM" id="3mZVitHMOWe" role="3cqZAk">
                <ref role="1Pybhc" to="8oaq:~FilenameUtils" resolve="FilenameUtils" />
                <ref role="37wK5l" to="8oaq:~FilenameUtils.separatorsToUnix(java.lang.String)" resolve="separatorsToUnix" />
                <node concept="37vLTw" id="3mZVitHMOWf" role="37wK5m">
                  <ref role="3cqZAo" node="5Fmx6J52TlT" resolve="path" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1hz4WvOO_WU" role="TEbGg">
            <node concept="3cpWsn" id="1hz4WvOO_WW" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="1hz4WvOOCb3" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
              </node>
            </node>
            <node concept="3clFbS" id="1hz4WvOO_X0" role="TDEfX">
              <node concept="YS8fn" id="1hz4WvOOCmM" role="3cqZAp">
                <node concept="2ShNRf" id="1hz4WvOOCur" role="YScLw">
                  <node concept="1pGfFk" id="1hz4WvOODZA" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IllegalArgumentException" />
                    <node concept="3cpWs3" id="1hz4WvOOKzr" role="37wK5m">
                      <node concept="Xl_RD" id="1hz4WvOOK_Q" role="3uHU7w">
                        <property role="Xl_RC" value="'" />
                      </node>
                      <node concept="3cpWs3" id="1hz4WvOOJtl" role="3uHU7B">
                        <node concept="3cpWs3" id="1hz4WvOOH5T" role="3uHU7B">
                          <node concept="3cpWs3" id="1hz4WvOOGdE" role="3uHU7B">
                            <node concept="Xl_RD" id="1hz4WvOOEgj" role="3uHU7B">
                              <property role="Xl_RC" value="Failed to create relative path from '" />
                            </node>
                            <node concept="37vLTw" id="1hz4WvOOGpY" role="3uHU7w">
                              <ref role="3cqZAo" node="47170bJhwOg" resolve="outputPath" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="1hz4WvOOH8k" role="3uHU7w">
                            <property role="Xl_RC" value="' to '" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1hz4WvOOJRg" role="3uHU7w">
                          <ref role="3cqZAo" node="47170bJhs_w" resolve="targetPath" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1hz4WvOOEyv" role="37wK5m">
                      <ref role="3cqZAo" node="1hz4WvOO_WW" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5lKnBeAuKov" role="13h7CS">
      <property role="TrG5h" value="getCanonicalPath" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="false" />
      <node concept="3Tm1VV" id="5lKnBeAuKow" role="1B3o_S" />
      <node concept="17QB3L" id="5lKnBeAuKox" role="3clF45" />
      <node concept="3clFbS" id="5lKnBeAuKoy" role="3clF47">
        <node concept="3cpWs6" id="7ZxIDztvQ9I" role="3cqZAp">
          <node concept="BsUDl" id="7ZxIDztvQq$" role="3cqZAk">
            <ref role="37wK5l" node="35YirduUIVl" resolve="getCanonicalPath" />
            <node concept="3clFbT" id="35YirduUKQB" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="35YirduUIVl" role="13h7CS">
      <property role="TrG5h" value="getCanonicalPath" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="false" />
      <node concept="37vLTG" id="35YirduUKpw" role="3clF46">
        <property role="TrG5h" value="generating" />
        <node concept="10P_77" id="35YirduUKrX" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="35YirduUIVm" role="1B3o_S" />
      <node concept="17QB3L" id="35YirduUIVn" role="3clF45" />
      <node concept="3clFbS" id="35YirduUIVo" role="3clF47">
        <node concept="3cpWs6" id="35YirduUIVp" role="3cqZAp">
          <node concept="BsUDl" id="35YirduUIVq" role="3cqZAk">
            <ref role="37wK5l" node="35YirduUNg0" resolve="getCanonicalPath" />
            <node concept="2OqwBi" id="35YirduUIVr" role="37wK5m">
              <node concept="13iPFW" id="35YirduUIVs" role="2Oq$k0" />
              <node concept="3TrcHB" id="35YirduUIVt" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
            <node concept="37vLTw" id="35YirduUMPB" role="37wK5m">
              <ref role="3cqZAo" node="35YirduUKpw" resolve="generating" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5lKnBeAuiS4" role="13h7CS">
      <property role="TrG5h" value="getCanonicalPath" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="false" />
      <node concept="3Tmbuc" id="5lKnBeAuLK5" role="1B3o_S" />
      <node concept="17QB3L" id="5lKnBeAuiWH" role="3clF45" />
      <node concept="3clFbS" id="5lKnBeAuiS7" role="3clF47">
        <node concept="3cpWs6" id="35YirduUPfk" role="3cqZAp">
          <node concept="BsUDl" id="35YirduUQ4l" role="3cqZAk">
            <ref role="37wK5l" node="35YirduUNg0" resolve="getCanonicalPath" />
            <node concept="37vLTw" id="35YirduUR3k" role="37wK5m">
              <ref role="3cqZAo" node="5lKnBeAuGqW" resolve="path" />
            </node>
            <node concept="3clFbT" id="35YirduUSlS" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5lKnBeAuGqW" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="5lKnBeAuGqV" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="35YirduUNg0" role="13h7CS">
      <property role="TrG5h" value="getCanonicalPath" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="false" />
      <node concept="3Tmbuc" id="35YirduUNg1" role="1B3o_S" />
      <node concept="17QB3L" id="35YirduUNg2" role="3clF45" />
      <node concept="3clFbS" id="35YirduUNg3" role="3clF47">
        <node concept="3clFbF" id="35YirduUNg4" role="3cqZAp">
          <node concept="37vLTI" id="35YirduUNg5" role="3clFbG">
            <node concept="37vLTw" id="35YirduUNg6" role="37vLTJ">
              <ref role="3cqZAo" node="35YirduUNgF" resolve="path" />
            </node>
            <node concept="BsUDl" id="35YirduUNg7" role="37vLTx">
              <ref role="37wK5l" node="35YirduUTni" resolve="getNonCanonicalPath" />
              <node concept="37vLTw" id="35YirduUNg8" role="37wK5m">
                <ref role="3cqZAo" node="35YirduUNgF" resolve="path" />
              </node>
              <node concept="37vLTw" id="35YirduUV_6" role="37wK5m">
                <ref role="3cqZAo" node="35YirduUOFm" resolve="generating" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="35YirduUNg9" role="3cqZAp">
          <node concept="3fqX7Q" id="35YirduUNga" role="3clFbw">
            <node concept="2OqwBi" id="35YirduUNgb" role="3fr31v">
              <node concept="37vLTw" id="35YirduUNgc" role="2Oq$k0">
                <ref role="3cqZAo" node="35YirduUNgF" resolve="path" />
              </node>
              <node concept="17RlXB" id="35YirduUNgd" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="35YirduUNge" role="3clFbx">
            <node concept="3cpWs8" id="35YirduUNgf" role="3cqZAp">
              <node concept="3cpWsn" id="35YirduUNgg" role="3cpWs9">
                <property role="TrG5h" value="file" />
                <node concept="3uibUv" id="35YirduUNgh" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2ShNRf" id="35YirduUNgi" role="33vP2m">
                  <node concept="1pGfFk" id="35YirduUNgj" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="37vLTw" id="35YirduUNgk" role="37wK5m">
                      <ref role="3cqZAo" node="35YirduUNgF" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="35YirduUNgl" role="3cqZAp">
              <node concept="3clFbS" id="35YirduUNgm" role="3clFbx">
                <node concept="SfApY" id="35YirduUNgn" role="3cqZAp">
                  <node concept="3clFbS" id="35YirduUNgo" role="SfCbr">
                    <node concept="3cpWs6" id="35YirduUNgp" role="3cqZAp">
                      <node concept="2YIFZM" id="35YirduUNgq" role="3cqZAk">
                        <ref role="1Pybhc" to="8oaq:~FilenameUtils" resolve="FilenameUtils" />
                        <ref role="37wK5l" to="8oaq:~FilenameUtils.separatorsToUnix(java.lang.String)" resolve="separatorsToUnix" />
                        <node concept="2OqwBi" id="35YirduUNgr" role="37wK5m">
                          <node concept="liA8E" id="35YirduUNgs" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~File.getCanonicalPath()" resolve="getCanonicalPath" />
                          </node>
                          <node concept="37vLTw" id="35YirduUNgt" role="2Oq$k0">
                            <ref role="3cqZAo" node="35YirduUNgg" resolve="file" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="TDmWw" id="35YirduUNgu" role="TEbGg">
                    <node concept="3clFbS" id="35YirduUNgv" role="TDEfX">
                      <node concept="3SKdUt" id="35YirduUNgw" role="3cqZAp">
                        <node concept="1PaTwC" id="35YirduUNgx" role="3ndbpf">
                          <node concept="3oM_SD" id="35YirduUNgy" role="1PaTwD">
                            <property role="3oM_SC" value="Ignore" />
                          </node>
                          <node concept="3oM_SD" id="35YirduUNgz" role="1PaTwD">
                            <property role="3oM_SC" value="exception" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="35YirduUNg$" role="TDEfY">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="35YirduUNg_" role="1tU5fm">
                        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="35YirduUNgA" role="3clFbw">
                <node concept="37vLTw" id="35YirduUNgB" role="2Oq$k0">
                  <ref role="3cqZAo" node="35YirduUNgg" resolve="file" />
                </node>
                <node concept="liA8E" id="35YirduUNgC" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="35YirduUNgD" role="3cqZAp">
          <node concept="37vLTw" id="35YirduUNgE" role="3cqZAk">
            <ref role="3cqZAo" node="35YirduUNgF" resolve="path" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="35YirduUNgF" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="35YirduUNgG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="35YirduUOFm" role="3clF46">
        <property role="TrG5h" value="generating" />
        <node concept="10P_77" id="35YirduUOHL" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="2_BfG8PE78n" role="13h7CS">
      <property role="TrG5h" value="getNonCanonicalPath" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="2_BfG8PE78o" role="1B3o_S" />
      <node concept="17QB3L" id="2_BfG8PE9IS" role="3clF45" />
      <node concept="3clFbS" id="2_BfG8PE78q" role="3clF47">
        <node concept="3cpWs6" id="2_BfG8PEb2f" role="3cqZAp">
          <node concept="BsUDl" id="2_BfG8PEb2H" role="3cqZAk">
            <ref role="37wK5l" node="2_BfG8PE9Jr" resolve="getNonCanonicalPath" />
            <node concept="3clFbT" id="2_BfG8PEb3b" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2_BfG8PE9Jr" role="13h7CS">
      <property role="TrG5h" value="getNonCanonicalPath" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="2_BfG8PE9Js" role="1B3o_S" />
      <node concept="17QB3L" id="2_BfG8PE9Jt" role="3clF45" />
      <node concept="3clFbS" id="2_BfG8PE9Ju" role="3clF47">
        <node concept="3cpWs6" id="2_BfG8PEb3_" role="3cqZAp">
          <node concept="BsUDl" id="2_BfG8PEb4r" role="3cqZAk">
            <ref role="37wK5l" node="35YirduUTni" resolve="getNonCanonicalPath" />
            <node concept="2OqwBi" id="2_BfG8PEbjC" role="37wK5m">
              <node concept="13iPFW" id="2_BfG8PEbbl" role="2Oq$k0" />
              <node concept="3TrcHB" id="2_BfG8PEbwr" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
            <node concept="37vLTw" id="2_BfG8PEbU6" role="37wK5m">
              <ref role="3cqZAo" node="2_BfG8PEb1p" resolve="generating" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2_BfG8PEb1p" role="3clF46">
        <property role="TrG5h" value="generating" />
        <node concept="10P_77" id="2_BfG8PEb1o" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="7c_RIoAVXmk" role="13h7CS">
      <property role="TrG5h" value="getNonCanonicalPath" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="false" />
      <node concept="3Tm1VV" id="7wqWCLB$2wy" role="1B3o_S" />
      <node concept="17QB3L" id="7c_RIoAVXmm" role="3clF45" />
      <node concept="3clFbS" id="7c_RIoAVXmn" role="3clF47">
        <node concept="3clFbF" id="35YirduUV0o" role="3cqZAp">
          <node concept="BsUDl" id="35YirduUV0n" role="3clFbG">
            <ref role="37wK5l" node="35YirduUTni" resolve="getNonCanonicalPath" />
            <node concept="37vLTw" id="35YirduUVkn" role="37wK5m">
              <ref role="3cqZAo" node="7c_RIoAVXmv" resolve="path" />
            </node>
            <node concept="3clFbT" id="35YirduUVqo" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7c_RIoAVXmv" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="7c_RIoAVXmw" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="35YirduUTni" role="13h7CS">
      <property role="TrG5h" value="getNonCanonicalPath" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="false" />
      <node concept="3Tm1VV" id="35YirduUTnj" role="1B3o_S" />
      <node concept="17QB3L" id="35YirduUTnk" role="3clF45" />
      <node concept="3clFbS" id="35YirduUTnl" role="3clF47">
        <node concept="3clFbF" id="35YirduUTnm" role="3cqZAp">
          <node concept="37vLTI" id="35YirduUTnn" role="3clFbG">
            <node concept="BsUDl" id="35YirduUTno" role="37vLTx">
              <ref role="37wK5l" node="35YirduUVCr" resolve="resolvePath" />
              <node concept="37vLTw" id="35YirduUTnp" role="37wK5m">
                <ref role="3cqZAo" node="35YirduUTnF" resolve="path" />
              </node>
              <node concept="37vLTw" id="35YirduUZiB" role="37wK5m">
                <ref role="3cqZAo" node="35YirduUUzv" resolve="generating" />
              </node>
            </node>
            <node concept="37vLTw" id="35YirduUTnq" role="37vLTJ">
              <ref role="3cqZAo" node="35YirduUTnF" resolve="path" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="35YirduUTnr" role="3cqZAp">
          <node concept="3clFbS" id="35YirduUTns" role="3clFbx">
            <node concept="3cpWs6" id="35YirduUTnt" role="3cqZAp">
              <node concept="37vLTw" id="35YirduUTnu" role="3cqZAk">
                <ref role="3cqZAo" node="35YirduUTnF" resolve="path" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="35YirduUTnv" role="3clFbw">
            <node concept="10Nm6u" id="35YirduUTnw" role="3uHU7w" />
            <node concept="BsUDl" id="35YirduUTnx" role="3uHU7B">
              <ref role="37wK5l" node="5lKnBeAIfOh" resolve="getPrefix" />
            </node>
          </node>
          <node concept="9aQIb" id="35YirduUTny" role="9aQIa">
            <node concept="3clFbS" id="35YirduUTnz" role="9aQI4">
              <node concept="3cpWs6" id="35YirduUTn$" role="3cqZAp">
                <node concept="3cpWs3" id="35YirduUTn_" role="3cqZAk">
                  <node concept="37vLTw" id="35YirduUTnA" role="3uHU7w">
                    <ref role="3cqZAo" node="35YirduUTnF" resolve="path" />
                  </node>
                  <node concept="3cpWs3" id="35YirduUTnB" role="3uHU7B">
                    <node concept="2YIFZM" id="35YirduUTnC" role="3uHU7B">
                      <ref role="37wK5l" to="8oaq:~FilenameUtils.separatorsToUnix(java.lang.String)" resolve="separatorsToUnix" />
                      <ref role="1Pybhc" to="8oaq:~FilenameUtils" resolve="FilenameUtils" />
                      <node concept="BsUDl" id="35YirduUTnD" role="37wK5m">
                        <ref role="37wK5l" node="5lKnBeAIfOh" resolve="getPrefix" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="35YirduUTnE" role="3uHU7w">
                      <property role="Xl_RC" value="/" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="35YirduUTnF" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="35YirduUTnG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="35YirduUUzv" role="3clF46">
        <property role="TrG5h" value="generating" />
        <node concept="10P_77" id="35YirduUUDR" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="4_vItr5cCkz" role="13h7CS">
      <property role="TrG5h" value="resolvePath" />
      <node concept="3Tm1VV" id="4_vItr5cCk$" role="1B3o_S" />
      <node concept="17QB3L" id="4_vItr5cD9x" role="3clF45" />
      <node concept="3clFbS" id="4_vItr5cCkA" role="3clF47">
        <node concept="3cpWs6" id="4_vItr5dPYz" role="3cqZAp">
          <node concept="BsUDl" id="35YirduUXJn" role="3cqZAk">
            <ref role="37wK5l" node="35YirduUVCr" resolve="resolvePath" />
            <node concept="37vLTw" id="35YirduUXYO" role="37wK5m">
              <ref role="3cqZAo" node="4_vItr5cD9Q" resolve="path" />
            </node>
            <node concept="3clFbT" id="35YirduUYUu" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4_vItr5cD9Q" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="4_vItr5cD9P" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="35YirduUVCr" role="13h7CS">
      <property role="TrG5h" value="resolvePath" />
      <node concept="3Tm1VV" id="35YirduUVCs" role="1B3o_S" />
      <node concept="17QB3L" id="35YirduUVCt" role="3clF45" />
      <node concept="3clFbS" id="35YirduUVCu" role="3clF47">
        <node concept="3clFbJ" id="35YirduUVCv" role="3cqZAp">
          <node concept="3clFbC" id="35YirduUVCw" role="3clFbw">
            <node concept="37vLTw" id="35YirduUVCx" role="3uHU7B">
              <ref role="3cqZAo" node="35YirduUVDR" resolve="path" />
            </node>
            <node concept="10Nm6u" id="35YirduUVCy" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="35YirduUVCz" role="3clFbx">
            <node concept="3clFbF" id="35YirduUVC$" role="3cqZAp">
              <node concept="37vLTI" id="35YirduUVC_" role="3clFbG">
                <node concept="Xl_RD" id="35YirduUVCA" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="35YirduUVCB" role="37vLTJ">
                  <ref role="3cqZAo" node="35YirduUVDR" resolve="path" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="35YirduUVCC" role="3cqZAp" />
        <node concept="3cpWs8" id="35YirduUVCD" role="3cqZAp">
          <node concept="3cpWsn" id="35YirduUVCE" role="3cpWs9">
            <property role="TrG5h" value="pathVariableProvider" />
            <node concept="3Tqbb2" id="35YirduUVCF" role="1tU5fm">
              <ref role="ehGHo" to="68mc:51aJIRsy1$U" resolve="IPathVariableProvider" />
            </node>
            <node concept="2OqwBi" id="35YirduUVCG" role="33vP2m">
              <node concept="13iPFW" id="35YirduUVCH" role="2Oq$k0" />
              <node concept="2Xjw5R" id="35YirduUVCI" role="2OqNvi">
                <node concept="1xMEDy" id="35YirduUVCJ" role="1xVPHs">
                  <node concept="chp4Y" id="35YirduUVCK" role="ri$Ld">
                    <ref role="cht4Q" to="68mc:51aJIRsy1$U" resolve="IPathVariableProvider" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="35YirduUVCL" role="3cqZAp">
          <node concept="3clFbS" id="35YirduUVCM" role="3clFbx">
            <node concept="3cpWs8" id="35YirduUVCN" role="3cqZAp">
              <node concept="3cpWsn" id="35YirduUVCO" role="3cpWs9">
                <property role="TrG5h" value="pathVariablePattern" />
                <node concept="3uibUv" id="35YirduUVCP" role="1tU5fm">
                  <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
                </node>
                <node concept="2YIFZM" id="35YirduUVCQ" role="33vP2m">
                  <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
                  <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String)" resolve="compile" />
                  <node concept="Xl_RD" id="35YirduUVCR" role="37wK5m">
                    <property role="Xl_RC" value="(.*)\\$([^$()]+)\\$(.*)" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="35YirduUVCS" role="3cqZAp">
              <node concept="3cpWsn" id="35YirduUVCT" role="3cpWs9">
                <property role="TrG5h" value="pathVariableMatcher" />
                <node concept="3uibUv" id="35YirduUVCU" role="1tU5fm">
                  <ref role="3uigEE" to="ni5j:~Matcher" resolve="Matcher" />
                </node>
                <node concept="2OqwBi" id="35YirduUVCV" role="33vP2m">
                  <node concept="37vLTw" id="35YirduUVCW" role="2Oq$k0">
                    <ref role="3cqZAo" node="35YirduUVCO" resolve="pathVariablePattern" />
                  </node>
                  <node concept="liA8E" id="35YirduUVCX" role="2OqNvi">
                    <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence)" resolve="matcher" />
                    <node concept="37vLTw" id="35YirduUVCY" role="37wK5m">
                      <ref role="3cqZAo" node="35YirduUVDR" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="35YirduUVCZ" role="3cqZAp">
              <node concept="3clFbS" id="35YirduUVD0" role="2LFqv$">
                <node concept="3cpWs8" id="35YirduUVD1" role="3cqZAp">
                  <node concept="3cpWsn" id="35YirduUVD2" role="3cpWs9">
                    <property role="TrG5h" value="name" />
                    <node concept="17QB3L" id="35YirduUVD3" role="1tU5fm" />
                    <node concept="2OqwBi" id="35YirduUVD4" role="33vP2m">
                      <node concept="37vLTw" id="35YirduUVD5" role="2Oq$k0">
                        <ref role="3cqZAo" node="35YirduUVCT" resolve="pathVariableMatcher" />
                      </node>
                      <node concept="liA8E" id="35YirduUVD6" role="2OqNvi">
                        <ref role="37wK5l" to="ni5j:~Matcher.group(int)" resolve="group" />
                        <node concept="3cmrfG" id="35YirduUVD7" role="37wK5m">
                          <property role="3cmrfH" value="2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="35YirduUVD8" role="3cqZAp">
                  <node concept="3cpWsn" id="35YirduUVD9" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <node concept="17QB3L" id="35YirduUVDa" role="1tU5fm" />
                    <node concept="2OqwBi" id="35YirduUVDb" role="33vP2m">
                      <node concept="37vLTw" id="35YirduUVDc" role="2Oq$k0">
                        <ref role="3cqZAo" node="35YirduUVCE" resolve="pathVariableProvider" />
                      </node>
                      <node concept="2qgKlT" id="35YirduUVDd" role="2OqNvi">
                        <ref role="37wK5l" node="51aJIRsy2vi" resolve="getValue" />
                        <node concept="37vLTw" id="35YirduUVDe" role="37wK5m">
                          <ref role="3cqZAo" node="35YirduUVD2" resolve="name" />
                        </node>
                        <node concept="37vLTw" id="35YirduV5ey" role="37wK5m">
                          <ref role="3cqZAo" node="35YirduUWVF" resolve="generating" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="35YirduUVDf" role="3cqZAp">
                  <node concept="3clFbS" id="35YirduUVDg" role="3clFbx">
                    <node concept="3clFbF" id="35YirduUVDh" role="3cqZAp">
                      <node concept="37vLTI" id="35YirduUVDi" role="3clFbG">
                        <node concept="37vLTw" id="35YirduUVDj" role="37vLTJ">
                          <ref role="3cqZAo" node="35YirduUVD9" resolve="value" />
                        </node>
                        <node concept="Xl_RD" id="35YirduUVDk" role="37vLTx">
                          <property role="Xl_RC" value="UnknownPathVariable" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="35YirduUVDl" role="3clFbw">
                    <node concept="37vLTw" id="35YirduUVDm" role="3uHU7B">
                      <ref role="3cqZAo" node="35YirduUVD9" resolve="value" />
                    </node>
                    <node concept="10Nm6u" id="35YirduUVDn" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3clFbF" id="35YirduUVDo" role="3cqZAp">
                  <node concept="37vLTI" id="35YirduUVDp" role="3clFbG">
                    <node concept="3cpWs3" id="35YirduUVDq" role="37vLTx">
                      <node concept="2OqwBi" id="35YirduUVDr" role="3uHU7w">
                        <node concept="37vLTw" id="35YirduUVDs" role="2Oq$k0">
                          <ref role="3cqZAo" node="35YirduUVCT" resolve="pathVariableMatcher" />
                        </node>
                        <node concept="liA8E" id="35YirduUVDt" role="2OqNvi">
                          <ref role="37wK5l" to="ni5j:~Matcher.group(int)" resolve="group" />
                          <node concept="3cmrfG" id="35YirduUVDu" role="37wK5m">
                            <property role="3cmrfH" value="3" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs3" id="35YirduUVDv" role="3uHU7B">
                        <node concept="2OqwBi" id="35YirduUVDw" role="3uHU7B">
                          <node concept="37vLTw" id="35YirduUVDx" role="2Oq$k0">
                            <ref role="3cqZAo" node="35YirduUVCT" resolve="pathVariableMatcher" />
                          </node>
                          <node concept="liA8E" id="35YirduUVDy" role="2OqNvi">
                            <ref role="37wK5l" to="ni5j:~Matcher.group(int)" resolve="group" />
                            <node concept="3cmrfG" id="35YirduUVDz" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="35YirduUVD$" role="3uHU7w">
                          <ref role="3cqZAo" node="35YirduUVD9" resolve="value" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="35YirduUVD_" role="37vLTJ">
                      <ref role="3cqZAo" node="35YirduUVDR" resolve="path" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="35YirduUVDA" role="3cqZAp">
                  <node concept="37vLTI" id="35YirduUVDB" role="3clFbG">
                    <node concept="2OqwBi" id="35YirduUVDC" role="37vLTx">
                      <node concept="37vLTw" id="35YirduUVDD" role="2Oq$k0">
                        <ref role="3cqZAo" node="35YirduUVCO" resolve="pathVariablePattern" />
                      </node>
                      <node concept="liA8E" id="35YirduUVDE" role="2OqNvi">
                        <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence)" resolve="matcher" />
                        <node concept="37vLTw" id="35YirduUVDF" role="37wK5m">
                          <ref role="3cqZAo" node="35YirduUVDR" resolve="path" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="35YirduUVDG" role="37vLTJ">
                      <ref role="3cqZAo" node="35YirduUVCT" resolve="pathVariableMatcher" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="35YirduUVDH" role="2$JKZa">
                <node concept="37vLTw" id="35YirduUVDI" role="2Oq$k0">
                  <ref role="3cqZAo" node="35YirduUVCT" resolve="pathVariableMatcher" />
                </node>
                <node concept="liA8E" id="35YirduUVDJ" role="2OqNvi">
                  <ref role="37wK5l" to="ni5j:~Matcher.matches()" resolve="matches" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="35YirduUVDK" role="3clFbw">
            <node concept="37vLTw" id="35YirduUVDL" role="2Oq$k0">
              <ref role="3cqZAo" node="35YirduUVCE" resolve="pathVariableProvider" />
            </node>
            <node concept="3x8VRR" id="35YirduUVDM" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="35YirduUVDN" role="3cqZAp" />
        <node concept="3cpWs6" id="35YirduUVDO" role="3cqZAp">
          <node concept="2YIFZM" id="35YirduUVDP" role="3cqZAk">
            <ref role="37wK5l" to="8oaq:~FilenameUtils.separatorsToUnix(java.lang.String)" resolve="separatorsToUnix" />
            <ref role="1Pybhc" to="8oaq:~FilenameUtils" resolve="FilenameUtils" />
            <node concept="37vLTw" id="35YirduUVDQ" role="37wK5m">
              <ref role="3cqZAo" node="35YirduUVDR" resolve="path" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="35YirduUVDR" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="35YirduUVDS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="35YirduUWVF" role="3clF46">
        <property role="TrG5h" value="generating" />
        <node concept="10P_77" id="35YirduUXdF" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="5lKnBeAtTZu" role="13h7CS">
      <property role="TrG5h" value="exists" />
      <node concept="3Tm1VV" id="5lKnBeAtTZv" role="1B3o_S" />
      <node concept="10P_77" id="5lKnBeAufea" role="3clF45" />
      <node concept="3clFbS" id="5lKnBeAtTZx" role="3clF47">
        <node concept="3cpWs8" id="5lKnBeAu8ZZ" role="3cqZAp">
          <node concept="3cpWsn" id="5lKnBeAu900" role="3cpWs9">
            <property role="TrG5h" value="f" />
            <node concept="3uibUv" id="5lKnBeAu901" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5lKnBeAu915" role="33vP2m">
              <node concept="1pGfFk" id="5lKnBeAu912" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="BsUDl" id="5lKnBeAuMPa" role="37wK5m">
                  <ref role="37wK5l" node="7c_RIoAVXmk" resolve="getNonCanonicalPath" />
                  <node concept="2OqwBi" id="7ZxIDztH8iB" role="37wK5m">
                    <node concept="13iPFW" id="7ZxIDztH8gg" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7ZxIDztH8si" role="2OqNvi">
                      <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5lKnBeAucaa" role="3cqZAp">
          <node concept="2OqwBi" id="5lKnBeAucu6" role="3cqZAk">
            <node concept="37vLTw" id="5lKnBeAucep" role="2Oq$k0">
              <ref role="3cqZAo" node="5lKnBeAu900" resolve="f" />
            </node>
            <node concept="liA8E" id="5lKnBeAueWu" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5lKnBeAufga" role="13h7CS">
      <property role="TrG5h" value="isValidFile" />
      <node concept="3Tm1VV" id="5lKnBeAufgb" role="1B3o_S" />
      <node concept="10P_77" id="5lKnBeAufgc" role="3clF45" />
      <node concept="3clFbS" id="5lKnBeAufgd" role="3clF47">
        <node concept="3cpWs8" id="5lKnBeAufge" role="3cqZAp">
          <node concept="3cpWsn" id="5lKnBeAufgf" role="3cpWs9">
            <property role="TrG5h" value="f" />
            <node concept="3uibUv" id="5lKnBeAufgg" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5lKnBeAufgh" role="33vP2m">
              <node concept="1pGfFk" id="5lKnBeAufgi" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="BsUDl" id="5lKnBeAuNLE" role="37wK5m">
                  <ref role="37wK5l" node="7c_RIoAVXmk" resolve="getNonCanonicalPath" />
                  <node concept="2OqwBi" id="7ZxIDztH6FT" role="37wK5m">
                    <node concept="13iPFW" id="7ZxIDztH6$$" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7ZxIDztH6RE" role="2OqNvi">
                      <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5lKnBeAufgm" role="3cqZAp">
          <node concept="1Wc70l" id="5lKnBeAufGi" role="3cqZAk">
            <node concept="2OqwBi" id="5lKnBeAufXJ" role="3uHU7w">
              <node concept="37vLTw" id="5lKnBeAufHR" role="2Oq$k0">
                <ref role="3cqZAo" node="5lKnBeAufgf" resolve="f" />
              </node>
              <node concept="liA8E" id="5lKnBeAuir7" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.isFile()" resolve="isFile" />
              </node>
            </node>
            <node concept="2OqwBi" id="5lKnBeAufgn" role="3uHU7B">
              <node concept="37vLTw" id="5lKnBeAufgo" role="2Oq$k0">
                <ref role="3cqZAo" node="5lKnBeAufgf" resolve="f" />
              </node>
              <node concept="liA8E" id="5lKnBeAufgp" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5lKnBeAuiv7" role="13h7CS">
      <property role="TrG5h" value="isValidDirectory" />
      <node concept="3Tm1VV" id="5lKnBeAuiv8" role="1B3o_S" />
      <node concept="10P_77" id="5lKnBeAuiv9" role="3clF45" />
      <node concept="3clFbS" id="5lKnBeAuiva" role="3clF47">
        <node concept="3cpWs8" id="5lKnBeAuivb" role="3cqZAp">
          <node concept="3cpWsn" id="5lKnBeAuivc" role="3cpWs9">
            <property role="TrG5h" value="f" />
            <node concept="3uibUv" id="5lKnBeAuivd" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5lKnBeAuive" role="33vP2m">
              <node concept="1pGfFk" id="5lKnBeAuivf" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="BsUDl" id="5lKnBeAuOm2" role="37wK5m">
                  <ref role="37wK5l" node="7c_RIoAVXmk" resolve="getNonCanonicalPath" />
                  <node concept="2OqwBi" id="7ZxIDztH7Ub" role="37wK5m">
                    <node concept="13iPFW" id="7ZxIDztH7RM" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7ZxIDztH85k" role="2OqNvi">
                      <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5lKnBeAuivj" role="3cqZAp">
          <node concept="1Wc70l" id="5lKnBeAuivk" role="3cqZAk">
            <node concept="2OqwBi" id="5lKnBeAuivl" role="3uHU7w">
              <node concept="37vLTw" id="5lKnBeAuivm" role="2Oq$k0">
                <ref role="3cqZAo" node="5lKnBeAuivc" resolve="f" />
              </node>
              <node concept="liA8E" id="5lKnBeAuivn" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.isDirectory()" resolve="isDirectory" />
              </node>
            </node>
            <node concept="2OqwBi" id="5lKnBeAuivo" role="3uHU7B">
              <node concept="37vLTw" id="5lKnBeAuivp" role="2Oq$k0">
                <ref role="3cqZAo" node="5lKnBeAuivc" resolve="f" />
              </node>
              <node concept="liA8E" id="5lKnBeAuivq" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5lKnBeAuxBd" role="13h7CS">
      <property role="TrG5h" value="proposals" />
      <node concept="3Tm1VV" id="5lKnBeAuxBe" role="1B3o_S" />
      <node concept="_YKpA" id="5lKnBeAuxFn" role="3clF45">
        <node concept="17QB3L" id="5lKnBeAuxJC" role="_ZDj9" />
      </node>
      <node concept="3clFbS" id="5lKnBeAuxBg" role="3clF47">
        <node concept="3SKdUt" id="5Dpaey8AmFH" role="3cqZAp">
          <node concept="1PaTwC" id="17qUVvSZkOl" role="3ndbpf">
            <node concept="3oM_SD" id="17qUVvSZkOm" role="1PaTwD">
              <property role="3oM_SC" value="Collect" />
            </node>
            <node concept="3oM_SD" id="17qUVvSZkOn" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="17qUVvSZkOo" role="1PaTwD">
              <property role="3oM_SC" value="proposals" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5lKnBeAu_gu" role="3cqZAp">
          <node concept="3cpWsn" id="5lKnBeAu_gx" role="3cpWs9">
            <property role="TrG5h" value="proposedFiles" />
            <node concept="_YKpA" id="5lKnBeAu_zf" role="1tU5fm">
              <node concept="3uibUv" id="7ZxIDztw8Og" role="_ZDj9">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2ShNRf" id="5lKnBeAu_Ob" role="33vP2m">
              <node concept="Tc6Ow" id="5lKnBeAu_O7" role="2ShVmc">
                <node concept="3uibUv" id="7ZxIDztw9p4" role="HW$YZ">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3o2OLGuta65" role="3cqZAp">
          <node concept="3fqX7Q" id="3mZVitHMuzH" role="3clFbw">
            <node concept="2OqwBi" id="3mZVitHMuzJ" role="3fr31v">
              <node concept="2OqwBi" id="3mZVitHMuzK" role="2Oq$k0">
                <node concept="13iPFW" id="3mZVitHMuzL" role="2Oq$k0" />
                <node concept="2yIwOk" id="3mZVitHMuzM" role="2OqNvi" />
              </node>
              <node concept="3O6GUB" id="3mZVitHMuzN" role="2OqNvi">
                <node concept="chp4Y" id="3mZVitHMuzO" role="3QVz_e">
                  <ref role="cht4Q" to="68mc:5lKnBeAtNw8" resolve="AbstractPicker" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3o2OLGuta67" role="3clFbx">
            <node concept="3clFbJ" id="7ZxIDztwhRp" role="3cqZAp">
              <node concept="3clFbS" id="7ZxIDztwhRr" role="3clFbx">
                <node concept="3SKdUt" id="7ZxIDztwmzM" role="3cqZAp">
                  <node concept="1PaTwC" id="17qUVvSZkOp" role="3ndbpf">
                    <node concept="3oM_SD" id="17qUVvSZkOq" role="1PaTwD">
                      <property role="3oM_SC" value="empty" />
                    </node>
                    <node concept="3oM_SD" id="17qUVvSZkOr" role="1PaTwD">
                      <property role="3oM_SC" value="path" />
                    </node>
                    <node concept="3oM_SD" id="17qUVvSZkOs" role="1PaTwD">
                      <property role="3oM_SC" value="so" />
                    </node>
                    <node concept="3oM_SD" id="17qUVvSZkOt" role="1PaTwD">
                      <property role="3oM_SC" value="far" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7ZxIDztvVau" role="3cqZAp">
                  <node concept="3cpWsn" id="7ZxIDztvVav" role="3cpWs9">
                    <property role="TrG5h" value="roots" />
                    <node concept="10Q1$e" id="7ZxIDztvVaq" role="1tU5fm">
                      <node concept="3uibUv" id="7ZxIDztvVat" role="10Q1$1">
                        <ref role="3uigEE" to="guwi:~File" resolve="File" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="7ZxIDztvVaw" role="33vP2m">
                      <ref role="1Pybhc" to="guwi:~File" resolve="File" />
                      <ref role="37wK5l" to="guwi:~File.listRoots()" resolve="listRoots" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7ZxIDztvXy6" role="3cqZAp">
                  <node concept="3clFbS" id="7ZxIDztvXy8" role="3clFbx">
                    <node concept="3SKdUt" id="7ZxIDztvZW_" role="3cqZAp">
                      <node concept="1PaTwC" id="17qUVvSZkOu" role="3ndbpf">
                        <node concept="3oM_SD" id="17qUVvSZkOv" role="1PaTwD">
                          <property role="3oM_SC" value="only" />
                        </node>
                        <node concept="3oM_SD" id="17qUVvSZkOw" role="1PaTwD">
                          <property role="3oM_SC" value="one" />
                        </node>
                        <node concept="3oM_SD" id="17qUVvSZkOx" role="1PaTwD">
                          <property role="3oM_SC" value="file" />
                        </node>
                        <node concept="3oM_SD" id="17qUVvSZkOy" role="1PaTwD">
                          <property role="3oM_SC" value="system" />
                        </node>
                        <node concept="3oM_SD" id="17qUVvSZkOz" role="1PaTwD">
                          <property role="3oM_SC" value="root" />
                        </node>
                      </node>
                    </node>
                    <node concept="2Gpval" id="7ZxIDztw2bZ" role="3cqZAp">
                      <node concept="2GrKxI" id="7ZxIDztw2c1" role="2Gsz3X">
                        <property role="TrG5h" value="file" />
                      </node>
                      <node concept="3clFbS" id="7ZxIDztw2c3" role="2LFqv$">
                        <node concept="3clFbF" id="7ZxIDztw7Hu" role="3cqZAp">
                          <node concept="2OqwBi" id="7ZxIDztw7W4" role="3clFbG">
                            <node concept="37vLTw" id="5Dpaey8_ZfX" role="2Oq$k0">
                              <ref role="3cqZAo" node="5lKnBeAu_gx" resolve="proposedFiles" />
                            </node>
                            <node concept="TSZUe" id="7ZxIDztw8MH" role="2OqNvi">
                              <node concept="2GrUjf" id="7ZxIDztwc50" role="25WWJ7">
                                <ref role="2Gs0qQ" node="7ZxIDztw2c1" resolve="file" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7ZxIDztw5Gv" role="2GsD0m">
                        <node concept="AH0OO" id="7ZxIDztw5wx" role="2Oq$k0">
                          <node concept="3cmrfG" id="7ZxIDztw5zZ" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="7ZxIDztw5or" role="AHHXb">
                            <ref role="3cqZAo" node="7ZxIDztvVav" resolve="roots" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7ZxIDztw6C6" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.listFiles()" resolve="listFiles" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="7ZxIDztvZV0" role="3clFbw">
                    <node concept="3cmrfG" id="7ZxIDztvZVX" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="7ZxIDztvXDR" role="3uHU7B">
                      <node concept="37vLTw" id="7ZxIDztvXzv" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ZxIDztvVav" resolve="roots" />
                      </node>
                      <node concept="1Rwk04" id="7ZxIDztvYXh" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="7ZxIDztwd8W" role="9aQIa">
                    <node concept="3clFbS" id="7ZxIDztwd8X" role="9aQI4">
                      <node concept="3SKdUt" id="7ZxIDztwdeK" role="3cqZAp">
                        <node concept="1PaTwC" id="17qUVvSZkO$" role="3ndbpf">
                          <node concept="3oM_SD" id="17qUVvSZkO_" role="1PaTwD">
                            <property role="3oM_SC" value="multiple" />
                          </node>
                          <node concept="3oM_SD" id="17qUVvSZkOA" role="1PaTwD">
                            <property role="3oM_SC" value="file" />
                          </node>
                          <node concept="3oM_SD" id="17qUVvSZkOB" role="1PaTwD">
                            <property role="3oM_SC" value="system" />
                          </node>
                          <node concept="3oM_SD" id="17qUVvSZkOC" role="1PaTwD">
                            <property role="3oM_SC" value="roots" />
                          </node>
                        </node>
                      </node>
                      <node concept="2Gpval" id="7ZxIDztwgCI" role="3cqZAp">
                        <node concept="2GrKxI" id="7ZxIDztwgCJ" role="2Gsz3X">
                          <property role="TrG5h" value="root" />
                        </node>
                        <node concept="3clFbS" id="7ZxIDztwgCK" role="2LFqv$">
                          <node concept="3clFbF" id="7ZxIDztwgCL" role="3cqZAp">
                            <node concept="2OqwBi" id="7ZxIDztwgCM" role="3clFbG">
                              <node concept="37vLTw" id="5Dpaey8_Zpb" role="2Oq$k0">
                                <ref role="3cqZAo" node="5lKnBeAu_gx" resolve="proposedFiles" />
                              </node>
                              <node concept="TSZUe" id="7ZxIDztwgCO" role="2OqNvi">
                                <node concept="2GrUjf" id="7ZxIDztwgCP" role="25WWJ7">
                                  <ref role="2Gs0qQ" node="7ZxIDztwgCJ" resolve="root" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="7ZxIDztwgQY" role="2GsD0m">
                          <ref role="3cqZAo" node="7ZxIDztvVav" resolve="roots" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7ZxIDztHZLg" role="3clFbw">
                <node concept="3clFbC" id="7ZxIDztI0sr" role="3uHU7w">
                  <node concept="10Nm6u" id="7ZxIDztI0sA" role="3uHU7w" />
                  <node concept="BsUDl" id="7ZxIDztI0eL" role="3uHU7B">
                    <ref role="37wK5l" node="5lKnBeAIfOh" resolve="getPrefix" />
                  </node>
                </node>
                <node concept="1eOMI4" id="7ZxIDztHZaG" role="3uHU7B">
                  <node concept="22lmx$" id="3NapiAKXM3z" role="1eOMHV">
                    <node concept="22lmx$" id="7ZxIDztwjAt" role="3uHU7B">
                      <node concept="3clFbC" id="7ZxIDztwjs0" role="3uHU7B">
                        <node concept="2OqwBi" id="7ZxIDztwivp" role="3uHU7B">
                          <node concept="13iPFW" id="7ZxIDztwipi" role="2Oq$k0" />
                          <node concept="3TrcHB" id="7ZxIDztwiGt" role="2OqNvi">
                            <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="7ZxIDztwjxn" role="3uHU7w" />
                      </node>
                      <node concept="2OqwBi" id="7ZxIDztwklA" role="3uHU7w">
                        <node concept="2OqwBi" id="7ZxIDztwjN4" role="2Oq$k0">
                          <node concept="13iPFW" id="7ZxIDztwjGB" role="2Oq$k0" />
                          <node concept="3TrcHB" id="7ZxIDztwk0u" role="2OqNvi">
                            <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                          </node>
                        </node>
                        <node concept="17RlXB" id="7ZxIDztwlex" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3eOVzh" id="3NapiAKXMIt" role="3uHU7w">
                      <node concept="3cmrfG" id="3NapiAKXMIw" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="2OqwBi" id="3NapiAKXM6p" role="3uHU7B">
                        <node concept="2OqwBi" id="3NapiAKXM6q" role="2Oq$k0">
                          <node concept="13iPFW" id="3NapiAKXM6r" role="2Oq$k0" />
                          <node concept="3TrcHB" id="3NapiAKXM6s" role="2OqNvi">
                            <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3NapiAKXM6t" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                          <node concept="Xl_RD" id="3NapiAKXM6u" role="37wK5m">
                            <property role="Xl_RC" value="/" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="7ZxIDztISqz" role="9aQIa">
                <node concept="3clFbS" id="7ZxIDztISq$" role="9aQI4">
                  <node concept="3cpWs8" id="2rWX5TotCCm" role="3cqZAp">
                    <node concept="3cpWsn" id="2rWX5TotCCp" role="3cpWs9">
                      <property role="TrG5h" value="stemPath" />
                      <node concept="17QB3L" id="2rWX5TotCCk" role="1tU5fm" />
                      <node concept="10Nm6u" id="2rWX5TotCIK" role="33vP2m" />
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2rWX5TotCMY" role="3cqZAp">
                    <node concept="3clFbS" id="2rWX5TotCN0" role="3clFbx">
                      <node concept="3clFbF" id="2rWX5TotDH$" role="3cqZAp">
                        <node concept="37vLTI" id="2rWX5TotDOg" role="3clFbG">
                          <node concept="Xl_RD" id="2rWX5TotDRj" role="37vLTx">
                            <property role="Xl_RC" value="" />
                          </node>
                          <node concept="37vLTw" id="2rWX5TotDHy" role="37vLTJ">
                            <ref role="3cqZAo" node="2rWX5TotCCp" resolve="stemPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="2rWX5TotDFr" role="3clFbw">
                      <node concept="10Nm6u" id="2rWX5TotDGI" role="3uHU7w" />
                      <node concept="2OqwBi" id="2rWX5TotCSu" role="3uHU7B">
                        <node concept="13iPFW" id="2rWX5TotCQV" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2rWX5TotDop" role="2OqNvi">
                          <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="2rWX5TotDUm" role="9aQIa">
                      <node concept="3clFbS" id="2rWX5TotDUn" role="9aQI4">
                        <node concept="3cpWs8" id="2rWX5TotGuS" role="3cqZAp">
                          <node concept="3cpWsn" id="2rWX5TotGuT" role="3cpWs9">
                            <property role="TrG5h" value="index" />
                            <node concept="10Oyi0" id="2rWX5TotGuU" role="1tU5fm" />
                            <node concept="2OqwBi" id="2rWX5TotGuV" role="33vP2m">
                              <node concept="2OqwBi" id="2rWX5TotGuW" role="2Oq$k0">
                                <node concept="13iPFW" id="2rWX5TotGuX" role="2Oq$k0" />
                                <node concept="3TrcHB" id="2rWX5TotGuY" role="2OqNvi">
                                  <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                                </node>
                              </node>
                              <node concept="liA8E" id="2rWX5TotGuZ" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                                <node concept="Xl_RD" id="2rWX5TotGv0" role="37wK5m">
                                  <property role="Xl_RC" value="/" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="2rWX5TotG_N" role="3cqZAp">
                          <node concept="3clFbS" id="2rWX5TotG_P" role="3clFbx">
                            <node concept="3clFbF" id="2rWX5TotH5t" role="3cqZAp">
                              <node concept="37vLTI" id="2rWX5TotHbl" role="3clFbG">
                                <node concept="37vLTw" id="2rWX5TotH5r" role="37vLTJ">
                                  <ref role="3cqZAo" node="2rWX5TotCCp" resolve="stemPath" />
                                </node>
                                <node concept="2OqwBi" id="2rWX5TotHcr" role="37vLTx">
                                  <node concept="2OqwBi" id="2rWX5TotHcs" role="2Oq$k0">
                                    <node concept="13iPFW" id="2rWX5TotHct" role="2Oq$k0" />
                                    <node concept="3TrcHB" id="2rWX5TotHcu" role="2OqNvi">
                                      <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="2rWX5TotHcv" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                                    <node concept="3cmrfG" id="2rWX5TotHcw" role="37wK5m">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="3cpWs3" id="2rWX5TotHcx" role="37wK5m">
                                      <node concept="3cmrfG" id="2rWX5TotHcy" role="3uHU7w">
                                        <property role="3cmrfH" value="1" />
                                      </node>
                                      <node concept="37vLTw" id="2rWX5TotHcz" role="3uHU7B">
                                        <ref role="3cqZAo" node="2rWX5TotGuT" resolve="index" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2d3UOw" id="2rWX5TotH1U" role="3clFbw">
                            <node concept="3cmrfG" id="2rWX5TotH2D" role="3uHU7w">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="37vLTw" id="2rWX5TotGC7" role="3uHU7B">
                              <ref role="3cqZAo" node="2rWX5TotGuT" resolve="index" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="2rWX5TotCxk" role="3cqZAp" />
                  <node concept="3cpWs8" id="7ZxIDztISU5" role="3cqZAp">
                    <node concept="3cpWsn" id="7ZxIDztISU6" role="3cpWs9">
                      <property role="TrG5h" value="stem" />
                      <node concept="3uibUv" id="7ZxIDztISU7" role="1tU5fm">
                        <ref role="3uigEE" to="guwi:~File" resolve="File" />
                      </node>
                      <node concept="2ShNRf" id="7ZxIDztISU8" role="33vP2m">
                        <node concept="1pGfFk" id="7ZxIDztISU9" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="BsUDl" id="7ZxIDztITy5" role="37wK5m">
                            <ref role="37wK5l" node="7c_RIoAVXmk" resolve="getNonCanonicalPath" />
                            <node concept="37vLTw" id="2rWX5TotHuw" role="37wK5m">
                              <ref role="3cqZAo" node="2rWX5TotCCp" resolve="stemPath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2rWX5TotHxK" role="3cqZAp">
                    <node concept="3cpWsn" id="2rWX5TotHxL" role="3cpWs9">
                      <property role="TrG5h" value="files" />
                      <node concept="10Q1$e" id="2rWX5TotHxy" role="1tU5fm">
                        <node concept="3uibUv" id="2rWX5TotHx_" role="10Q1$1">
                          <ref role="3uigEE" to="guwi:~File" resolve="File" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2rWX5TotHxM" role="33vP2m">
                        <node concept="37vLTw" id="2rWX5TotHxN" role="2Oq$k0">
                          <ref role="3cqZAo" node="7ZxIDztISU6" resolve="stem" />
                        </node>
                        <node concept="liA8E" id="2rWX5TotHxO" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.listFiles()" resolve="listFiles" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2rWX5TotItg" role="3cqZAp">
                    <node concept="3clFbS" id="2rWX5TotIti" role="3clFbx">
                      <node concept="2Gpval" id="7ZxIDztISUk" role="3cqZAp">
                        <node concept="2GrKxI" id="7ZxIDztISUl" role="2Gsz3X">
                          <property role="TrG5h" value="file" />
                        </node>
                        <node concept="3clFbS" id="7ZxIDztISUm" role="2LFqv$">
                          <node concept="3clFbJ" id="HgIalQK1VO" role="3cqZAp">
                            <node concept="3clFbS" id="HgIalQK1VQ" role="3clFbx">
                              <node concept="3clFbF" id="7ZxIDztISUn" role="3cqZAp">
                                <node concept="2OqwBi" id="7ZxIDztISUo" role="3clFbG">
                                  <node concept="37vLTw" id="5Dpaey8_Zri" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5lKnBeAu_gx" resolve="proposedFiles" />
                                  </node>
                                  <node concept="TSZUe" id="7ZxIDztISUq" role="2OqNvi">
                                    <node concept="2GrUjf" id="7ZxIDztISUr" role="25WWJ7">
                                      <ref role="2Gs0qQ" node="7ZxIDztISUl" resolve="file" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="22lmx$" id="HgIalQK2eJ" role="3clFbw">
                              <node concept="2OqwBi" id="HgIalQK2xA" role="3uHU7w">
                                <node concept="2GrUjf" id="HgIalQK2fF" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="7ZxIDztISUl" resolve="file" />
                                </node>
                                <node concept="liA8E" id="HgIalQK3d7" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~File.isDirectory()" resolve="isDirectory" />
                                </node>
                              </node>
                              <node concept="3fqX7Q" id="HgIalQK1X4" role="3uHU7B">
                                <node concept="BsUDl" id="HgIalQK1X6" role="3fr31v">
                                  <ref role="37wK5l" node="5lKnBeB0qXj" resolve="pickDirOnly" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="2rWX5TotHxP" role="2GsD0m">
                          <ref role="3cqZAo" node="2rWX5TotHxL" resolve="files" />
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="2rWX5TotIY6" role="3clFbw">
                      <node concept="10Nm6u" id="2rWX5TotIYA" role="3uHU7w" />
                      <node concept="37vLTw" id="2rWX5TotIv_" role="3uHU7B">
                        <ref role="3cqZAo" node="2rWX5TotHxL" resolve="files" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7ZxIDztvVgi" role="3cqZAp" />
        <node concept="3cpWs8" id="7ZxIDztwncS" role="3cqZAp">
          <node concept="3cpWsn" id="7ZxIDztwncY" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="7ZxIDztwnd0" role="1tU5fm">
              <node concept="17QB3L" id="7ZxIDztwnqq" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="7ZxIDztwnWk" role="33vP2m">
              <node concept="Tc6Ow" id="7ZxIDztwnWg" role="2ShVmc">
                <node concept="17QB3L" id="7ZxIDztwnWh" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Dpaey8$iW5" role="3cqZAp">
          <node concept="3cpWsn" id="5Dpaey8$iW8" role="3cpWs9">
            <property role="TrG5h" value="resolvedPath" />
            <node concept="17QB3L" id="5Dpaey8$iW3" role="1tU5fm" />
            <node concept="BsUDl" id="5Dpaey8$jhC" role="33vP2m">
              <ref role="37wK5l" node="4_vItr5cCkz" resolve="resolvePath" />
              <node concept="2OqwBi" id="5Dpaey8$jr8" role="37wK5m">
                <node concept="13iPFW" id="5Dpaey8$jik" role="2Oq$k0" />
                <node concept="3TrcHB" id="5Dpaey8$j$F" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ZxIDztwF8k" role="3cqZAp">
          <node concept="3cpWsn" id="7ZxIDztwF8n" role="3cpWs9">
            <property role="TrG5h" value="nonCanonicalPath" />
            <node concept="17QB3L" id="7ZxIDztwF8i" role="1tU5fm" />
            <node concept="BsUDl" id="7ZxIDztwFG1" role="33vP2m">
              <ref role="37wK5l" node="7c_RIoAVXmk" resolve="getNonCanonicalPath" />
              <node concept="2OqwBi" id="5Dpaey8_lT8" role="37wK5m">
                <node concept="13iPFW" id="5Dpaey8_lGz" role="2Oq$k0" />
                <node concept="3TrcHB" id="5Dpaey8_m2U" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7ZxIDztwoeF" role="3cqZAp">
          <node concept="2GrKxI" id="7ZxIDztwoeH" role="2Gsz3X">
            <property role="TrG5h" value="proposedFile" />
          </node>
          <node concept="3clFbS" id="7ZxIDztwoeJ" role="2LFqv$">
            <node concept="3cpWs8" id="7ZxIDztwyKa" role="3cqZAp">
              <node concept="3cpWsn" id="7ZxIDztwyKb" role="3cpWs9">
                <property role="TrG5h" value="proposedPath" />
                <node concept="17QB3L" id="7ZxIDztwzd$" role="1tU5fm" />
                <node concept="2YIFZM" id="3mZVitHMnY9" role="33vP2m">
                  <ref role="37wK5l" to="8oaq:~FilenameUtils.separatorsToUnix(java.lang.String)" resolve="separatorsToUnix" />
                  <ref role="1Pybhc" to="8oaq:~FilenameUtils" resolve="FilenameUtils" />
                  <node concept="2OqwBi" id="7ZxIDztDu26" role="37wK5m">
                    <node concept="2GrUjf" id="7ZxIDztDtJM" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7ZxIDztwoeH" resolve="proposedFile" />
                    </node>
                    <node concept="liA8E" id="7ZxIDztDvvT" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.getPath()" resolve="getPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5Dpaey8Ao1b" role="3cqZAp">
              <node concept="1PaTwC" id="17qUVvSZkOD" role="3ndbpf">
                <node concept="3oM_SD" id="17qUVvSZkOE" role="1PaTwD">
                  <property role="3oM_SC" value="Only" />
                </node>
                <node concept="3oM_SD" id="17qUVvSZkOF" role="1PaTwD">
                  <property role="3oM_SC" value="keep" />
                </node>
                <node concept="3oM_SD" id="17qUVvSZkOG" role="1PaTwD">
                  <property role="3oM_SC" value="proposed" />
                </node>
                <node concept="3oM_SD" id="17qUVvSZkOH" role="1PaTwD">
                  <property role="3oM_SC" value="paths" />
                </node>
                <node concept="3oM_SD" id="17qUVvSZkOI" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="17qUVvSZkOJ" role="1PaTwD">
                  <property role="3oM_SC" value="match" />
                </node>
                <node concept="3oM_SD" id="17qUVvSZkOK" role="1PaTwD">
                  <property role="3oM_SC" value="already" />
                </node>
                <node concept="3oM_SD" id="17qUVvSZkOL" role="1PaTwD">
                  <property role="3oM_SC" value="entered" />
                </node>
                <node concept="3oM_SD" id="17qUVvSZkOM" role="1PaTwD">
                  <property role="3oM_SC" value="partial" />
                </node>
                <node concept="3oM_SD" id="17qUVvSZkON" role="1PaTwD">
                  <property role="3oM_SC" value="path" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7ZxIDztwsdy" role="3cqZAp">
              <node concept="3clFbS" id="7ZxIDztwsd$" role="3clFbx">
                <node concept="3clFbJ" id="2rWX5To_GbJ" role="3cqZAp">
                  <node concept="3clFbS" id="2rWX5To_GbL" role="3clFbx">
                    <node concept="3SKdUt" id="2rWX5To_GFu" role="3cqZAp">
                      <node concept="1PaTwC" id="17qUVvSZkOO" role="3ndbpf">
                        <node concept="3oM_SD" id="17qUVvSZkOP" role="1PaTwD">
                          <property role="3oM_SC" value="Remove" />
                        </node>
                        <node concept="3oM_SD" id="17qUVvSZkOQ" role="1PaTwD">
                          <property role="3oM_SC" value="prefix" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5Dpaey8_s$o" role="3cqZAp">
                      <node concept="37vLTI" id="5Dpaey8_t_4" role="3clFbG">
                        <node concept="37vLTw" id="5Dpaey8_s$m" role="37vLTJ">
                          <ref role="3cqZAo" node="7ZxIDztwyKb" resolve="proposedPath" />
                        </node>
                        <node concept="2OqwBi" id="2rWX5To_KEg" role="37vLTx">
                          <node concept="37vLTw" id="2rWX5To_Kyi" role="2Oq$k0">
                            <ref role="3cqZAo" node="7ZxIDztwyKb" resolve="proposedPath" />
                          </node>
                          <node concept="liA8E" id="2rWX5To_L6n" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                            <node concept="3cpWs3" id="2rWX5To_MyV" role="37wK5m">
                              <node concept="3cmrfG" id="2rWX5To_MyY" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="2rWX5To_LoS" role="3uHU7B">
                                <node concept="BsUDl" id="2rWX5To_LaM" role="2Oq$k0">
                                  <ref role="37wK5l" node="5lKnBeAIfOh" resolve="getPrefix" />
                                </node>
                                <node concept="liA8E" id="2rWX5To_Mff" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="2rWX5To_GDP" role="3clFbw">
                    <node concept="10Nm6u" id="2rWX5To_GEE" role="3uHU7w" />
                    <node concept="BsUDl" id="2rWX5To_Gv5" role="3uHU7B">
                      <ref role="37wK5l" node="5lKnBeAIfOh" resolve="getPrefix" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5Dpaey8Aeoa" role="3cqZAp">
                  <node concept="3clFbS" id="5Dpaey8Aeoc" role="3clFbx">
                    <node concept="3SKdUt" id="5Dpaey8_weZ" role="3cqZAp">
                      <node concept="1PaTwC" id="17qUVvSZkOR" role="3ndbpf">
                        <node concept="3oM_SD" id="17qUVvSZkOS" role="1PaTwD">
                          <property role="3oM_SC" value="Deresolve" />
                        </node>
                        <node concept="3oM_SD" id="17qUVvSZkOT" role="1PaTwD">
                          <property role="3oM_SC" value="path" />
                        </node>
                        <node concept="3oM_SD" id="17qUVvSZkOU" role="1PaTwD">
                          <property role="3oM_SC" value="variables" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5Dpaey8_xrP" role="3cqZAp">
                      <node concept="37vLTI" id="5Dpaey8_yre" role="3clFbG">
                        <node concept="2OqwBi" id="5Dpaey8_yV3" role="37vLTx">
                          <node concept="37vLTw" id="5Dpaey8_y$N" role="2Oq$k0">
                            <ref role="3cqZAo" node="7ZxIDztwyKb" resolve="proposedPath" />
                          </node>
                          <node concept="liA8E" id="5Dpaey8_zJp" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                            <node concept="37vLTw" id="5Dpaey8_DM_" role="37wK5m">
                              <ref role="3cqZAo" node="5Dpaey8$iW8" resolve="resolvedPath" />
                            </node>
                            <node concept="2OqwBi" id="5Dpaey8_BV7" role="37wK5m">
                              <node concept="13iPFW" id="5Dpaey8_Adz" role="2Oq$k0" />
                              <node concept="3TrcHB" id="5Dpaey8_DzB" role="2OqNvi">
                                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="5Dpaey8_xrN" role="37vLTJ">
                          <ref role="3cqZAo" node="7ZxIDztwyKb" resolve="proposedPath" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="5Dpaey8AfCm" role="3clFbw">
                    <node concept="3fqX7Q" id="5Dpaey8Ahd0" role="3uHU7w">
                      <node concept="2OqwBi" id="5Dpaey8Ahd2" role="3fr31v">
                        <node concept="2OqwBi" id="5Dpaey8Ahd3" role="2Oq$k0">
                          <node concept="13iPFW" id="5Dpaey8Ahd4" role="2Oq$k0" />
                          <node concept="3TrcHB" id="5Dpaey8Ahd5" role="2OqNvi">
                            <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                          </node>
                        </node>
                        <node concept="17RlXB" id="5Dpaey8Ahd6" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3y3z36" id="5Dpaey8Afzw" role="3uHU7B">
                      <node concept="2OqwBi" id="5Dpaey8AeUi" role="3uHU7B">
                        <node concept="13iPFW" id="5Dpaey8AeLA" role="2Oq$k0" />
                        <node concept="3TrcHB" id="5Dpaey8Af3C" role="2OqNvi">
                          <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="5Dpaey8Af_W" role="3uHU7w" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7ZxIDztGcqU" role="3cqZAp">
                  <node concept="2OqwBi" id="7ZxIDztGcMr" role="3clFbG">
                    <node concept="37vLTw" id="7ZxIDztGcqS" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ZxIDztwncY" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="7ZxIDztGeH5" role="2OqNvi">
                      <node concept="37vLTw" id="7ZxIDztGeJt" role="25WWJ7">
                        <ref role="3cqZAo" node="7ZxIDztwyKb" resolve="proposedPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7ZxIDztwHnb" role="3clFbw">
                <node concept="37vLTw" id="7ZxIDztwHaj" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ZxIDztwyKb" resolve="proposedPath" />
                </node>
                <node concept="liA8E" id="7ZxIDztwIfa" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                  <node concept="37vLTw" id="7ZxIDztwIkR" role="37wK5m">
                    <ref role="3cqZAo" node="7ZxIDztwF8n" resolve="nonCanonicalPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7ZxIDztwowt" role="2GsD0m">
            <ref role="3cqZAo" node="5lKnBeAu_gx" resolve="proposedFiles" />
          </node>
        </node>
        <node concept="3clFbH" id="7ZxIDztvRtZ" role="3cqZAp" />
        <node concept="3SKdUt" id="5Dpaey8ApiT" role="3cqZAp">
          <node concept="1PaTwC" id="17qUVvSZkOV" role="3ndbpf">
            <node concept="3oM_SD" id="17qUVvSZkOW" role="1PaTwD">
              <property role="3oM_SC" value="Collect" />
            </node>
            <node concept="3oM_SD" id="17qUVvSZkOX" role="1PaTwD">
              <property role="3oM_SC" value="path" />
            </node>
            <node concept="3oM_SD" id="17qUVvSZkOY" role="1PaTwD">
              <property role="3oM_SC" value="variable" />
            </node>
            <node concept="3oM_SD" id="17qUVvSZkOZ" role="1PaTwD">
              <property role="3oM_SC" value="proposals" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Dpaey8zqJO" role="3cqZAp">
          <node concept="3cpWsn" id="5Dpaey8zqJR" role="3cpWs9">
            <property role="TrG5h" value="pathVariableProvider" />
            <node concept="3Tqbb2" id="5Dpaey8zqJS" role="1tU5fm">
              <ref role="ehGHo" to="68mc:51aJIRsy1$U" resolve="IPathVariableProvider" />
            </node>
            <node concept="2OqwBi" id="5Dpaey8zqJT" role="33vP2m">
              <node concept="13iPFW" id="5Dpaey8zqJU" role="2Oq$k0" />
              <node concept="2Xjw5R" id="5Dpaey8zqJV" role="2OqNvi">
                <node concept="1xMEDy" id="5Dpaey8zqJW" role="1xVPHs">
                  <node concept="chp4Y" id="5Dpaey8zqJX" role="ri$Ld">
                    <ref role="cht4Q" to="68mc:51aJIRsy1$U" resolve="IPathVariableProvider" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5Dpaey8zrMn" role="3cqZAp">
          <node concept="3clFbS" id="5Dpaey8zrMp" role="3clFbx">
            <node concept="3cpWs8" id="5Dpaey8B9po" role="3cqZAp">
              <node concept="3cpWsn" id="5Dpaey8B9pp" role="3cpWs9">
                <property role="TrG5h" value="pathVariableFragmentPattern" />
                <node concept="3uibUv" id="5Dpaey8B9pq" role="1tU5fm">
                  <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
                </node>
                <node concept="2YIFZM" id="5Dpaey8B9pr" role="33vP2m">
                  <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
                  <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String)" resolve="compile" />
                  <node concept="Xl_RD" id="5Dpaey8B9TU" role="37wK5m">
                    <property role="Xl_RC" value="(.*)\\$[^$()]*$" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5Dpaey8B9pt" role="3cqZAp">
              <node concept="3cpWsn" id="5Dpaey8B9pu" role="3cpWs9">
                <property role="TrG5h" value="pathVariableFragmentMatcher" />
                <node concept="3uibUv" id="5Dpaey8B9pv" role="1tU5fm">
                  <ref role="3uigEE" to="ni5j:~Matcher" resolve="Matcher" />
                </node>
                <node concept="2OqwBi" id="5Dpaey8B9pw" role="33vP2m">
                  <node concept="37vLTw" id="5Dpaey8B9px" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Dpaey8B9pp" resolve="pathVariableFragmentPattern" />
                  </node>
                  <node concept="liA8E" id="5Dpaey8B9py" role="2OqNvi">
                    <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence)" resolve="matcher" />
                    <node concept="37vLTw" id="5Dpaey8Ba0X" role="37wK5m">
                      <ref role="3cqZAo" node="5Dpaey8$iW8" resolve="resolvedPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5Dpaey8zgwW" role="3cqZAp">
              <node concept="3clFbS" id="5Dpaey8zgwY" role="3clFbx">
                <node concept="2Gpval" id="5Dpaey8zutP" role="3cqZAp">
                  <node concept="2GrKxI" id="5Dpaey8zutR" role="2Gsz3X">
                    <property role="TrG5h" value="name" />
                  </node>
                  <node concept="2OqwBi" id="5Dpaey8zuB_" role="2GsD0m">
                    <node concept="37vLTw" id="5Dpaey8zuuH" role="2Oq$k0">
                      <ref role="3cqZAo" node="5Dpaey8zqJR" resolve="pathVariableProvider" />
                    </node>
                    <node concept="2qgKlT" id="5Dpaey8zuTn" role="2OqNvi">
                      <ref role="37wK5l" node="51aJIRsy1_6" resolve="getNames" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5Dpaey8zutV" role="2LFqv$">
                    <node concept="3cpWs8" id="5Dpaey8z$wU" role="3cqZAp">
                      <node concept="3cpWsn" id="5Dpaey8z$wV" role="3cpWs9">
                        <property role="TrG5h" value="proposedPath" />
                        <node concept="17QB3L" id="5Dpaey8zWvF" role="1tU5fm" />
                        <node concept="3cpWs3" id="5Dpaey8BcFx" role="33vP2m">
                          <node concept="Xl_RD" id="5Dpaey8BcFy" role="3uHU7w">
                            <property role="Xl_RC" value="$" />
                          </node>
                          <node concept="3cpWs3" id="5Dpaey8BcFz" role="3uHU7B">
                            <node concept="3cpWs3" id="5Dpaey8BciZ" role="3uHU7B">
                              <node concept="2OqwBi" id="5Dpaey8BaMX" role="3uHU7B">
                                <node concept="37vLTw" id="5Dpaey8BaBh" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5Dpaey8B9pu" resolve="pathVariableFragmentMatcher" />
                                </node>
                                <node concept="liA8E" id="5Dpaey8Bbf2" role="2OqNvi">
                                  <ref role="37wK5l" to="ni5j:~Matcher.group(int)" resolve="group" />
                                  <node concept="3cmrfG" id="5Dpaey8Bbsc" role="37wK5m">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="5Dpaey8BcF$" role="3uHU7w">
                                <property role="Xl_RC" value="$" />
                              </node>
                            </node>
                            <node concept="2GrUjf" id="5Dpaey8BcF_" role="3uHU7w">
                              <ref role="2Gs0qQ" node="5Dpaey8zutR" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5Dpaey8zuXM" role="3cqZAp">
                      <node concept="2OqwBi" id="5Dpaey8zv_p" role="3clFbG">
                        <node concept="37vLTw" id="5Dpaey8$5Qu" role="2Oq$k0">
                          <ref role="3cqZAo" node="7ZxIDztwncY" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="5Dpaey8zx66" role="2OqNvi">
                          <node concept="37vLTw" id="5Dpaey8Bgd1" role="25WWJ7">
                            <ref role="3cqZAo" node="5Dpaey8z$wV" resolve="proposedPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5Dpaey8ziOo" role="3clFbw">
                <node concept="37vLTw" id="5Dpaey8Baq_" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Dpaey8B9pu" resolve="pathVariableFragmentMatcher" />
                </node>
                <node concept="liA8E" id="5Dpaey8zjxZ" role="2OqNvi">
                  <ref role="37wK5l" to="ni5j:~Matcher.matches()" resolve="matches" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5Dpaey8zssb" role="3clFbw">
            <node concept="37vLTw" id="5Dpaey8zsjv" role="2Oq$k0">
              <ref role="3cqZAo" node="5Dpaey8zqJR" resolve="pathVariableProvider" />
            </node>
            <node concept="3x8VRR" id="5Dpaey8zsHX" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="7ZxIDztwIRP" role="3cqZAp">
          <node concept="37vLTw" id="7ZxIDztwJ5w" role="3cqZAk">
            <ref role="3cqZAo" node="7ZxIDztwncY" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2HwAvL$nzbX" role="13h7CS">
      <property role="TrG5h" value="editWithSystemEditor" />
      <node concept="3Tm1VV" id="2HwAvL$nzel" role="1B3o_S" />
      <node concept="10P_77" id="2HwAvL$nCJX" role="3clF45" />
      <node concept="3clFbS" id="2HwAvL$nzen" role="3clF47">
        <node concept="3clFbJ" id="2HwAvL$nEiR" role="3cqZAp">
          <node concept="3clFbS" id="2HwAvL$nEiU" role="3clFbx">
            <node concept="3cpWs6" id="2HwAvL$nEIy" role="3cqZAp">
              <node concept="3clFbT" id="2HwAvL$nEIV" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2HwAvL$nEsU" role="3clFbw">
            <node concept="BsUDl" id="2HwAvL$nEF6" role="3fr31v">
              <ref role="37wK5l" node="5lKnBeAufga" resolve="isValidFile" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="50N_nP$ec2R" role="3cqZAp">
          <node concept="3clFbS" id="50N_nP$ec2S" role="SfCbr">
            <node concept="3cpWs8" id="50N_nP$dNYU" role="3cqZAp">
              <node concept="3cpWsn" id="50N_nP$dNYV" role="3cpWs9">
                <property role="TrG5h" value="d" />
                <node concept="3uibUv" id="50N_nP$dNYW" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Desktop" resolve="Desktop" />
                </node>
                <node concept="3K4zz7" id="50N_nP$dNZl" role="33vP2m">
                  <node concept="2YIFZM" id="50N_nP$dNZr" role="3K4E3e">
                    <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
                    <ref role="37wK5l" to="z60i:~Desktop.getDesktop()" resolve="getDesktop" />
                  </node>
                  <node concept="10Nm6u" id="50N_nP$dNZK" role="3K4GZi" />
                  <node concept="2YIFZM" id="50N_nP$dNZ0" role="3K4Cdx">
                    <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
                    <ref role="37wK5l" to="z60i:~Desktop.isDesktopSupported()" resolve="isDesktopSupported" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="50N_nP$dNZO" role="3cqZAp">
              <node concept="3clFbS" id="50N_nP$dNZP" role="3clFbx">
                <node concept="3clFbF" id="50N_nP$dPHr" role="3cqZAp">
                  <node concept="2OqwBi" id="50N_nP$dPGQ" role="3clFbG">
                    <node concept="37vLTw" id="50N_nP$dPGx" role="2Oq$k0">
                      <ref role="3cqZAo" node="50N_nP$dNYV" resolve="d" />
                    </node>
                    <node concept="liA8E" id="50N_nP$dPGY" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Desktop.edit(java.io.File)" resolve="edit" />
                      <node concept="2ShNRf" id="2HwAvL$naaI" role="37wK5m">
                        <node concept="1pGfFk" id="2HwAvL$nxC$" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="2OqwBi" id="2HwAvL$n8r7" role="37wK5m">
                            <node concept="13iPFW" id="2HwAvL$nDcp" role="2Oq$k0" />
                            <node concept="2qgKlT" id="2HwAvL$n8IW" role="2OqNvi">
                              <ref role="37wK5l" node="5lKnBeAuKov" resolve="getCanonicalPath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="50N_nP$dO0d" role="3clFbw">
                <node concept="37vLTw" id="2AZbPfMaNmK" role="3uHU7B">
                  <ref role="3cqZAo" node="50N_nP$dNYV" resolve="d" />
                </node>
                <node concept="10Nm6u" id="50N_nP$dO0g" role="3uHU7w" />
              </node>
            </node>
            <node concept="3cpWs6" id="2HwAvL$nDCH" role="3cqZAp">
              <node concept="3clFbT" id="2HwAvL$nDD8" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="50N_nP$ec2U" role="TEbGg">
            <node concept="3cpWsn" id="50N_nP$ec2V" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="50N_nP$ec2Y" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="50N_nP$ec2X" role="TDEfX">
              <node concept="3clFbF" id="50N_nP$eipd" role="3cqZAp">
                <node concept="2OqwBi" id="50N_nP$eipz" role="3clFbG">
                  <node concept="37vLTw" id="2AZbPfMaNsN" role="2Oq$k0">
                    <ref role="3cqZAo" node="50N_nP$ec2V" resolve="ex" />
                  </node>
                  <node concept="liA8E" id="50N_nP$eipD" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2HwAvL$nDp$" role="3cqZAp">
                <node concept="3clFbT" id="2HwAvL$nDqq" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2HwAvL$nEXJ" role="13h7CS">
      <property role="TrG5h" value="openWithSystemEditor" />
      <node concept="3Tm1VV" id="2HwAvL$nEXK" role="1B3o_S" />
      <node concept="10P_77" id="2HwAvL$nEXL" role="3clF45" />
      <node concept="3clFbS" id="2HwAvL$nEXM" role="3clF47">
        <node concept="3clFbJ" id="2HwAvL$nEXN" role="3cqZAp">
          <node concept="3clFbS" id="2HwAvL$nEXO" role="3clFbx">
            <node concept="3cpWs6" id="2HwAvL$nEXP" role="3cqZAp">
              <node concept="3clFbT" id="2HwAvL$nEXQ" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2HwAvL$nEXR" role="3clFbw">
            <node concept="BsUDl" id="2HwAvL$nEXS" role="3fr31v">
              <ref role="37wK5l" node="5lKnBeAufga" resolve="isValidFile" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="2HwAvL$nEXT" role="3cqZAp">
          <node concept="3clFbS" id="2HwAvL$nEXU" role="SfCbr">
            <node concept="3cpWs8" id="2HwAvL$nEXV" role="3cqZAp">
              <node concept="3cpWsn" id="2HwAvL$nEXW" role="3cpWs9">
                <property role="TrG5h" value="d" />
                <node concept="3uibUv" id="2HwAvL$nEXX" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Desktop" resolve="Desktop" />
                </node>
                <node concept="3K4zz7" id="2HwAvL$nEXY" role="33vP2m">
                  <node concept="2YIFZM" id="2HwAvL$nEXZ" role="3K4E3e">
                    <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
                    <ref role="37wK5l" to="z60i:~Desktop.getDesktop()" resolve="getDesktop" />
                  </node>
                  <node concept="10Nm6u" id="2HwAvL$nEY0" role="3K4GZi" />
                  <node concept="2YIFZM" id="2HwAvL$nEY1" role="3K4Cdx">
                    <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
                    <ref role="37wK5l" to="z60i:~Desktop.isDesktopSupported()" resolve="isDesktopSupported" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2HwAvL$nEY2" role="3cqZAp">
              <node concept="3clFbS" id="2HwAvL$nEY3" role="3clFbx">
                <node concept="3clFbF" id="2HwAvL$nEY4" role="3cqZAp">
                  <node concept="2OqwBi" id="2HwAvL$nEY5" role="3clFbG">
                    <node concept="37vLTw" id="2HwAvL$nEY6" role="2Oq$k0">
                      <ref role="3cqZAo" node="2HwAvL$nEXW" resolve="d" />
                    </node>
                    <node concept="liA8E" id="2HwAvL$nEY7" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Desktop.open(java.io.File)" resolve="open" />
                      <node concept="2ShNRf" id="2HwAvL$nEY8" role="37wK5m">
                        <node concept="1pGfFk" id="2HwAvL$nEY9" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="2OqwBi" id="2HwAvL$nEYa" role="37wK5m">
                            <node concept="13iPFW" id="2HwAvL$nEYb" role="2Oq$k0" />
                            <node concept="2qgKlT" id="2HwAvL$nEYc" role="2OqNvi">
                              <ref role="37wK5l" node="5lKnBeAuKov" resolve="getCanonicalPath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2HwAvL$nEYd" role="3clFbw">
                <node concept="37vLTw" id="2HwAvL$nEYe" role="3uHU7B">
                  <ref role="3cqZAo" node="2HwAvL$nEXW" resolve="d" />
                </node>
                <node concept="10Nm6u" id="2HwAvL$nEYf" role="3uHU7w" />
              </node>
            </node>
            <node concept="3cpWs6" id="2HwAvL$nEYg" role="3cqZAp">
              <node concept="3clFbT" id="2HwAvL$nEYh" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="2HwAvL$nEYi" role="TEbGg">
            <node concept="3cpWsn" id="2HwAvL$nEYj" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="2HwAvL$nEYk" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="2HwAvL$nEYl" role="TDEfX">
              <node concept="3clFbF" id="2HwAvL$nEYm" role="3cqZAp">
                <node concept="2OqwBi" id="2HwAvL$nEYn" role="3clFbG">
                  <node concept="37vLTw" id="2HwAvL$nEYo" role="2Oq$k0">
                    <ref role="3cqZAo" node="2HwAvL$nEYj" resolve="ex" />
                  </node>
                  <node concept="liA8E" id="2HwAvL$nEYp" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2HwAvL$nEYq" role="3cqZAp">
                <node concept="3clFbT" id="2HwAvL$nEYr" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6uhyUqXhg1F" role="13h7CS">
      <property role="TrG5h" value="openWithSystemFileExplorer" />
      <node concept="3Tm1VV" id="6uhyUqXhg1G" role="1B3o_S" />
      <node concept="10P_77" id="6uhyUqXhg1H" role="3clF45" />
      <node concept="3clFbS" id="6uhyUqXhg1I" role="3clF47">
        <node concept="3clFbJ" id="6uhyUqXhg1J" role="3cqZAp">
          <node concept="3clFbS" id="6uhyUqXhg1K" role="3clFbx">
            <node concept="3cpWs6" id="6uhyUqXhg1L" role="3cqZAp">
              <node concept="3clFbT" id="6uhyUqXhg1M" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6uhyUqXhg1N" role="3clFbw">
            <node concept="BsUDl" id="6uhyUqXhiU0" role="3fr31v">
              <ref role="37wK5l" node="5lKnBeAuiv7" resolve="isValidDirectory" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="6uhyUqXhg1P" role="3cqZAp">
          <node concept="3clFbS" id="6uhyUqXhg1Q" role="SfCbr">
            <node concept="3cpWs8" id="6uhyUqXhg1R" role="3cqZAp">
              <node concept="3cpWsn" id="6uhyUqXhg1S" role="3cpWs9">
                <property role="TrG5h" value="d" />
                <node concept="3uibUv" id="6uhyUqXhg1T" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Desktop" resolve="Desktop" />
                </node>
                <node concept="3K4zz7" id="6uhyUqXhg1U" role="33vP2m">
                  <node concept="2YIFZM" id="6uhyUqXhg1V" role="3K4E3e">
                    <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
                    <ref role="37wK5l" to="z60i:~Desktop.getDesktop()" resolve="getDesktop" />
                  </node>
                  <node concept="10Nm6u" id="6uhyUqXhg1W" role="3K4GZi" />
                  <node concept="2YIFZM" id="6uhyUqXhg1X" role="3K4Cdx">
                    <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
                    <ref role="37wK5l" to="z60i:~Desktop.isDesktopSupported()" resolve="isDesktopSupported" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6uhyUqXhg1Y" role="3cqZAp">
              <node concept="3clFbS" id="6uhyUqXhg1Z" role="3clFbx">
                <node concept="3clFbF" id="6uhyUqXhg20" role="3cqZAp">
                  <node concept="2OqwBi" id="6uhyUqXhg21" role="3clFbG">
                    <node concept="37vLTw" id="6uhyUqXhg22" role="2Oq$k0">
                      <ref role="3cqZAo" node="6uhyUqXhg1S" resolve="d" />
                    </node>
                    <node concept="liA8E" id="6uhyUqXhg23" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Desktop.open(java.io.File)" resolve="open" />
                      <node concept="2ShNRf" id="6uhyUqXhg24" role="37wK5m">
                        <node concept="1pGfFk" id="6uhyUqXhg25" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="2OqwBi" id="6uhyUqXhg26" role="37wK5m">
                            <node concept="13iPFW" id="6uhyUqXhg27" role="2Oq$k0" />
                            <node concept="2qgKlT" id="6uhyUqXhg28" role="2OqNvi">
                              <ref role="37wK5l" node="5lKnBeAuKov" resolve="getCanonicalPath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6uhyUqXhg29" role="3clFbw">
                <node concept="37vLTw" id="6uhyUqXhg2a" role="3uHU7B">
                  <ref role="3cqZAo" node="6uhyUqXhg1S" resolve="d" />
                </node>
                <node concept="10Nm6u" id="6uhyUqXhg2b" role="3uHU7w" />
              </node>
            </node>
            <node concept="3cpWs6" id="6uhyUqXhg2c" role="3cqZAp">
              <node concept="3clFbT" id="6uhyUqXhg2d" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="6uhyUqXhg2e" role="TEbGg">
            <node concept="3cpWsn" id="6uhyUqXhg2f" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="6uhyUqXhg2g" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="6uhyUqXhg2h" role="TDEfX">
              <node concept="3clFbF" id="6uhyUqXhg2i" role="3cqZAp">
                <node concept="2OqwBi" id="6uhyUqXhg2j" role="3clFbG">
                  <node concept="37vLTw" id="6uhyUqXhg2k" role="2Oq$k0">
                    <ref role="3cqZAo" node="6uhyUqXhg2f" resolve="ex" />
                  </node>
                  <node concept="liA8E" id="6uhyUqXhg2l" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6uhyUqXhg2m" role="3cqZAp">
                <node concept="3clFbT" id="6uhyUqXhg2n" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3xqp6yeWGLu" role="13h7CS">
      <property role="TrG5h" value="getCompanionFileOrFolderPicker" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="3xqp6yeWGLv" role="1B3o_S" />
      <node concept="3clFbS" id="3xqp6yeWGLw" role="3clF47" />
      <node concept="3Tqbb2" id="3xqp6yeWTbp" role="3clF45">
        <ref role="ehGHo" to="68mc:5lKnBeAtNw8" resolve="AbstractPicker" />
      </node>
    </node>
    <node concept="13hLZK" id="5lKnBeAtTjs" role="13h7CW">
      <node concept="3clFbS" id="5lKnBeAtTjt" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4eXJ6EOwIHS">
    <property role="3GE5qa" value="pathAndFile" />
    <ref role="13h7C2" to="68mc:4eXJ6EOwIAn" resolve="FileSystemDirPicker" />
    <node concept="13i0hz" id="5xCl9gYe4C1" role="13h7CS">
      <property role="TrG5h" value="mustExist" />
      <ref role="13i0hy" node="2RM$2quh1HO" resolve="mustExist" />
      <node concept="3clFbS" id="5xCl9gYe4C4" role="3clF47">
        <node concept="3clFbJ" id="5xCl9gYe4CH" role="3cqZAp">
          <node concept="1Wc70l" id="5xCl9gYe4CI" role="3clFbw">
            <node concept="2OqwBi" id="5xCl9gYe4CJ" role="3uHU7w">
              <node concept="2OqwBi" id="5xCl9gYe4CK" role="2Oq$k0">
                <node concept="13iPFW" id="5xCl9gYe4CL" role="2Oq$k0" />
                <node concept="3TrcHB" id="5xCl9gYe4CM" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                </node>
              </node>
              <node concept="liA8E" id="5xCl9gYe4CN" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                <node concept="Xl_RD" id="5xCl9gYe4CO" role="37wK5m">
                  <property role="Xl_RC" value="[a-zA-Z]:\\/.*" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5xCl9gYe4CP" role="3uHU7B">
              <node concept="2OqwBi" id="5xCl9gYe4CQ" role="3uHU7B">
                <node concept="13iPFW" id="5xCl9gYe4CR" role="2Oq$k0" />
                <node concept="3TrcHB" id="5xCl9gYe4CS" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                </node>
              </node>
              <node concept="10Nm6u" id="5xCl9gYe4CT" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="5xCl9gYe4CU" role="3clFbx">
            <node concept="3cpWs6" id="5xCl9gYe4CV" role="3cqZAp">
              <node concept="10M0yZ" id="5xCl9gYe4CW" role="3cqZAk">
                <ref role="3cqZAo" to="btm1:~SystemUtils.IS_OS_WINDOWS" resolve="IS_OS_WINDOWS" />
                <ref role="1PxDUh" to="btm1:~SystemUtils" resolve="SystemUtils" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5xCl9gYe4CX" role="3cqZAp">
          <node concept="1Wc70l" id="5xCl9gYe4CY" role="3clFbw">
            <node concept="2OqwBi" id="5xCl9gYe4CZ" role="3uHU7w">
              <node concept="2OqwBi" id="5xCl9gYe4D0" role="2Oq$k0">
                <node concept="13iPFW" id="5xCl9gYe4D1" role="2Oq$k0" />
                <node concept="3TrcHB" id="5xCl9gYe4D2" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                </node>
              </node>
              <node concept="liA8E" id="5xCl9gYe4D3" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                <node concept="Xl_RD" id="5xCl9gYe4D4" role="37wK5m">
                  <property role="Xl_RC" value="\\/.*" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5xCl9gYe4D5" role="3uHU7B">
              <node concept="2OqwBi" id="5xCl9gYe4D6" role="3uHU7B">
                <node concept="13iPFW" id="5xCl9gYe4D7" role="2Oq$k0" />
                <node concept="3TrcHB" id="5xCl9gYe4D8" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                </node>
              </node>
              <node concept="10Nm6u" id="5xCl9gYe4D9" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="5xCl9gYe4Da" role="3clFbx">
            <node concept="3cpWs6" id="5xCl9gYe4Db" role="3cqZAp">
              <node concept="3fqX7Q" id="5xCl9gYe4Dc" role="3cqZAk">
                <node concept="10M0yZ" id="5xCl9gYe4Dd" role="3fr31v">
                  <ref role="1PxDUh" to="btm1:~SystemUtils" resolve="SystemUtils" />
                  <ref role="3cqZAo" to="btm1:~SystemUtils.IS_OS_WINDOWS" resolve="IS_OS_WINDOWS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5xCl9gYe4De" role="3cqZAp">
          <node concept="3clFbT" id="5xCl9gYe4Df" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5xCl9gYe4CD" role="3clF45" />
      <node concept="3Tm1VV" id="5xCl9gYe4CE" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="4eXJ6EOwIHV" role="13h7CS">
      <property role="TrG5h" value="pickDirOnly" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeB0qXj" resolve="pickDirOnly" />
      <node concept="3Tm1VV" id="4eXJ6EOwIHW" role="1B3o_S" />
      <node concept="3clFbS" id="4eXJ6EOwII1" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$Jx2" role="3cqZAp">
          <node concept="3clFbT" id="6M3J7P6$Jx3" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4eXJ6EOwII2" role="3clF45" />
    </node>
    <node concept="13hLZK" id="4eXJ6EOwIHT" role="13h7CW">
      <node concept="3clFbS" id="4eXJ6EOwIHU" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4eXJ6EOwIJt" role="13h7CS">
      <property role="TrG5h" value="getErrorMessage" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAutg0" resolve="getErrorMessage" />
      <node concept="3Tm1VV" id="4eXJ6EOwIJu" role="1B3o_S" />
      <node concept="3clFbS" id="4eXJ6EOwIJx" role="3clF47">
        <node concept="3cpWs6" id="2rWX5ToGe4q" role="3cqZAp">
          <node concept="Xl_RD" id="2rWX5ToGe4t" role="3cqZAk">
            <property role="Xl_RC" value="not a valid absolute directory path" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4eXJ6EOwIJy" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3xqp6yeWTbP" role="13h7CS">
      <property role="TrG5h" value="getCompanionFileOrFolderPicker" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3xqp6yeWGLu" resolve="getCompanionFileOrFolderPicker" />
      <node concept="3Tm1VV" id="3xqp6yeWTbQ" role="1B3o_S" />
      <node concept="3clFbS" id="3xqp6yeWTbT" role="3clF47">
        <node concept="3cpWs8" id="3xqp6yeXcfA" role="3cqZAp">
          <node concept="3cpWsn" id="3xqp6yeXcfB" role="3cpWs9">
            <property role="TrG5h" value="picker" />
            <node concept="3Tqbb2" id="3xqp6yeXcf$" role="1tU5fm">
              <ref role="ehGHo" to="68mc:1jw2PJJHS3i" resolve="FileSystemFilePicker" />
            </node>
            <node concept="2ShNRf" id="3xqp6yeXcfC" role="33vP2m">
              <node concept="3zrR0B" id="3xqp6yeXcfD" role="2ShVmc">
                <node concept="3Tqbb2" id="3xqp6yeXcfE" role="3zrR0E">
                  <ref role="ehGHo" to="68mc:1jw2PJJHS3i" resolve="FileSystemFilePicker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3xqp6yeXcgV" role="3cqZAp">
          <node concept="37vLTI" id="3xqp6yeXcLy" role="3clFbG">
            <node concept="2OqwBi" id="3xqp6yeXcP4" role="37vLTx">
              <node concept="13iPFW" id="3xqp6yeXcMj" role="2Oq$k0" />
              <node concept="3TrcHB" id="3xqp6yeXdc$" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
            <node concept="2OqwBi" id="3xqp6yeXckN" role="37vLTJ">
              <node concept="37vLTw" id="3xqp6yeXcgT" role="2Oq$k0">
                <ref role="3cqZAo" node="3xqp6yeXcfB" resolve="picker" />
              </node>
              <node concept="3TrcHB" id="3xqp6yeXcwj" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2rWX5ToEudU" role="3cqZAp">
          <node concept="37vLTw" id="2rWX5ToEudV" role="3cqZAk">
            <ref role="3cqZAo" node="3xqp6yeXcfB" resolve="picker" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3xqp6yeWTbU" role="3clF45">
        <ref role="ehGHo" to="68mc:5lKnBeAtNw8" resolve="AbstractPicker" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1jw2PJJHS3j">
    <property role="3GE5qa" value="pathAndFile" />
    <ref role="13h7C2" to="68mc:1jw2PJJHS3i" resolve="FileSystemFilePicker" />
    <node concept="13i0hz" id="2RM$2qugUYp" role="13h7CS">
      <property role="TrG5h" value="mustExist" />
      <ref role="13i0hy" node="2RM$2quh1HO" resolve="mustExist" />
      <node concept="3clFbS" id="2RM$2qugUYs" role="3clF47">
        <node concept="3clFbJ" id="2RM$2quescO" role="3cqZAp">
          <node concept="1Wc70l" id="2RM$2quescP" role="3clFbw">
            <node concept="2OqwBi" id="2RM$2quescQ" role="3uHU7w">
              <node concept="2OqwBi" id="2RM$2quescR" role="2Oq$k0">
                <node concept="13iPFW" id="2RM$2quescS" role="2Oq$k0" />
                <node concept="3TrcHB" id="2RM$2quescT" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                </node>
              </node>
              <node concept="liA8E" id="2RM$2quetco" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                <node concept="Xl_RD" id="2RM$2quetgu" role="37wK5m">
                  <property role="Xl_RC" value="[a-zA-Z]:\\/.*" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2RM$2quescW" role="3uHU7B">
              <node concept="2OqwBi" id="2RM$2quescX" role="3uHU7B">
                <node concept="13iPFW" id="2RM$2quescY" role="2Oq$k0" />
                <node concept="3TrcHB" id="2RM$2quescZ" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                </node>
              </node>
              <node concept="10Nm6u" id="2RM$2quesd0" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="2RM$2quesd1" role="3clFbx">
            <node concept="3cpWs6" id="2RM$2quesd2" role="3cqZAp">
              <node concept="10M0yZ" id="2RM$2quesd4" role="3cqZAk">
                <ref role="3cqZAo" to="btm1:~SystemUtils.IS_OS_WINDOWS" resolve="IS_OS_WINDOWS" />
                <ref role="1PxDUh" to="btm1:~SystemUtils" resolve="SystemUtils" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2RM$2que2l8" role="3cqZAp">
          <node concept="1Wc70l" id="2RM$2que6Yq" role="3clFbw">
            <node concept="2OqwBi" id="2RM$2que7Ti" role="3uHU7w">
              <node concept="2OqwBi" id="2RM$2que7dV" role="2Oq$k0">
                <node concept="13iPFW" id="2RM$2que720" role="2Oq$k0" />
                <node concept="3TrcHB" id="2RM$2que7ya" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                </node>
              </node>
              <node concept="liA8E" id="2RM$2que8lh" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                <node concept="Xl_RD" id="2RM$2que8n8" role="37wK5m">
                  <property role="Xl_RC" value="\\/.*" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2RM$2que6Kc" role="3uHU7B">
              <node concept="2OqwBi" id="2RM$2que4N$" role="3uHU7B">
                <node concept="13iPFW" id="2RM$2que4BZ" role="2Oq$k0" />
                <node concept="3TrcHB" id="2RM$2que55b" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                </node>
              </node>
              <node concept="10Nm6u" id="2RM$2que6XQ" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="2RM$2que2la" role="3clFbx">
            <node concept="3cpWs6" id="2RM$2que8sb" role="3cqZAp">
              <node concept="3fqX7Q" id="2RM$2ques0l" role="3cqZAk">
                <node concept="10M0yZ" id="2RM$2ques0n" role="3fr31v">
                  <ref role="1PxDUh" to="btm1:~SystemUtils" resolve="SystemUtils" />
                  <ref role="3cqZAo" to="btm1:~SystemUtils.IS_OS_WINDOWS" resolve="IS_OS_WINDOWS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RM$2ques5Y" role="3cqZAp">
          <node concept="3clFbT" id="2RM$2quesbr" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RM$2qugV0C" role="1B3o_S" />
      <node concept="10P_77" id="2RM$2quh3uW" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1jw2PJJHWxq" role="13h7CS">
      <property role="TrG5h" value="pickDirOnly" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeB0qXj" resolve="pickDirOnly" />
      <node concept="3Tm1VV" id="1jw2PJJHWxr" role="1B3o_S" />
      <node concept="3clFbS" id="1jw2PJJHWxs" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$HOE" role="3cqZAp">
          <node concept="3clFbT" id="6M3J7P6$HOF" role="3cqZAk" />
        </node>
      </node>
      <node concept="10P_77" id="1jw2PJJHWxv" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1jw2PJJI2q3" role="13h7CS">
      <property role="TrG5h" value="pickFileOnly" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="48DzgHgr2tO" resolve="pickFileOnly" />
      <node concept="3Tm1VV" id="1jw2PJJI2q4" role="1B3o_S" />
      <node concept="3clFbS" id="1jw2PJJI2q9" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$HSp" role="3cqZAp">
          <node concept="3clFbT" id="6M3J7P6$HSq" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="1jw2PJJI2qa" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1jw2PJJHWxA" role="13h7CS">
      <property role="TrG5h" value="getErrorMessage" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAutg0" resolve="getErrorMessage" />
      <node concept="3Tm1VV" id="1jw2PJJHWxB" role="1B3o_S" />
      <node concept="3clFbS" id="1jw2PJJHWxC" role="3clF47">
        <node concept="3cpWs6" id="2rWX5ToGefj" role="3cqZAp">
          <node concept="Xl_RD" id="2rWX5ToGefk" role="3cqZAk">
            <property role="Xl_RC" value="not a valid absolute file path" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1jw2PJJHWxF" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3xqp6yeXdkQ" role="13h7CS">
      <property role="TrG5h" value="getCompanionFileOrFolderPicker" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3xqp6yeWGLu" resolve="getCompanionFileOrFolderPicker" />
      <node concept="3Tm1VV" id="3xqp6yeXdkR" role="1B3o_S" />
      <node concept="3clFbS" id="3xqp6yeXdkS" role="3clF47">
        <node concept="3cpWs8" id="3xqp6yeXdkT" role="3cqZAp">
          <node concept="3cpWsn" id="3xqp6yeXdkU" role="3cpWs9">
            <property role="TrG5h" value="picker" />
            <node concept="3Tqbb2" id="3xqp6yeXdkV" role="1tU5fm">
              <ref role="ehGHo" to="68mc:4eXJ6EOwIAn" resolve="FileSystemDirPicker" />
            </node>
            <node concept="2ShNRf" id="3xqp6yeXdkW" role="33vP2m">
              <node concept="3zrR0B" id="3xqp6yeXdkX" role="2ShVmc">
                <node concept="3Tqbb2" id="3xqp6yeXdkY" role="3zrR0E">
                  <ref role="ehGHo" to="68mc:4eXJ6EOwIAn" resolve="FileSystemDirPicker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3xqp6yeXdkZ" role="3cqZAp">
          <node concept="37vLTI" id="3xqp6yeXdl0" role="3clFbG">
            <node concept="2OqwBi" id="3xqp6yeXdl1" role="37vLTx">
              <node concept="13iPFW" id="3xqp6yeXdl2" role="2Oq$k0" />
              <node concept="3TrcHB" id="3xqp6yeXdl3" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
            <node concept="2OqwBi" id="3xqp6yeXdl4" role="37vLTJ">
              <node concept="37vLTw" id="3xqp6yeXdl5" role="2Oq$k0">
                <ref role="3cqZAo" node="3xqp6yeXdkU" resolve="picker" />
              </node>
              <node concept="3TrcHB" id="3xqp6yeXdl6" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2rWX5ToEusF" role="3cqZAp">
          <node concept="37vLTw" id="2rWX5ToEusG" role="3cqZAk">
            <ref role="3cqZAo" node="3xqp6yeXdkU" resolve="picker" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3xqp6yeXdl9" role="3clF45">
        <ref role="ehGHo" to="68mc:5lKnBeAtNw8" resolve="AbstractPicker" />
      </node>
    </node>
    <node concept="13hLZK" id="1jw2PJJHS3k" role="13h7CW">
      <node concept="3clFbS" id="1jw2PJJHS3l" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7c_RIoB8H9o">
    <property role="3GE5qa" value="pathAndFile" />
    <ref role="13h7C2" to="68mc:7c_RIoB8H2I" resolve="MacroFilePicker" />
    <node concept="13hLZK" id="7c_RIoB8H9p" role="13h7CW">
      <node concept="3clFbS" id="7c_RIoB8H9q" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7c_RIoB8IKs" role="13h7CS">
      <property role="TrG5h" value="getPrefix" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAIfOh" resolve="getPrefix" />
      <node concept="3Tm1VV" id="7c_RIoB8IKt" role="1B3o_S" />
      <node concept="3clFbS" id="7c_RIoB8IKw" role="3clF47">
        <node concept="3cpWs6" id="HgIalQMxED" role="3cqZAp">
          <node concept="2OqwBi" id="HgIalQMxEE" role="3cqZAk">
            <node concept="2YIFZM" id="HgIalQMxEF" role="2Oq$k0">
              <ref role="1Pybhc" to="z1c3:~PathMacros" resolve="PathMacros" />
              <ref role="37wK5l" to="z1c3:~PathMacros.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="HgIalQMxEG" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~PathMacros.getValue(java.lang.String)" resolve="getValue" />
              <node concept="2OqwBi" id="HgIalQMxEH" role="37wK5m">
                <node concept="13iPFW" id="HgIalQMxEI" role="2Oq$k0" />
                <node concept="3TrcHB" id="HgIalQMxEJ" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:7c_RIoB8OqH" resolve="macro" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="7c_RIoB8IKx" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7c_RIoB8IKy" role="13h7CS">
      <property role="TrG5h" value="getErrorMessage" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAutg0" resolve="getErrorMessage" />
      <node concept="3Tm1VV" id="7c_RIoB8IKz" role="1B3o_S" />
      <node concept="3clFbS" id="7c_RIoB8IKA" role="3clF47">
        <node concept="3cpWs6" id="2rWX5ToGdG6" role="3cqZAp">
          <node concept="3cpWs3" id="2rWX5ToH4Qm" role="3cqZAk">
            <node concept="Xl_RD" id="2rWX5ToH4Qp" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
            <node concept="3cpWs3" id="2rWX5ToGdG7" role="3uHU7B">
              <node concept="3cpWs3" id="2rWX5ToH4D5" role="3uHU7B">
                <node concept="Xl_RD" id="2rWX5ToH4Hb" role="3uHU7w">
                  <property role="Xl_RC" value=" (" />
                </node>
                <node concept="3cpWs3" id="2rWX5ToH3Rh" role="3uHU7B">
                  <node concept="Xl_RD" id="2rWX5ToGdG9" role="3uHU7B">
                    <property role="Xl_RC" value="not a valid file path relative to macro " />
                  </node>
                  <node concept="2OqwBi" id="2rWX5ToH3Wk" role="3uHU7w">
                    <node concept="13iPFW" id="2rWX5ToH3RI" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2rWX5ToH4k$" role="2OqNvi">
                      <ref role="3TsBF5" to="68mc:7c_RIoB8OqH" resolve="macro" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="BsUDl" id="2rWX5ToGdG8" role="3uHU7w">
                <ref role="37wK5l" node="5lKnBeAIfOh" resolve="getPrefix" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="7c_RIoB8IKB" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3xqp6yeXdvJ" role="13h7CS">
      <property role="TrG5h" value="getCompanionFileOrFolderPicker" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3xqp6yeWGLu" resolve="getCompanionFileOrFolderPicker" />
      <node concept="3Tm1VV" id="3xqp6yeXdvK" role="1B3o_S" />
      <node concept="3clFbS" id="3xqp6yeXdvL" role="3clF47">
        <node concept="3cpWs8" id="3xqp6yeXdvM" role="3cqZAp">
          <node concept="3cpWsn" id="3xqp6yeXdvN" role="3cpWs9">
            <property role="TrG5h" value="picker" />
            <node concept="3Tqbb2" id="3xqp6yeXdvO" role="1tU5fm">
              <ref role="ehGHo" to="68mc:4eXJ6EO9ZKx" resolve="MacroFolderPicker" />
            </node>
            <node concept="2ShNRf" id="3xqp6yeXdvP" role="33vP2m">
              <node concept="3zrR0B" id="3xqp6yeXdvQ" role="2ShVmc">
                <node concept="3Tqbb2" id="3xqp6yeXdvR" role="3zrR0E">
                  <ref role="ehGHo" to="68mc:4eXJ6EO9ZKx" resolve="MacroFolderPicker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3xqp6yeXdvS" role="3cqZAp">
          <node concept="37vLTI" id="3xqp6yeXdvT" role="3clFbG">
            <node concept="2OqwBi" id="3xqp6yeXdvU" role="37vLTx">
              <node concept="13iPFW" id="3xqp6yeXdvV" role="2Oq$k0" />
              <node concept="3TrcHB" id="3xqp6yeXdvW" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
            <node concept="2OqwBi" id="3xqp6yeXdvX" role="37vLTJ">
              <node concept="37vLTw" id="3xqp6yeXdvY" role="2Oq$k0">
                <ref role="3cqZAo" node="3xqp6yeXdvN" resolve="picker" />
              </node>
              <node concept="3TrcHB" id="3xqp6yeXdvZ" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2rWX5ToFklh" role="3cqZAp">
          <node concept="37vLTI" id="2rWX5ToFl2F" role="3clFbG">
            <node concept="2OqwBi" id="2rWX5ToFl6i" role="37vLTx">
              <node concept="13iPFW" id="2rWX5ToFl3y" role="2Oq$k0" />
              <node concept="3TrcHB" id="2rWX5ToFluL" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:7c_RIoB8OqH" resolve="macro" />
              </node>
            </node>
            <node concept="2OqwBi" id="2rWX5ToFkoh" role="37vLTJ">
              <node concept="37vLTw" id="2rWX5ToFklf" role="2Oq$k0">
                <ref role="3cqZAo" node="3xqp6yeXdvN" resolve="picker" />
              </node>
              <node concept="3TrcHB" id="2rWX5ToFkLc" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:4eXJ6EO9ZKy" resolve="macro" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2rWX5ToEuAK" role="3cqZAp">
          <node concept="37vLTw" id="2rWX5ToEuAL" role="3cqZAk">
            <ref role="3cqZAo" node="3xqp6yeXdvN" resolve="picker" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3xqp6yeXdw2" role="3clF45">
        <ref role="ehGHo" to="68mc:5lKnBeAtNw8" resolve="AbstractPicker" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4eXJ6EO9ZU9">
    <property role="3GE5qa" value="pathAndFile" />
    <ref role="13h7C2" to="68mc:4eXJ6EO9ZKx" resolve="MacroFolderPicker" />
    <node concept="13i0hz" id="4eXJ6EO9ZUc" role="13h7CS">
      <property role="TrG5h" value="pickDirOnly" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeB0qXj" resolve="pickDirOnly" />
      <node concept="3Tm1VV" id="4eXJ6EO9ZUd" role="1B3o_S" />
      <node concept="3clFbS" id="4eXJ6EO9ZUi" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$CS7" role="3cqZAp">
          <node concept="3clFbT" id="6M3J7P6$CS8" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4eXJ6EO9ZUj" role="3clF45" />
    </node>
    <node concept="13hLZK" id="4eXJ6EO9ZUa" role="13h7CW">
      <node concept="3clFbS" id="4eXJ6EO9ZUb" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4eXJ6EOa6Dh" role="13h7CS">
      <property role="TrG5h" value="getPrefix" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAIfOh" resolve="getPrefix" />
      <node concept="3Tm1VV" id="4eXJ6EOa6Di" role="1B3o_S" />
      <node concept="3clFbS" id="4eXJ6EOa6Dj" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$Cz5" role="3cqZAp">
          <node concept="2OqwBi" id="6M3J7P6$Cz6" role="3cqZAk">
            <node concept="2YIFZM" id="6M3J7P6$Cz7" role="2Oq$k0">
              <ref role="1Pybhc" to="z1c3:~PathMacros" resolve="PathMacros" />
              <ref role="37wK5l" to="z1c3:~PathMacros.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="6M3J7P6$Cz8" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~PathMacros.getValue(java.lang.String)" resolve="getValue" />
              <node concept="2OqwBi" id="6M3J7P6$Cz9" role="37wK5m">
                <node concept="13iPFW" id="6M3J7P6$Cza" role="2Oq$k0" />
                <node concept="3TrcHB" id="6M3J7P6$Czb" role="2OqNvi">
                  <ref role="3TsBF5" to="68mc:4eXJ6EO9ZKy" resolve="macro" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4eXJ6EOa6Dr" role="3clF45" />
    </node>
    <node concept="13i0hz" id="4eXJ6EOa6Ds" role="13h7CS">
      <property role="TrG5h" value="getErrorMessage" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAutg0" resolve="getErrorMessage" />
      <node concept="3Tm1VV" id="4eXJ6EOa6Dt" role="1B3o_S" />
      <node concept="3clFbS" id="4eXJ6EOa6Du" role="3clF47">
        <node concept="3cpWs6" id="2rWX5ToGdVv" role="3cqZAp">
          <node concept="3cpWs3" id="2rWX5ToH55Z" role="3cqZAk">
            <node concept="Xl_RD" id="2rWX5ToH560" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
            <node concept="3cpWs3" id="2rWX5ToH561" role="3uHU7B">
              <node concept="3cpWs3" id="2rWX5ToH562" role="3uHU7B">
                <node concept="Xl_RD" id="2rWX5ToH563" role="3uHU7w">
                  <property role="Xl_RC" value=" (" />
                </node>
                <node concept="3cpWs3" id="2rWX5ToH564" role="3uHU7B">
                  <node concept="Xl_RD" id="2rWX5ToH565" role="3uHU7B">
                    <property role="Xl_RC" value="not a valid folder path relative to macro " />
                  </node>
                  <node concept="2OqwBi" id="2rWX5ToH566" role="3uHU7w">
                    <node concept="13iPFW" id="2rWX5ToH567" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2rWX5ToH568" role="2OqNvi">
                      <ref role="3TsBF5" to="68mc:4eXJ6EO9ZKy" resolve="macro" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="BsUDl" id="2rWX5ToH569" role="3uHU7w">
                <ref role="37wK5l" node="5lKnBeAIfOh" resolve="getPrefix" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4eXJ6EOa6Dx" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3xqp6yeXdHN" role="13h7CS">
      <property role="TrG5h" value="getCompanionFileOrFolderPicker" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3xqp6yeWGLu" resolve="getCompanionFileOrFolderPicker" />
      <node concept="3Tm1VV" id="3xqp6yeXdHO" role="1B3o_S" />
      <node concept="3clFbS" id="3xqp6yeXdHP" role="3clF47">
        <node concept="3cpWs8" id="3xqp6yeXdHQ" role="3cqZAp">
          <node concept="3cpWsn" id="3xqp6yeXdHR" role="3cpWs9">
            <property role="TrG5h" value="picker" />
            <node concept="3Tqbb2" id="3xqp6yeXdHS" role="1tU5fm">
              <ref role="ehGHo" to="68mc:7c_RIoB8H2I" resolve="MacroFilePicker" />
            </node>
            <node concept="2ShNRf" id="3xqp6yeXdHT" role="33vP2m">
              <node concept="3zrR0B" id="3xqp6yeXdHU" role="2ShVmc">
                <node concept="3Tqbb2" id="3xqp6yeXdHV" role="3zrR0E">
                  <ref role="ehGHo" to="68mc:7c_RIoB8H2I" resolve="MacroFilePicker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3xqp6yeXdHW" role="3cqZAp">
          <node concept="37vLTI" id="3xqp6yeXdHX" role="3clFbG">
            <node concept="2OqwBi" id="3xqp6yeXdHY" role="37vLTx">
              <node concept="13iPFW" id="3xqp6yeXdHZ" role="2Oq$k0" />
              <node concept="3TrcHB" id="3xqp6yeXdI0" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
            <node concept="2OqwBi" id="3xqp6yeXdI1" role="37vLTJ">
              <node concept="37vLTw" id="3xqp6yeXdI2" role="2Oq$k0">
                <ref role="3cqZAo" node="3xqp6yeXdHR" resolve="picker" />
              </node>
              <node concept="3TrcHB" id="3xqp6yeXdI3" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2rWX5ToFlD8" role="3cqZAp">
          <node concept="37vLTI" id="2rWX5ToFmlo" role="3clFbG">
            <node concept="2OqwBi" id="2rWX5ToFmoZ" role="37vLTx">
              <node concept="13iPFW" id="2rWX5ToFmmf" role="2Oq$k0" />
              <node concept="3TrcHB" id="2rWX5ToFmLu" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:4eXJ6EO9ZKy" resolve="macro" />
              </node>
            </node>
            <node concept="2OqwBi" id="2rWX5ToFlG8" role="37vLTJ">
              <node concept="37vLTw" id="2rWX5ToFlD6" role="2Oq$k0">
                <ref role="3cqZAo" node="3xqp6yeXdHR" resolve="picker" />
              </node>
              <node concept="3TrcHB" id="2rWX5ToFm3T" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:7c_RIoB8OqH" resolve="macro" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2rWX5ToEuIu" role="3cqZAp">
          <node concept="37vLTw" id="2rWX5ToEuIv" role="3cqZAk">
            <ref role="3cqZAo" node="3xqp6yeXdHR" resolve="picker" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3xqp6yeXdI6" role="3clF45">
        <ref role="ehGHo" to="68mc:5lKnBeAtNw8" resolve="AbstractPicker" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2iGZqsHuRUA">
    <property role="3GE5qa" value="pathAndFile" />
    <ref role="13h7C2" to="68mc:2iGZqsHuOWj" resolve="SolutionRelativeDirPicker" />
    <node concept="13i0hz" id="2iGZqsHuRWr" role="13h7CS">
      <property role="TrG5h" value="getErrorMessage" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAutg0" resolve="getErrorMessage" />
      <node concept="3Tm1VV" id="2iGZqsHuRWs" role="1B3o_S" />
      <node concept="3clFbS" id="2iGZqsHuRWt" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$IgW" role="3cqZAp">
          <node concept="3cpWs3" id="6M3J7P6$IgX" role="3cqZAk">
            <node concept="BsUDl" id="6M3J7P6$IgY" role="3uHU7w">
              <ref role="37wK5l" node="5lKnBeAIfOh" resolve="getPrefix" />
            </node>
            <node concept="Xl_RD" id="6M3J7P6$IgZ" role="3uHU7B">
              <property role="Xl_RC" value="not a valid directory path relative to solution root " />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2iGZqsHuRWy" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2iGZqsHuRWz" role="13h7CS">
      <property role="TrG5h" value="getEditorPrefix" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAulu0" resolve="getEditorPrefix" />
      <node concept="3Tm1VV" id="2iGZqsHuRW$" role="1B3o_S" />
      <node concept="3clFbS" id="2iGZqsHuRW_" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$It_" role="3cqZAp">
          <node concept="Xl_RD" id="6M3J7P6$ItA" role="3cqZAk">
            <property role="Xl_RC" value="solution_root" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2iGZqsHuRWC" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2iGZqsHuRWJ" role="13h7CS">
      <property role="TrG5h" value="getPrefix" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAIfOh" resolve="getPrefix" />
      <node concept="3Tm1VV" id="2iGZqsHuRWK" role="1B3o_S" />
      <node concept="3clFbS" id="2iGZqsHuRWL" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$I_Y" role="3cqZAp">
          <node concept="2YIFZM" id="6M3J7P6$I_Z" role="3cqZAk">
            <ref role="1Pybhc" node="4Wn4fzjJqEK" resolve="SolutionUtil" />
            <ref role="37wK5l" node="4Wn4fzjJqEM" resolve="getSolutionRootPathForNode" />
            <node concept="13iPFW" id="6M3J7P6$IA0" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2iGZqsHuRWP" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2iGZqsHuSqR" role="13h7CS">
      <property role="TrG5h" value="pickDirOnly" />
      <ref role="13i0hy" node="5lKnBeB0qXj" resolve="pickDirOnly" />
      <node concept="3clFbS" id="2iGZqsHuSqU" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$IHA" role="3cqZAp">
          <node concept="3clFbT" id="6M3J7P6$IHB" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2iGZqsHuSsL" role="3clF45" />
      <node concept="3Tm1VV" id="2iGZqsHuSsM" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="3xqp6yeXdUV" role="13h7CS">
      <property role="TrG5h" value="getCompanionFileOrFolderPicker" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3xqp6yeWGLu" resolve="getCompanionFileOrFolderPicker" />
      <node concept="3Tm1VV" id="3xqp6yeXdUW" role="1B3o_S" />
      <node concept="3clFbS" id="3xqp6yeXdUX" role="3clF47">
        <node concept="3cpWs8" id="3xqp6yeXdUY" role="3cqZAp">
          <node concept="3cpWsn" id="3xqp6yeXdUZ" role="3cpWs9">
            <property role="TrG5h" value="picker" />
            <node concept="3Tqbb2" id="3xqp6yeXdV0" role="1tU5fm">
              <ref role="ehGHo" to="68mc:5lKnBeAxLdJ" resolve="SolutionRelativeFilePicker" />
            </node>
            <node concept="2ShNRf" id="3xqp6yeXdV1" role="33vP2m">
              <node concept="3zrR0B" id="3xqp6yeXdV2" role="2ShVmc">
                <node concept="3Tqbb2" id="3xqp6yeXdV3" role="3zrR0E">
                  <ref role="ehGHo" to="68mc:5lKnBeAxLdJ" resolve="SolutionRelativeFilePicker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3xqp6yeXdV4" role="3cqZAp">
          <node concept="37vLTI" id="3xqp6yeXdV5" role="3clFbG">
            <node concept="2OqwBi" id="3xqp6yeXdV6" role="37vLTx">
              <node concept="13iPFW" id="3xqp6yeXdV7" role="2Oq$k0" />
              <node concept="3TrcHB" id="3xqp6yeXdV8" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
            <node concept="2OqwBi" id="3xqp6yeXdV9" role="37vLTJ">
              <node concept="37vLTw" id="3xqp6yeXdVa" role="2Oq$k0">
                <ref role="3cqZAo" node="3xqp6yeXdUZ" resolve="picker" />
              </node>
              <node concept="3TrcHB" id="3xqp6yeXdVb" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2rWX5ToEuSs" role="3cqZAp">
          <node concept="37vLTw" id="2rWX5ToEuSt" role="3cqZAk">
            <ref role="3cqZAo" node="3xqp6yeXdUZ" resolve="picker" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3xqp6yeXdVe" role="3clF45">
        <ref role="ehGHo" to="68mc:5lKnBeAtNw8" resolve="AbstractPicker" />
      </node>
    </node>
    <node concept="13hLZK" id="2iGZqsHuRUB" role="13h7CW">
      <node concept="3clFbS" id="2iGZqsHuRUC" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5lKnBeAxLkA">
    <property role="3GE5qa" value="pathAndFile" />
    <ref role="13h7C2" to="68mc:5lKnBeAxLdJ" resolve="SolutionRelativeFilePicker" />
    <node concept="13hLZK" id="5lKnBeAxLkB" role="13h7CW">
      <node concept="3clFbS" id="5lKnBeAxLkC" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5lKnBeAxLls" role="13h7CS">
      <property role="TrG5h" value="getErrorMessage" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAutg0" resolve="getErrorMessage" />
      <node concept="3Tm1VV" id="5lKnBeAxLlt" role="1B3o_S" />
      <node concept="3clFbS" id="5lKnBeAxLlw" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$Lmc" role="3cqZAp">
          <node concept="3cpWs3" id="6M3J7P6$Lmd" role="3cqZAk">
            <node concept="BsUDl" id="6M3J7P6$Lme" role="3uHU7w">
              <ref role="37wK5l" node="5lKnBeAIfOh" resolve="getPrefix" />
            </node>
            <node concept="Xl_RD" id="6M3J7P6$Lmf" role="3uHU7B">
              <property role="Xl_RC" value="not a valid file path relative to solution root " />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5lKnBeAxLlx" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5lKnBeAxLly" role="13h7CS">
      <property role="TrG5h" value="getEditorPrefix" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAulu0" resolve="getEditorPrefix" />
      <node concept="3Tm1VV" id="5lKnBeAxLlz" role="1B3o_S" />
      <node concept="3clFbS" id="5lKnBeAxLlA" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$LhP" role="3cqZAp">
          <node concept="Xl_RD" id="6M3J7P6$LhQ" role="3cqZAk">
            <property role="Xl_RC" value="solution_root" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5lKnBeAxLlB" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5lKnBeAIVIF" role="13h7CS">
      <property role="TrG5h" value="getPrefix" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAIfOh" resolve="getPrefix" />
      <node concept="3Tm1VV" id="5lKnBeAIVIG" role="1B3o_S" />
      <node concept="3clFbS" id="5lKnBeAIVIJ" role="3clF47">
        <node concept="3cpWs6" id="6M3J7P6$L8X" role="3cqZAp">
          <node concept="2YIFZM" id="6M3J7P6$L8Y" role="3cqZAk">
            <ref role="1Pybhc" node="4Wn4fzjJqEK" resolve="SolutionUtil" />
            <ref role="37wK5l" node="4Wn4fzjJqEM" resolve="getSolutionRootPathForNode" />
            <node concept="13iPFW" id="6M3J7P6$L8Z" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5lKnBeAIVIK" role="3clF45" />
    </node>
    <node concept="13i0hz" id="48DzgHgr38e" role="13h7CS">
      <property role="TrG5h" value="pickFileOnly" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="48DzgHgr2tO" resolve="pickFileOnly" />
      <node concept="3Tm1VV" id="48DzgHgr38f" role="1B3o_S" />
      <node concept="3clFbS" id="48DzgHgr38k" role="3clF47">
        <node concept="3cpWs6" id="48DzgHgr3b2" role="3cqZAp">
          <node concept="3clFbT" id="48DzgHgr3bb" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="48DzgHgr38l" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3xqp6yeXe6P" role="13h7CS">
      <property role="TrG5h" value="getCompanionFileOrFolderPicker" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3xqp6yeWGLu" resolve="getCompanionFileOrFolderPicker" />
      <node concept="3Tm1VV" id="3xqp6yeXe6Q" role="1B3o_S" />
      <node concept="3clFbS" id="3xqp6yeXe6R" role="3clF47">
        <node concept="3cpWs8" id="3xqp6yeXe6S" role="3cqZAp">
          <node concept="3cpWsn" id="3xqp6yeXe6T" role="3cpWs9">
            <property role="TrG5h" value="picker" />
            <node concept="3Tqbb2" id="3xqp6yeXe6U" role="1tU5fm">
              <ref role="ehGHo" to="68mc:2iGZqsHuOWj" resolve="SolutionRelativeDirPicker" />
            </node>
            <node concept="2ShNRf" id="3xqp6yeXe6V" role="33vP2m">
              <node concept="3zrR0B" id="3xqp6yeXe6W" role="2ShVmc">
                <node concept="3Tqbb2" id="3xqp6yeXe6X" role="3zrR0E">
                  <ref role="ehGHo" to="68mc:2iGZqsHuOWj" resolve="SolutionRelativeDirPicker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3xqp6yeXe6Y" role="3cqZAp">
          <node concept="37vLTI" id="3xqp6yeXe6Z" role="3clFbG">
            <node concept="2OqwBi" id="3xqp6yeXe70" role="37vLTx">
              <node concept="13iPFW" id="3xqp6yeXe71" role="2Oq$k0" />
              <node concept="3TrcHB" id="3xqp6yeXe72" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
            <node concept="2OqwBi" id="3xqp6yeXe73" role="37vLTJ">
              <node concept="37vLTw" id="3xqp6yeXe74" role="2Oq$k0">
                <ref role="3cqZAo" node="3xqp6yeXe6T" resolve="picker" />
              </node>
              <node concept="3TrcHB" id="3xqp6yeXe75" role="2OqNvi">
                <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2rWX5ToEuY3" role="3cqZAp">
          <node concept="37vLTw" id="2rWX5ToEuY4" role="3cqZAk">
            <ref role="3cqZAo" node="3xqp6yeXe6T" resolve="picker" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3xqp6yeXe78" role="3clF45">
        <ref role="ehGHo" to="68mc:5lKnBeAtNw8" resolve="AbstractPicker" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4Wn4fzjJqEK">
    <property role="TrG5h" value="SolutionUtil" />
    <property role="3GE5qa" value="pathAndFile" />
    <node concept="2tJIrI" id="4Wn4fzjJqEL" role="jymVt" />
    <node concept="2YIFZL" id="2_BfG8QCT8$" role="jymVt">
      <property role="TrG5h" value="getSolutionForNode" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2_BfG8QCT8_" role="3clF47">
        <node concept="3cpWs8" id="2_BfG8QCT8A" role="3cqZAp">
          <node concept="3cpWsn" id="2_BfG8QCT8B" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="2_BfG8QCT8C" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2JrnkZ" id="2_BfG8QCT8D" role="33vP2m">
              <node concept="2OqwBi" id="2_BfG8QCT8E" role="2JrQYb">
                <node concept="37vLTw" id="2_BfG8QCT8F" role="2Oq$k0">
                  <ref role="3cqZAo" node="2_BfG8QCTbn" resolve="node" />
                </node>
                <node concept="I4A8Y" id="2_BfG8QCT8G" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2_BfG8QCT8H" role="3cqZAp">
          <node concept="3cpWsn" id="2_BfG8QCT8I" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="2_BfG8QCT8J" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="2_BfG8QCT8K" role="33vP2m">
              <node concept="37vLTw" id="2_BfG8QCT8L" role="2Oq$k0">
                <ref role="3cqZAo" node="2_BfG8QCT8B" resolve="model" />
              </node>
              <node concept="liA8E" id="2_BfG8QCT8M" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2_BfG8QCT8O" role="3cqZAp">
          <node concept="3clFbS" id="2_BfG8QCT8P" role="3clFbx">
            <node concept="3cpWs8" id="3JjGcH6gKJe" role="3cqZAp">
              <node concept="3cpWsn" id="3JjGcH6gKJh" role="3cpWs9">
                <property role="TrG5h" value="modelFQName" />
                <node concept="17QB3L" id="3JjGcH6gKJd" role="1tU5fm" />
                <node concept="2OqwBi" id="6xoAPBjN1Iw" role="33vP2m">
                  <node concept="2OqwBi" id="6xoAPBjN1iG" role="2Oq$k0">
                    <node concept="37vLTw" id="6xoAPBjN0Zi" role="2Oq$k0">
                      <ref role="3cqZAo" node="2_BfG8QCT8B" resolve="model" />
                    </node>
                    <node concept="liA8E" id="6xoAPBjN1Ao" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6xoAPBjN1TO" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6xoAPBjOeOw" role="3cqZAp">
              <node concept="3cpWsn" id="6xoAPBjOeOx" role="3cpWs9">
                <property role="TrG5h" value="originalModel" />
                <node concept="3uibUv" id="6xoAPBjOeDl" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="6xoAPBjOeOy" role="33vP2m">
                  <node concept="2YIFZM" id="6xoAPBjOeOz" role="2Oq$k0">
                    <ref role="37wK5l" to="w1kc:~SModelRepository.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="w1kc:~SModelRepository" resolve="SModelRepository" />
                  </node>
                  <node concept="liA8E" id="6xoAPBjOeO$" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~SModelRepository.getModelDescriptor(java.lang.String)" resolve="getModelDescriptor" />
                    <node concept="37vLTw" id="6xoAPBjOeO_" role="37wK5m">
                      <ref role="3cqZAo" node="3JjGcH6gKJh" resolve="modelFQName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6xoAPBjOgk3" role="3cqZAp">
              <node concept="3clFbS" id="6xoAPBjOgk5" role="3clFbx">
                <node concept="3clFbF" id="6xoAPBjOgPU" role="3cqZAp">
                  <node concept="37vLTI" id="6xoAPBjOgZc" role="3clFbG">
                    <node concept="2OqwBi" id="6xoAPBjOhlv" role="37vLTx">
                      <node concept="37vLTw" id="6xoAPBjOh4X" role="2Oq$k0">
                        <ref role="3cqZAo" node="6xoAPBjOeOx" resolve="originalModel" />
                      </node>
                      <node concept="liA8E" id="6xoAPBjOhwB" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6xoAPBjOgPS" role="37vLTJ">
                      <ref role="3cqZAo" node="2_BfG8QCT8I" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6xoAPBjOgGx" role="3clFbw">
                <node concept="10Nm6u" id="6xoAPBjOgLQ" role="3uHU7w" />
                <node concept="37vLTw" id="6xoAPBjOgqI" role="3uHU7B">
                  <ref role="3cqZAo" node="6xoAPBjOeOx" resolve="originalModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2_BfG8QCTat" role="3clFbw">
            <node concept="2ZW3vV" id="2_BfG8QCTau" role="3uHU7B">
              <node concept="3uibUv" id="2_BfG8QCTav" role="2ZW6by">
                <ref role="3uigEE" to="g3l6:~TransientSModel" resolve="TransientSModel" />
              </node>
              <node concept="37vLTw" id="2_BfG8QCTaw" role="2ZW6bz">
                <ref role="3cqZAo" node="2_BfG8QCT8B" resolve="model" />
              </node>
            </node>
            <node concept="2ZW3vV" id="2_BfG8QCTax" role="3uHU7w">
              <node concept="3uibUv" id="2_BfG8QCTay" role="2ZW6by">
                <ref role="3uigEE" to="ap4t:~TransientModelsModule" resolve="TransientModelsModule" />
              </node>
              <node concept="37vLTw" id="2_BfG8QCTaz" role="2ZW6bz">
                <ref role="3cqZAo" node="2_BfG8QCT8I" resolve="module" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2_BfG8QCTbl" role="3cqZAp">
          <node concept="37vLTw" id="2_BfG8QCVCM" role="3cqZAk">
            <ref role="3cqZAo" node="2_BfG8QCT8I" resolve="module" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2_BfG8QCTbn" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2_BfG8QCTbo" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2_BfG8QCVH8" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm1VV" id="2_BfG8QCTbq" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2_BfG8QCYcD" role="jymVt" />
    <node concept="2YIFZL" id="2_BfG8QCYyu" role="jymVt">
      <property role="TrG5h" value="getSolutionNameForNode" />
      <node concept="3clFbS" id="2_BfG8QCYyx" role="3clF47">
        <node concept="3cpWs8" id="2_BfG8QCYGc" role="3cqZAp">
          <node concept="3cpWsn" id="2_BfG8QCYGd" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="2_BfG8QCYGe" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="1rXfSq" id="2_BfG8QCYGf" role="33vP2m">
              <ref role="37wK5l" node="2_BfG8QCT8$" resolve="getSolutionForNode" />
              <node concept="37vLTw" id="2_BfG8QCYGg" role="37wK5m">
                <ref role="3cqZAo" node="2_BfG8QCYDP" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2_BfG8QCYMv" role="3cqZAp">
          <node concept="3clFbS" id="2_BfG8QCYMx" role="3clFbx">
            <node concept="3cpWs6" id="2_BfG8QCZ4G" role="3cqZAp">
              <node concept="2OqwBi" id="2_BfG8QCZiq" role="3cqZAk">
                <node concept="37vLTw" id="2_BfG8QCZax" role="2Oq$k0">
                  <ref role="3cqZAo" node="2_BfG8QCYGd" resolve="module" />
                </node>
                <node concept="liA8E" id="2_BfG8QCZsL" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2_BfG8QCZ0a" role="3clFbw">
            <node concept="10Nm6u" id="2_BfG8QCZ2f" role="3uHU7w" />
            <node concept="37vLTw" id="2_BfG8QCYR1" role="3uHU7B">
              <ref role="3cqZAo" node="2_BfG8QCYGd" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2_BfG8QCZ_s" role="3cqZAp">
          <node concept="10Nm6u" id="2_BfG8QCZDQ" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2_BfG8QCYpr" role="1B3o_S" />
      <node concept="17QB3L" id="2_BfG8QCYxx" role="3clF45" />
      <node concept="37vLTG" id="2_BfG8QCYDP" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2_BfG8QCYDO" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2_BfG8QCVTp" role="jymVt" />
    <node concept="2YIFZL" id="4Wn4fzjJqEM" role="jymVt">
      <property role="TrG5h" value="getSolutionRootPathForNode" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4Wn4fzjJqEN" role="3clF47">
        <node concept="3cpWs8" id="4Wn4fzjJqEV" role="3cqZAp">
          <node concept="3cpWsn" id="4Wn4fzjJqEW" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="4Wn4fzjJqEX" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="1rXfSq" id="2_BfG8QCXe2" role="33vP2m">
              <ref role="37wK5l" node="2_BfG8QCT8$" resolve="getSolutionForNode" />
              <node concept="37vLTw" id="2_BfG8QCXoe" role="37wK5m">
                <ref role="3cqZAo" node="4Wn4fzjJqFe" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2iGZqsHIJgr" role="3cqZAp">
          <node concept="3clFbS" id="2iGZqsHIJgu" role="3clFbx">
            <node concept="3cpWs8" id="4Wn4fzjJqF1" role="3cqZAp">
              <node concept="3cpWsn" id="4Wn4fzjJqF2" role="3cpWs9">
                <property role="TrG5h" value="s" />
                <node concept="3uibUv" id="1M11zW0wAh0" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                </node>
                <node concept="1eOMI4" id="4Wn4fzjJqF4" role="33vP2m">
                  <node concept="10QFUN" id="4Wn4fzjJqF5" role="1eOMHV">
                    <node concept="3uibUv" id="1M11zW0wAaT" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="37vLTw" id="4Wn4fzjJqF7" role="10QFUP">
                      <ref role="3cqZAo" node="4Wn4fzjJqEW" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1M11zW0wBTj" role="3cqZAp">
              <node concept="3clFbS" id="1M11zW0wBTl" role="3clFbx">
                <node concept="3cpWs6" id="1M11zW0wCxq" role="3cqZAp">
                  <node concept="2OqwBi" id="1M11zW0wDZo" role="3cqZAk">
                    <node concept="2OqwBi" id="3__qLm0DvYZ" role="2Oq$k0">
                      <node concept="2OqwBi" id="1M11zW0wDTQ" role="2Oq$k0">
                        <node concept="37vLTw" id="1M11zW0wDTR" role="2Oq$k0">
                          <ref role="3cqZAo" node="4Wn4fzjJqF2" resolve="s" />
                        </node>
                        <node concept="liA8E" id="1M11zW0wDTS" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3__qLm0DwkS" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getBundleHome()" resolve="getBundleHome" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1M11zW0wE7n" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="1M11zW0wDCe" role="3clFbw">
                <node concept="2OqwBi" id="1M11zW0wC2C" role="3uHU7B">
                  <node concept="37vLTw" id="1M11zW0wC0H" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Wn4fzjJqF2" resolve="s" />
                  </node>
                  <node concept="liA8E" id="1M11zW0wCiA" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~AbstractModule.isPackaged()" resolve="isPackaged" />
                  </node>
                </node>
                <node concept="3y3z36" id="1M11zW0wDIe" role="3uHU7w">
                  <node concept="2OqwBi" id="3__qLm0DvuR" role="3uHU7B">
                    <node concept="2OqwBi" id="1M11zW0wDdK" role="2Oq$k0">
                      <node concept="37vLTw" id="1M11zW0wD8O" role="2Oq$k0">
                        <ref role="3cqZAo" node="4Wn4fzjJqF2" resolve="s" />
                      </node>
                      <node concept="liA8E" id="1M11zW0wDx0" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3__qLm0DvBo" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.getBundleHome()" resolve="getBundleHome" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="1M11zW0wDNM" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2iGZqsHIJXF" role="3cqZAp">
              <node concept="2OqwBi" id="4Wn4fzjJqF9" role="3cqZAk">
                <node concept="2OqwBi" id="4Wn4fzjJqFa" role="2Oq$k0">
                  <node concept="37vLTw" id="4Wn4fzjJqFb" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Wn4fzjJqF2" resolve="s" />
                  </node>
                  <node concept="liA8E" id="4Wn4fzjJqFc" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                  </node>
                </node>
                <node concept="liA8E" id="4Wn4fzjJqFd" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7xif6eKvZ7y" role="3clFbw">
            <node concept="2ZW3vV" id="2iGZqsHIJpQ" role="3uHU7B">
              <node concept="3uibUv" id="1M11zW0wA8m" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
              </node>
              <node concept="37vLTw" id="2iGZqsHIJlH" role="2ZW6bz">
                <ref role="3cqZAo" node="4Wn4fzjJqEW" resolve="module" />
              </node>
            </node>
            <node concept="3y3z36" id="1Nng_3TeCRc" role="3uHU7w">
              <node concept="10Nm6u" id="1Nng_3TeD63" role="3uHU7w" />
              <node concept="2OqwBi" id="1Nng_3TeClF" role="3uHU7B">
                <node concept="1eOMI4" id="1Nng_3TeC0o" role="2Oq$k0">
                  <node concept="10QFUN" id="1Nng_3TeC0p" role="1eOMHV">
                    <node concept="3uibUv" id="1Nng_3TeC0q" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="37vLTw" id="7xif6eKw0xt" role="10QFUP">
                      <ref role="3cqZAo" node="4Wn4fzjJqEW" resolve="module" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1Nng_3TeCCU" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2iGZqsHIKYl" role="3cqZAp">
          <node concept="10Nm6u" id="2iGZqsHIL6t" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="4Wn4fzjJqFe" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4Wn4fzjJqFf" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="4Wn4fzjMpg6" role="3clF45" />
      <node concept="3Tm1VV" id="4Wn4fzjJqFh" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2_BfG8QCWrd" role="jymVt" />
    <node concept="2YIFZL" id="GKLijSQbSR" role="jymVt">
      <property role="TrG5h" value="createFilenameRelativeToNodeSolution" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="GKLijSQbSS" role="3clF47">
        <node concept="3clFbF" id="GKLijSQdgO" role="3cqZAp">
          <node concept="3cpWs3" id="GKLijSQd$D" role="3clFbG">
            <node concept="37vLTw" id="GKLijSQdLk" role="3uHU7w">
              <ref role="3cqZAo" node="GKLijSQdF9" resolve="name" />
            </node>
            <node concept="3cpWs3" id="GKLijSQdod" role="3uHU7B">
              <node concept="1rXfSq" id="GKLijSQdgN" role="3uHU7B">
                <ref role="37wK5l" node="2_BfG8QCT8$" resolve="getSolutionForNode" />
                <node concept="37vLTw" id="GKLijSQdh$" role="37wK5m">
                  <ref role="3cqZAo" node="GKLijSQbTG" resolve="node" />
                </node>
              </node>
              <node concept="Xl_RD" id="GKLijSQdon" role="3uHU7w">
                <property role="Xl_RC" value="/" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="GKLijSQbTG" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="GKLijSQbTH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="GKLijSQdF9" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="GKLijSQdKZ" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="GKLijSQbTI" role="3clF45" />
      <node concept="3Tm1VV" id="GKLijSQbTJ" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4Wn4fzjJqFj" role="1B3o_S" />
  </node>
  <node concept="13h7C7" id="51aJIRsy1$V">
    <property role="3GE5qa" value="pathAndFile" />
    <ref role="13h7C2" to="68mc:51aJIRsy1$U" resolve="IPathVariableProvider" />
    <node concept="13hLZK" id="51aJIRsy1$W" role="13h7CW">
      <node concept="3clFbS" id="51aJIRsy1$X" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="51aJIRsy1_6" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getNames" />
      <node concept="3Tm1VV" id="51aJIRsy1_7" role="1B3o_S" />
      <node concept="_YKpA" id="51aJIRsy2tS" role="3clF45">
        <node concept="17QB3L" id="51aJIRsy2ue" role="_ZDj9" />
      </node>
      <node concept="3clFbS" id="51aJIRsy1_9" role="3clF47" />
    </node>
    <node concept="13i0hz" id="51aJIRsy2vi" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getValue" />
      <node concept="3Tm1VV" id="51aJIRsy2vj" role="1B3o_S" />
      <node concept="17QB3L" id="51aJIRsy2HO" role="3clF45" />
      <node concept="3clFbS" id="51aJIRsy2vl" role="3clF47" />
      <node concept="37vLTG" id="51aJIRsy2Es" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="51aJIRsy2I9" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="35YirduV5qp" role="3clF46">
        <property role="TrG5h" value="generating" />
        <node concept="10P_77" id="35YirduV5s0" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5w7tTvtX9Zw">
    <property role="3GE5qa" value="pathAndFile" />
    <ref role="13h7C2" to="68mc:5Wocj7wnolM" resolve="AbstractFolderPicker" />
    <node concept="13i0hz" id="5w7tTvtX9ZF" role="13h7CS">
      <property role="TrG5h" value="isValidSelection" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAusVW" resolve="isValidSelection" />
      <node concept="3Tm1VV" id="5w7tTvtX9ZG" role="1B3o_S" />
      <node concept="3clFbS" id="5w7tTvtX9ZH" role="3clF47">
        <node concept="3cpWs6" id="5w7tTvtX9ZI" role="3cqZAp">
          <node concept="BsUDl" id="5w7tTvtX9ZJ" role="3cqZAk">
            <ref role="37wK5l" node="5lKnBeAuiv7" resolve="isValidDirectory" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5w7tTvtX9ZK" role="3clF45" />
    </node>
    <node concept="13hLZK" id="5w7tTvtX9Zx" role="13h7CW">
      <node concept="3clFbS" id="5w7tTvtX9Zy" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5w7tTvtX9Yc">
    <property role="3GE5qa" value="pathAndFile" />
    <ref role="13h7C2" to="68mc:5Wocj7wnotA" resolve="AbstractFilePicker" />
    <node concept="13i0hz" id="5w7tTvtX9YK" role="13h7CS">
      <property role="TrG5h" value="isValidSelection" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="5lKnBeAusVW" resolve="isValidSelection" />
      <node concept="3Tm1VV" id="5w7tTvtX9YL" role="1B3o_S" />
      <node concept="3clFbS" id="5w7tTvtX9YM" role="3clF47">
        <node concept="3cpWs6" id="5w7tTvtX9YN" role="3cqZAp">
          <node concept="BsUDl" id="5w7tTvtX9YO" role="3cqZAk">
            <ref role="37wK5l" node="5lKnBeAufga" resolve="isValidFile" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5w7tTvtX9YP" role="3clF45" />
    </node>
    <node concept="13hLZK" id="5w7tTvtX9Yd" role="13h7CW">
      <node concept="3clFbS" id="5w7tTvtX9Ye" role="2VODD2" />
    </node>
  </node>
</model>

