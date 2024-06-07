%INICIO_DEL_CHATBOT
eliza :-
    writeln('Hola, soy tu asistente medico personal.'),
    readln(Input),
    eliza(Input),!.

%CONDICION_DE_SALIDA
eliza(['adios']) :-
    writeln('Adios, espero haberte ayudado cuidate'), !.

eliza(['Adios']) :-
    writeln('Adios, espero haberte ayudado, cuidate'), !.

%LOGICA_DEL_CHATBOT
eliza(Input) :-
    template(Stim, Resp, IndStim),
    match(Stim, Input), %ve_si_coincide_stim_e_input
    replace0(IndStim, Input, 0, Resp, R),
    writeln(R),
    readln(Input1),
    eliza(Input1), !.

%TEMPLATES_CON_RESPUESTAS
template([hola, __], ['Hola, en que puedo ayudarte?'], []).
template([gracias, __], ['De nada, es un placer ayudarte'], []).
template([dime, como, me, puedes, ayudar, __], ['Te puedo ayudar a detectar sintomas de enfermedades, decirte a que medico puedes acudir'], []).
template([en, que, me, puedes, ayudar, __], ['Te puedo ayudar a detectar sintomas de enfermedades, decirte a que medico puedes acudir'], []).
template([que, es, lo, que, haces, __], ['Detecto sintomas de enfermedades'], []).
template([eres, doctor, __], ['No, soy un asistente que te ayuda a detectar enfermedades para que vayas al doctor y no te hagan menso, ya que los doctores son muy mañosos'], []).
template([como, me, puedes, ayudar, __], ['Si te sientes mal y tienes sintomas de alguna enfermedad, yo lo unico que hago es orientarte para que asi tengas una idea de la enfermedad que tienes'], []).
template([me, puedes, ayudar, a, saber, que, enfermedad, tengo, __], ['Claro que si, tu nomas dime que sintomas tienes, para asi saber que enfermedad podrias tener'], []).
template([como, te, llamas, __], ['Me llamo Chatgepete y estoy aqui para ayudarte'], []).
template([hola, como, estas, __], ['Siempre estoy bien, estoy programado para andar siempre al 100 y no enfermo como tu...'], []).
template([me, siento, mal, __], ['¿Estas enfermo, tienes algun sintoma en especifico, algun dolor?'], []).
template([estoy, enfermo, __], ['Te puedo ayudar a decirte que enfermedad tienes dependiendo de tus sintomas y recomendarte algun medico'], []).
template([en, que, region, se, da, el, cancer, de, prostata, _], ['El cancer de prostata se presenta en todo el mundo'], []).
template([especialmente, en, donde, _], ['Se presenta especialmente en Estados Unidos y Canada'], []).
template([en, que, region, se, da, la, fiebre, amarilla, _], ['La fiebre amarilla se presenta principalmente en Africa, viajaste recientemente?'], []).
template([si, viaje, _], ['Tssss, ya valiste jajajaja'], []).
template([no, viaje, _], ['Bueno aveces la fiebre amarilla se presenta tambien en Brasil y Peru'], []).
template([tampoco, viaje, a, brasil, ni, a, peru, _], ['No di....... esta raro, talvez estas confundiendo los sintomas, describelos nuevamente'], []).
template([en, que, region, se, da, la, laringitis, _], ['La laringitis se presenta en en cualquier pais del mundo'], []).

%TEMPLATES_CON_FLAGS_FAMILIA
template([conoces, a, s(_), _], [flag4], [2]).

template([te,gusta,el,futbol, _], ['si'], []).
template([te,gusta,el,barcelona, _], ['no'], []).
template([te,gusta,el, real, madrid, _], ['ese me gusta menos'], []).
template([dime, los, 5, mejores, futbolistas, de, la, historia, _], ['Messi, Ronaldo, Maldini, Klose'], []).
template([dime, los, 5, mejores, equipos, de, europa, _], ['Bayern Munich, Liverpool, Barcelona, Inter, Manchester'], []).


template([si, miguel, tiene, cancer, de, prostata, que, tratamiento, le, recomiendas, _], ['le recomiendo consultar con un oncologo para opciones de tratamiento, que pueden incluir cirugia, radioterapia, o terapia hormonal'], []).
template([si, miguel, tiene, fiebre, amarilla, que, tratamiento, le, recomiendas, _], ['le recomiendo hospitalizacion inmediata y cuidados de soporte, incluyendo liquidos intravenosos y monitoreo constante'], []).
template([si, miguel, tiene, laringitis, que, tratamiento, le, recomiendas, _], ['le recomiendo reposo vocal, mantenerse hidratado y posiblemente usar antiinflamatorios o antibioticos si es necesario'], []).

template([si, beto, tiene, cancer, de, prostata, que, tratamiento, le, recomiendas, _], ['le recomiendo consultar con un oncologo para opciones de tratamiento, que pueden incluir cirugia, radioterapia, o terapia hormonal'], []).
template([si, beto, tiene, fiebre, amarilla, que, tratamiento, le, recomiendas, _], ['le recomiendo hospitalizacion inmediata y cuidados de soporte, incluyendo liquidos intravenosos y monitoreo constante'], []).
template([si, beto, tiene, laringitis, que, tratamiento, le, recomiendas, _], ['le recomiendo reposo vocal, mantenerse hidratado y posiblemente usar antiinflamatorios o antibioticos si es necesario'], []).

template([si, manuel, tiene, cancer, de, prostata, que, tratamiento, le, recomiendas, _], ['le recomiendo consultar con un oncologo para opciones de tratamiento, que pueden incluir cirugia, radioterapia, o terapia hormonal'], []).
template([si, manuel, tiene, fiebre, amarilla, que, tratamiento, le, recomiendas, _], ['le recomiendo hospitalizacion inmediata y cuidados de soporte, incluyendo liquidos intravenosos y monitoreo constante'], []).
template([si, manuel, tiene, laringitis, que, tratamiento, le, recomiendas, _], ['le recomiendo reposo vocal, mantenerse hidratado y posiblemente usar antiinflamatorios o antibioticos si es necesario'], []).

template([dame, todos, los, tios, de, miguel, _], ['Los tios de miguel son: Beto, Jazmin, Marta, Manuel, Monse, Silvia'], []).
template([dame, todos, los, tios, de, natalia, _], ['Los tios de natalia son: Beto, Jazmin, Marta, Manuel, Monse, Silvia'], []).
template([dame, todos, los, tios, de, andrea, _], ['Los tios de andrea son: Beto, Jazmin, Marta, Manuel, Monse, Silvia'], []).
template([dame, todos, los, tios, de, gabriel, _], ['Los tios de gabriel son: Agustin, Marta, Alfredo, SAlvador'], []).
template([dame, todos, los, tios, de, beatriz, _], ['Los tios de beatriz son: Javier, Manuel, Monse, Silvia'], []).

%TEMAPLATE_DE_AKINATOR


%TEMPLATES_CON_FLAGS
template([que, enfermedad, puedo, tener, si, tengo, dolor, de, s()], [flag], [8]).
template([que, enfermedad, puedo, tener, si, tengo, s()], [flag], [6]).
template([tambien, tengo, dolor, de, s(_)], [flag], [4]).
template([tambien, tengo, dolor, s(_)], [flag], [3]).
template([tengo, s(_)], [flag], [1]).
template([tengo, vision, s(_)], [flag], [2]).
template([me, duele, mi, s(_), que, es, lo, que, tengo, _], [flag], [3]).
template([tengo, perdida, de, s(_), que, es, lo, que, tengo, _], [flag], [3]).
template([tengo, dificultad, para, _, _], [flag], [3]).
template([recomiendame, un, doctor, si, tengo, _, _], [flag2], [5]).
template([me, puedes, recomendar, un, doctor, si, tengo, s(_)], [flag2], [7]).
template([que, doctor, me, recomiendas, si, tengo, s(_)], [flag2], [6]).
template([recomiendame, un, tratamiento, si, tengo, _, _], [flag3], [5]).
template([me, puedes, recomendar, un, tratamiento, si, tengo, s(_)], [flag3], [7]).
template([que, tratamiento, me, recomiendas, si, tengo, s(_)], [flag3], [6]).

%COINCIDENCIA_DE_PATRONES
match([], []).
match([], _):- true.

match([S|Stim], [I|Input]) :-
    atom(S),
    S == I,
    match(Stim, Input), !.

match([S|Stim], [_|Input]) :-
    \+ atom(S),
    match(Stim, Input), !.

%REEMPLAZO_DE_INDICES_DE_VALORES_ESPECIFICOS
replace0([], _, _, Resp, R) :- append(Resp, [], R), !.

replace0([I|Index], Input, N, Resp, R) :-
    nth0(I, Input, Atom),
    select(N, Resp, Atom, R1),
    replace0(Index, Input, N, R1, R), !.

%SINTOMAS
replace0([I|_], Input, _, Resp, R) :-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flag,
    sintoma(Atom, R).

%MEDICOS
replace0([I|_], Input, _, Resp, R) :-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flag2,
    medico(Atom, R).

%TRATAMIENTOS
replace0([I|_], Input, _, Resp, R) :-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flag3,
    tratamiento(Atom, R).

%FAMILIARES
replace0([I|_], Input, _, Resp, R) :-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flag4,
    familiar(Atom, R).

%REGLAS_PARA_LOS_SINTOMAS
sintoma(X, R) :-
    sintomas(X),
    (
        %CANCER_PROSTATA
        X = dificultad_para_orinar, R = ['La dificultad para orinar puede ser causada por la enfermedad cancer de prostata'];
        X = miccion_frecuente_especialmente_por_la_noche, R = ['La miccion frecuente, especialmente por la noche, puede ser causada por la enfermedad cancer de prostata'];
        X = sensacion_de_ardor_al_orinar, R = ['La sensacion de ardor al orinar puede ser causada por la enfermedad cancer de prostata'];
        X = dolor_o_molestia_al_orinar, R = ['El dolor o molestia al orinar puede ser causada por la enfermedad cancer de prostata'];
        X = flujo_debil_o_interrumpido_de_la_orina, R = ['El flujo debil o interrumpido de la orina puede ser causado por la enfermedad cancer de prostata'];
        X = dolor_en_la_zona_pelvica_la_parte_baja_de_la_espalda_o_la_ingle, R = ['El dolor en la zona pelvica, la parte baja de la espalda o la ingle puede ser causado por la enfermedad cancer de prostata'];
        X = sangre_en_la_orina_o_el_semen, R = ['La presencia de sangre en la orina o el semen puede ser causada por la enfermedad cancer de prostata'];
        X = eyaculacion_dolorosa, R = ['La eyaculacion dolorosa puede ser causada por la enfermedad cancer de prostata'];
        X = problemas_para_tener_una_ereccion, R = ['Los problemas para tener una ereccion pueden ser causados por la enfermedad cancer de prostata'];
        X = sensacion_de_no_poder_vaciar_completamente_la_vejiga, R = ['La sensacion de no poder vaciar completamente la vejiga puede ser causada por la enfermedad cancer de prostata'];
        X = dolor_en_los_testiculos, R = ['El dolor en los testiculos puede ser causado por la enfermedad cancer de prostata'];
        X = hinchazon_en_las_piernas, R = ['La hinchazon en las piernas puede ser causada por la enfermedad cancer de prostata'];
        X = dolor_en_los_huesos_especialmente_en_la_cadera_la_columna_vertebral_o_las_costillas, R = ['El dolor en los huesos, especialmente en la cadera, la columna vertebral o las costillas, puede ser causado por la enfermedad cancer de prostata'];
        X = perdida_de_peso_inexplicable, R = ['La perdida de peso inexplicable puede ser causada por la enfermedad cancer de prostata'];
        X = fatiga_persistente, R = ['La fatiga persistente puede ser causada por la enfermedad cancer de prostata'];
        X = cambios_en_los_habitos_intestinales, R = ['Los cambios en los habitos intestinales pueden ser causados por la enfermedad cancer de prostata'];
        X = sensacion_de_presion_en_la_parte_baja_del_abdomen_o_el_recto, R = ['La sensacion de presion en la parte baja del abdomen o el recto puede ser causada por la enfermedad cancer de prostata'];
        X = incontinencia_urinaria, R = ['La incontinencia urinaria puede ser causada por la enfermedad cancer de prostata'];
        X = debilidad_muscular_en_las_piernas, R = ['La debilidad muscular en las piernas puede ser causada por la enfermedad cancer de prostata'];
        X = problemas_con_la_eyaculacion_como_eyaculacion_retrograda, R = ['Los problemas con la eyaculacion, como la eyaculacion retrograda, pueden ser causados por la enfermedad cancer de prostata'];
        X = problemas_con_la_eyaculacion_como_eyaculacion_dolorosa, R = ['Los problemas con la eyaculacion, como la eyaculacion dolorosa, pueden ser causados por la enfermedad cancer de prostata'];
        X = hinchazon_en_las_piernas_o_los_pies_debido_a_la_acumulacion_de_liquido, R = ['La hinchazon en las piernas o los pies debido a la acumulacion de liquido puede ser causada por la enfermedad cancer de prostata'];
        X = debilidad_o_entumecimiento_en_las_piernas_o_los_pies, R = ['La debilidad o entumecimiento en las piernas o los pies puede ser causada por la enfermedad cancer de prostata'];
        X = dolor_en_los_huesos_especialmente_en_la_cadera_la_columna_vertebral_o_las_costillas, R = ['El dolor en los huesos, especialmente en la cadera, la columna vertebral o las costillas, puede ser causado por la enfermedad cancer de prostata'];
        X = dolor_en_la_pelvis_la_parte_baja_de_la_espalda_o_la_ingle_que_no_desaparece, R = ['El dolor en la pelvis, la parte baja de la espalda o la ingle que no desaparece puede ser causado por la enfermedad cancer de prostata'];
        X = problemas_para_tener_una_ereccion, R = ['Los problemas para tener una ereccion pueden ser causados por la enfermedad cancer de prostata'];
        X = problemas_para_mantener_una_ereccion, R = ['Los problemas para mantener una ereccion pueden ser causados por la enfermedad cancer de prostata'];
        X = dificultad_para_empezar_a_orinar, R = ['La dificultad para empezar a orinar puede ser causada por la enfermedad cancer de prostata'];
        X = dificultad_para_detener_el_flujo_de_orina, R = ['La dificultad para detener el flujo de orina puede ser causada por la enfermedad cancer de prostata'];
        X = necesidad_frecuente_de_orinar_especialmente_por_la_noche, R = ['La necesidad frecuente de orinar, especialmente por la noche, puede ser causada por la enfermedad cancer de prostata'];
        X = sensacion_de_que_la_vejiga_no_se_vacia_por_completo_despues_de_orinar, R = ['La sensacion de que la vejiga no se vacia por completo despues de orinar puede ser causada por la enfermedad cancer de prostata'];
        X = orinar_con_mas_frecuencia_de_lo_normal, R = ['Orinar con mas frecuencia de lo normal puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_menos_frecuencia_de_lo_normal, R = ['Orinar con menos frecuencia de lo normal puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_en_pequenas_cantidades, R = ['Orinar en pequenas cantidades puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_en_grandes_cantidades, R = ['Orinar en grandes cantidades puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_en_chorro_debil, R = ['Orinar en chorro debil puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_un_chorro_interrumpido, R = ['Orinar con un chorro interrumpido puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_fuerza, R = ['Orinar con fuerza puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_dolor, R = ['Orinar con dolor puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_urgencia, R = ['Orinar con urgencia puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_goteo_despues_de_terminar_de_orinar, R = ['Orinar con goteo despues de terminar de orinar puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_sangre, R = ['Orinar con sangre puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_espuma, R = ['Orinar con espuma puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_olor_fuerte, R = ['Orinar con olor fuerte puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_un_color_anormal, R = ['Orinar con un color anormal puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_turbidez, R = ['Orinar con turbidez puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_frecuencia, R = ['Orinar con frecuencia puede ser causado por la enfermedad cancer de prostata'];
        X = orinar_con_sensacion_de_vaciado_incompleto, R = ['Orinar con sensacion de vaciado incompleto puede ser causado por la enfermedad cancer de prostata'];


        

        %FIEBRE_AMARILLA
        X = fiebre, R = ['La fiebre es un sintoma comun de la fiebre amarilla'];
        X = dolor_de_cabeza, R = ['El dolor de cabeza puede ser un sintoma de la fiebre amarilla'];
        X = dolores_musculares, R = ['Los dolores musculares son sintomas frecuentes de la fiebre amarilla'];
        X = escalofrios, R = ['Los escalofrios pueden ser un sintoma de la fiebre amarilla'];
        X = fatiga, R = ['La fatiga es comun en personas con fiebre amarilla'];
        X = nauseas, R = ['Las nauseas pueden ser un sintoma de la fiebre amarilla'];
        X = vomitos, R = ['Los vomitos pueden ocurrir en casos de fiebre amarilla'];
        X = ictericia, R = ['La ictericia es un sintoma caracteristico de la fiebre amarilla'];
        X = dolor_abdominal, R = ['El dolor abdominal puede ser un sintoma de la fiebre amarilla'];
        X = perdida_del_apetito, R = ['La perdida del apetito es comun en personas con fiebre amarilla'];
        X = sangrado_de_encias, R = ['El sangrado de encias puede ocurrir en casos graves de fiebre amarilla'];
        X = sangrado_nasal, R = ['El sangrado nasal puede ser un sintoma de la fiebre amarilla'];
        X = sangrado_en_los_ojos, R = ['El sangrado en los ojos puede ocurrir en casos graves de fiebre amarilla'];
        X = sangre_en_el_vomito, R = ['La presencia de sangre en el vomito puede indicar fiebre amarilla grave'];
        X = sangre_en_las_heces, R = ['La presencia de sangre en las heces puede ser un sintoma grave de fiebre amarilla'];
        X = confusion, R = ['La confusion puede ser un sintoma de fiebre amarilla grave'];
        X = somnolencia, R = ['La somnolencia puede ocurrir en casos graves de fiebre amarilla'];
        X = agitacion, R = ['La agitacion puede ser un sintoma de fiebre amarilla grave'];
        X = dolor_toracico, R = ['El dolor toracico puede ocurrir en casos graves de fiebre amarilla'];
        X = insuficiencia_renal, R = ['La insuficiencia renal puede ser una complicacion de la fiebre amarilla grave'];
        X = insuficiencia_hepatica, R = ['La insuficiencia hepatica puede ser una complicacion de la fiebre amarilla grave'];
        X = taquicardia, R = ['La taquicardia puede ser un sintoma de fiebre amarilla grave'];
        X = hipotension, R = ['La hipotension puede ocurrir en casos graves de fiebre amarilla'];
        X = letargo, R = ['El letargo puede ocurrir en casos graves de fiebre amarilla'];
        X = coma, R = ['El coma puede ocurrir en casos extremadamente graves de fiebre amarilla'];
        X = delirio, R = ['El delirio puede ocurrir en casos graves de fiebre amarilla'];
        X = convulsiones, R = ['Las convulsiones pueden ocurrir en casos graves de fiebre amarilla'];
        X = deshidratacion, R = ['La deshidratacion puede ocurrir en casos graves de fiebre amarilla'];
        X = debilidad_generalizada, R = ['La debilidad generalizada puede ocurrir en casos graves de fiebre amarilla'];
        X = hemorragias_internas, R = ['Las hemorragias internas pueden ocurrir en casos graves de fiebre amarilla'];
        X = dolor_de_espalda, R = ['El dolor de espalda puede ser un sintoma de fiebre amarilla grave'];
        X = dolor_de_garganta, R = ['El dolor de garganta puede ser un sintoma de fiebre amarilla'];
        X = aumento_del_tamano_del_higado, R = ['El aumento del tamano del higado puede ser un sintoma de fiebre amarilla'];
        X = aumento_del_tamano_del_bazo, R = ['El aumento del tamano del bazo puede ser un sintoma de fiebre amarilla'];
        X = hematemesis, R = ['La hematemesis puede ser un sintoma grave de fiebre amarilla'];
        X = hipoglucemia, R = ['La hipoglucemia puede ocurrir en casos graves de fiebre amarilla'];
        X = hematuria, R = ['La hematuria puede ser un sintoma de fiebre amarilla grave'];
        X = retencion_urinaria, R = ['La retencion urinaria puede ocurrir en casos graves de fiebre amarilla'];
        X = melenas, R = ['Las melenas pueden ser un sintoma grave de fiebre amarilla'];
        X = hipotermia, R = ['La hipotermia puede ocurrir en casos graves de fiebre amarilla'];
        X = fotofobia, R = ['La fotofobia puede ser un sintoma de fiebre amarilla'];
        X = rigidez_de_nuca, R = ['La rigidez de nuca puede ser un sintoma de fiebre amarilla grave'];
        X = aumento_de_la_frecuencia_respiratoria, R = ['El aumento de la frecuencia respiratoria puede ocurrir en casos graves de fiebre amarilla'];
        X = disnea, R = ['La disnea puede ocurrir en casos graves de fiebre amarilla'];
        X = escalofrios_persistentes, R = ['Los escalofrios persistentes pueden ser un sintoma de fiebre amarilla grave'];
        X = aumento_del_ritmo_cardiaco, R = ['El aumento del ritmo cardiaco puede ser un sintoma de fiebre amarilla'];
        X = edema, R = ['El edema en piernas y abdomen puede ser un sintoma de fiebre amarilla grave'];
        X = sensibilidad_abdominal, R = ['La sensibilidad abdominal puede ser un sintoma de fiebre amarilla grave'];
        X = dolor_en_la_parte_inferior_de_la_espalda, R = ['El dolor en la parte inferior de la espalda puede ser un sintoma de fiebre amarilla'];
        X = mareos_frecuentes, R = ['Los mareos frecuentes pueden ser un sintoma de fiebre amarilla grave'];

        %LARINGITIS
        X = ronquera_o_voz_aspera, R = ['La ronquera o la voz aspera son sintomas comunes de la laringitis'];
        X = dolor_de_garganta, R = ['El dolor de garganta es uno de los sintomas principales de la laringitis'];
        X = tos_seca, R = ['La tos seca es comun en casos de laringitis'];
        X = dificultad_para_tragar, R = ['La dificultad para tragar puede ocurrir debido a la inflamacion en la garganta causada por la laringitis'];
        X = sensacion_de_irritacion_o_cosquilleo_en_la_garganta, R = ['La sensacion de irritacion o cosquilleo en la garganta puede ser un sintoma inicial de la laringitis'];
        X = sensacion_de_tener_un_cuerpo_extrano_en_la_garganta, R = ['La sensacion de tener un cuerpo extrano en la garganta puede ser un sintoma de laringitis'];
        X = perdida_parcial_o_total_de_la_voz, R = ['La perdida parcial o total de la voz es un sintoma caracteristico de la laringitis'];
        X = fatiga_vocal, R = ['La fatiga vocal, especialmente en personas que hablan mucho o gritan, puede ser un sintoma de laringitis'];
        X = fiebre_baja, R = ['La fiebre baja puede acompanar a la laringitis en algunos casos'];
        X = ganglios_linfaticos_inflamados_en_el_cuello, R = ['La inflamacion de los ganglios linfaticos en el cuello puede ser una respuesta del sistema inmunologico a la infeccion que causa la laringitis'];
        X = secrecion_nasal, R = ['La secrecion nasal puede ocurrir en casos de laringitis viral, especialmente en ninos'];
        X = tos_productiva, R = ['En algunos casos de laringitis, la tos puede ser productiva y estar acompanada de expectoracion'];
        X = dificultad_para_respirar, R = ['En casos graves de laringitis, la inflamacion de la garganta puede dificultar la respiracion'];
        X = sensacion_de_opresion_en_el_pecho, R = ['La sensacion de opresion en el pecho puede ocurrir si la laringitis afecta la respiracion'];
        X = tos_que_empeora_por_la_noche, R = ['La tos que empeora por la noche puede ser un sintoma de laringitis, especialmente si hay irritacion debido al reflujo acido'];
        X = sensacion_de_sequedad_en_la_garganta, R = ['La sensacion de sequedad en la garganta puede ser un sintoma de laringitis'];
        X = tos_persistente, R = ['Una tos persistente puede ser un sintoma de laringitis, especialmente si dura mas de tres semanas'];
        X = dolor_al_tragar_saliva, R = ['El dolor al tragar saliva puede indicar inflamacion en la garganta debido a la laringitis'];
        X = sensacion_de_picazon_en_la_garganta, R = ['La sensacion de picazon en la garganta puede ser un sintoma de laringitis'];
        X = sensacion_de_ardor_en_la_garganta, R = ['La sensacion de ardor en la garganta puede ocurrir debido a la irritacion causada por la laringitis'];
        X = tos_con_flema, R = ['En algunos casos de laringitis, la tos puede ser productiva y acompanada de flema'];
        X = ronquera_que_empeora_con_el_uso_de_la_voz, R = ['La ronquera que empeora con el uso de la voz puede ser un signo de laringitis'];
        X = tos_que_empeora_con_el_frio_o_el_aire_seco, R = ['La tos que empeora con el frio o el aire seco puede ser un sintoma de laringitis'];
        X = tos_que_empeora_con_el_esfuerzo_fisico, R = ['La tos que empeora con el esfuerzo fisico puede ser un sintoma de laringitis'];
        X = tos_que_empeora_con_el_consumo_de_alcohol_o_tabaco, R = ['La tos que empeora con el consumo de alcohol o tabaco puede ser un sintoma de laringitis, ya que estos irritan la garganta'];
        X = tos_que_empeora_por_la_noche, R = ['La tos que empeora por la noche puede ser un sintoma de laringitis, especialmente si hay reflujo acido'];
        X = sensacion_de_constriccion_en_la_garganta, R = ['La sensacion de constriccion en la garganta puede ser un sintoma de laringitis'];
        X = sensacion_de_tener_una_bola_en_la_garganta, R = ['La sensacion de tener una bola en la garganta puede ser un sintoma de laringitis'];
        X = sensacion_de_asfixia, R = ['La sensacion de asfixia puede ocurrir en casos graves de laringitis'];
        X = tos_con_sangre, R = ['La tos con sangre puede indicar dano en la garganta debido a la laringitis'];
        X = dolor_de_oido, R = ['El dolor de oido puede ocurrir en casos de laringitis, especialmente si la inflamacion se extiende hacia el conducto auditivo'];
        X = dolor_al_hablar, R = ['El dolor al hablar puede ser un sintoma de laringitis, especialmente si la garganta esta inflamada'];
        X = sensacion_de_cansancio_al_hablar, R = ['La sensacion de cansancio al hablar puede ser un signo de laringitis, ya que la inflamacion puede dificultar la produccion de voz'];
        X = dolor_en_el_cuello, R = ['El dolor en el cuello puede ocurrir debido a la inflamacion de la garganta causada por la laringitis'];
        X = ronquera_que_dura_mas_de_dos_semanas, R = ['La ronquera que persiste durante mas de dos semanas puede indicar laringitis cronica o una afeccion subyacente mas grave'];
        X = tos_que_empeora_con_el_consumo_de_alimentos_picantes, R = ['La tos que empeora con el consumo de alimentos picantes puede ser un sintoma de laringitis, ya que irritan la garganta'];
        X = tos_que_empeora_con_el_estres_emocional, R = ['La tos que empeora con el estres emocional puede ser un sintoma de laringitis'];
        X = tos_que_empeora_con_el_reflujo_gastroesofagico, R = ['La tos que empeora con el reflujo gastroesofágico puede ser un síntoma de laringitis'];
        X = tos_que_empeora_con_el_uso_de_ciertos_medicamentos, R = ['La tos que empeora con el uso de ciertos medicamentos puede ser un síntoma de laringitis'];
        X = tos_que_empeora_con_el_uso_excesivo_de_la_voz, R = ['La tos que empeora con el uso excesivo de la voz puede ser un síntoma de laringitis, especialmente en cantantes o profesionales de la voz'];
        X = tos_que_empeora_con_el_consumo_de_alimentos_frios_o_calientes, R = ['La tos que empeora con el consumo de alimentos fríos o calientes puede ser un síntoma de laringitis'];
        X = tos_que_empeora_al_acostarse, R = ['La tos que empeora al acostarse puede ser un síntoma de laringitis, especialmente si hay reflujo ácido'];
        X = tos_que_empeora_al_hablar_por_telefono, R = ['La tos que empeora al hablar por teléfono puede ser un síntoma de laringitis'];
        X = tos_que_empeora_con_el_uso_de_la_computadora, R = ['La tos que empeora con el uso de la computadora puede ser un síntoma de laringitis'];
        X = tos_que_empeora_con_la_exposicion_al_humo_del_cigarrillo, R = ['La tos que empeora con la exposición al humo del cigarrillo puede ser un síntoma de laringitis'];
        X = tos_que_empeora_con_la_inhalacion_de_pollo_o_alergenos, R = ['La tos que empeora con la inhalación de polvo o alérgenos puede ser un síntoma de laringitis'];
        X = tos_que_empeora_con_el_cambio_de_estacion, R = ['La tos que empeora con el cambio de estación puede ser un síntoma de laringitis'];
        X = tos_que_empeora_con_el_cambio_de_clima, R = ['La tos que empeora con el cambio de clima puede ser un síntoma de laringitis'];
        X = tos_que_empeora_con_la_exposicion_al_aire_seco, R = ['La tos que empeora con la exposicion al aire seco puede ser un síntoma de laringitis'];
        X = tos_que_empeora_al_respirar_aire_frio, R = ['La tos que empeora al respirar aire frio puede ser un síntoma de laringitis'];


        
        R = ['puede que', X, 'sea un sintoma, solo que no se cual enfermedad es']
    ).

sintoma(X, R) :- \+ sintomas(X), R = ['no se sabe si', X, 'sea un sintoma de alguna enfermedad'].

%BASE_DE_SINTOMAS

%CANCER_PROSTATA
    sintomas(dificultad_para_orinar).
    sintomas(miccion_frecuente_especialmente_por_la_noche).
    sintomas(sensacion_de_ardor_al_orinar).
    sintomas(dolor_o_molestia_al_orinar).
    sintomas(flujo_debil_o_interrumpido_de_la_orina).
    sintomas(dolor_en_la_zona_pelvica_la_parte_baja_de_la_espalda_o_la_ingle).
    sintomas(sangre_en_la_orina_o_el_semen).
    sintomas(eyaculacion_dolorosa).
    sintomas(problemas_para_tener_una_ereccion).
    sintomas(sensacion_de_no_poder_vaciar_completamente_la_vejiga).
    sintomas(dolor_en_los_testiculos).
    sintomas(hinchazon_en_las_piernas).
    sintomas(dolor_en_los_huesos_especialmente_en_la_cadera_la_columna_vertebral_o_las_costillas).
    sintomas(perdida_de_peso_inexplicable).
    sintomas(fatiga_persistente).
    sintomas(disfuncion_erectil).
    sintomas(dolor_en_las_caderas_la_espalda_el_pecho_o_en_otros_lugares_si_el_cancer_se_ha_diseminado_a_los_huesos).
    sintomas(debilidad_o_entumecimiento_en_las_piernas_o_los_pies_o_perdida_de_control_de_la_vejiga_o_los_intestinos).
    sintomas(hinchazon_en_las_piernas_o_la_pelvis).
    sintomas(dolor_en_la_parte_baja_de_la_espalda_las_caderas_o_los_muslos).
    sintomas(perdida_de_apetito).
    sintomas(nauseas_o_vomitos).
    sintomas(hinchazon_de_las_piernas_y_los_pies).
    sintomas(fatiga).
    sintomas(anemia).
    sintomas(falta_de_aliento).
    sintomas(dolor_o_molestia_en_los_huesos_como_dolor_rigidez_o_fracturas).
    sintomas(cambios_en_los_habitos_intestinales_como_estrenimiento).
    sintomas(presion_o_dolor_en_la_parte_inferior_de_la_pelvis).
    sintomas(dolor_o_molestia_al_sentarse_si_tiene_hemorroides).
    sintomas(incontinencia_urinaria).
    sintomas(disfuncion_erectil).
    sintomas(problemas_para_orinar).
    sintomas(flujo_de_orina_debil_o_interrumpido).
    sintomas(orinar_con_mas_frecuencia_de_lo_normal_especialmente_por_la_noche).
    sintomas(orinar_con_menos_frecuencia_de_lo_normal).
    sintomas(orinar_con_pequenas_cantidades).
    sintomas(orinar_con_grandes_cantidades).
    sintomas(orinar_en_chorro_debil).
    sintomas(orinar_con_un_chorro_interrumpido).
    sintomas(orinar_con_fuerza).
    sintomas(orinar_con_dolor).
    sintomas(orinar_con_urgencia).
    sintomas(orinar_con_goteo_despues_de_terminar_de_orinar).
    sintomas(orinar_con_sangre).
    sintomas(orinar_con_espuma).
    sintomas(orinar_con_olor_fuerte).
    sintomas(orinar_con_un_color_anormal).
    sintomas(orinar_con_turbidez).
    sintomas(orinar_con_frecuencia).
    sintomas(orinar_con_sensacion_de_vaciado_incompleto).



%FIEBRE_AMARILLA
    sintomas(fiebre).
    sintomas(dolor_de_cabeza).
    sintomas(dolores_musculares).
    sintomas(escalofrios).
    sintomas(fatiga).
    sintomas(nauseas).
    sintomas(vomitos).
    sintomas(ictericia).
    sintomas(dolor_abdominal).
    sintomas(perdida_del_apetito).
    sintomas(sangrado_de_encias).
    sintomas(sangrado_nasal).
    sintomas(sangrado_en_los_ojos).
    sintomas(sangre_en_el_vomito).
    sintomas(sangre_en_las_heces).
    sintomas(confusion).
    sintomas(somnolencia).
    sintomas(agitacion).
    sintomas(dolor_toracico).
    sintomas(insuficiencia_renal).
    sintomas(insuficiencia_hepatica).
    sintomas(taquicardia).
    sintomas(hipotension).
    sintomas(letargo).
    sintomas(coma).
    sintomas(delirio).
    sintomas(convulsiones).
    sintomas(deshidratacion).
    sintomas(debilidad_generalizada).
    sintomas(hemorragias_internas).
    sintomas(dolor_de_espalda).
    sintomas(dolor_de_garganta).
    sintomas(aumento_del_tamano_del_higado).
    sintomas(aumento_del_tamano_del_bazo).
    sintomas(hematemesis).
    sintomas(hipoglucemia).
    sintomas(hematuria).
    sintomas(retencion_urinaria).
    sintomas(melenas).
    sintomas(hipotermia).
    sintomas(fotofobia).
    sintomas(rigidez_de_nuca).
    sintomas(aumento_de_la_frecuencia_respiratoria).
    sintomas(disnea).
    sintomas(escalofrios_persistentes).
    sintomas(aumento_del_ritmo_cardiaco).
    sintomas(edema_en_piernas_y_abdomen).
    sintomas(sensibilidad_abdominal).
    sintomas(dolor_en_la_parte_inferior_de_la_espalda).
    sintomas(mareos_frecuentes).



%LARINGITIS
    sintomas(ronquera_o_voz_aspera).
    sintomas(dolor_de_garganta).
    sintomas(tos_seca).
    sintomas(dificultad_para_tragar).
    sintomas(sensacion_de_irritacion_o_cosquilleo_en_la_garganta).
    sintomas(sensacion_de_tener_un_cuerpo_extrano_en_la_garganta).
    sintomas(perdida_parcial_o_total_de_la_voz).
    sintomas(fatiga_vocal).
    sintomas(fiebre_baja).
    sintomas(ganglios_linfaticos_inflamados_en_el_cuello).
    sintomas(secrecion_nasal).
    sintomas(tos_productiva).
    sintomas(dificultad_para_respirar).
    sintomas(sensacion_de_opresion_en_el_pecho).
    sintomas(tos_que_empeora_por_la_noche).
    sintomas(sensacion_de_sequedad_en_la_garganta).
    sintomas(tos_persistente).
    sintomas(dolor_al_tragar_saliva).
    sintomas(sensacion_de_picazon_en_la_garganta).
    sintomas(sensacion_de_ardor_en_la_garganta).
    sintomas(tos_con_flema).
    sintomas(ronquera_que_empeora_con_el_uso_de_la_voz).
    sintomas(tos_que_empeora_con_el_frio_o_el_aire_seco).
    sintomas(tos_que_empeora_con_el_esfuerzo_fisico).
    sintomas(tos_que_empeora_con_el_consumo_de_alcohol_o_tabaco).
    sintomas(tos_que_empeora_por_la_noche).
    sintomas(sensacion_de_constriccion_en_la_garganta).
    sintomas(sensacion_de_tener_una_bola_en_la_garganta).
    sintomas(sensacion_de_asfixia).
    sintomas(tos_con_sangre).
    sintomas(dolor_de_oido).
    sintomas(dolor_al_hablar).
    sintomas(sensacion_de_cansancio_al_hablar).
    sintomas(dolor_en_el_cuello).
    sintomas(ronquera_que_dura_mas_de_dos_semanas).
    sintomas(tos_que_empeora_con_el_consumo_de_alimentos_picantes).
    sintomas(tos_que_empeora_con_el_estres_emocional).
    sintomas(tos_que_empeora_con_el_reflujo_gastroesofagico).
    sintomas(tos_que_empeora_con_el_uso_de_ciertos_medicamentos).
    sintomas(tos_que_empeora_con_el_uso_excesivo_de_la_voz).
    sintomas(tos_que_empeora_con_el_consumo_de_alimentos_frios_o_calientes).
    sintomas(tos_que_empeora_al_acostarse).
    sintomas(tos_que_empeora_al_hablar_por_telefono).
    sintomas(tos_que_empeora_con_el_uso_de_la_computadora).
    sintomas(tos_que_empeora_con_la_exposicion_al_humo_del_cigarrillo).
    sintomas(tos_que_empeora_con_la_inhalacion_de_polvo_o_alergenos).
    sintomas(tos_que_empeora_con_el_cambio_de_estacion).
    sintomas(tos_que_empeora_con_el_cambio_de_clima).
    sintomas(tos_que_empeora_con_la_exposicion_al_aire_seco).
    sintomas(tos_que_empeora_al_respirar_aire_frio).


%DEFINIMOS_MEDICOS
medico(X, R) :-
    medicos(X),
    (
        X = cancer_de_prostata, R = ['Yo no te recomiendo ir a ningun doctor ya que la mayoria son unos corruptos adoctrinados por el sistema, que no te curan nada solo te controlan las enfermedades, pero bueno, ve con un Urologo tal vez el puede ayudarte un poco'];
        X = fiebre_amarilla, R = ['Le recomiendo buscar atencion medica de inmediato. La fiebre amarilla es una enfermedad grave que requiere tratamiento especializado. Un medico infectologo puede brindarle la atencion necesaria para manejar la enfermedad correctamente'];
        X = laringitis, R = ['Le recomiendo consultar con un medico especialista en otorrinolaringologia. Ellos pueden proporcionarle el tratamiento adecuado y ayudarlo a aliviar los sintomas de la laringitis'];

        R = ['Puede ser que', X, 'sea una enfermedad solo que no sé qué medico recomendarte']
    ).

medico(X, R) :- \+ medicos(X), R = ['no se si', X, 'sea una enfermedad, lo siento'].

%BASE_DE_MEDICOS
medicos(cancer_de_prostata).
medicos(fiebre_amarilla).
medicos(laringitis).

%DEFINIMOS_TRATAMIENTOS
tratamiento(X, R) :-
    tratamientos(X),
    (
        X = cancer_de_prostata, R = ['Para el tratamiento del cancer de prostata, te recomendaria:

        1- Leuprorelina (Leuprolide) - Utilizado para reducir los niveles de testosterona.

        2- Abiraterona - Inhibe la produccion de androgenos, que pueden promover el crecimiento del cancer.

        3- Enzalutamida - Bloquea los receptores de androgenos en las celulas cancerosas.
        
        4- Bicalutamida - Actua como un antiandrogeno, bloqueando los efectos de la testosterona.
        
        5- Docetaxel - Un quimioterapico utilizado en casos avanzados de cancer de prostata.
        
        6- Cabazitaxel - Un quimioterapico utilizado cuando otros tratamientos fallan.
        
        7- Degarelix - Reduce rapidamente los niveles de testosterona.
        
        8- Apalutamida - Otro antiandrogeno que inhibe la accion de los androgenos.

        9- Sipuleucel-T - Una inmunoterapia disenada para estimular el sistema inmunitario contra las celulas cancerosas.

        10- Radium-223 (Radio-223) - Un radiofarmaco utilizado para tratar el cancer de prostata que se ha diseminado a los huesos.'];

        X = fiebre_amarilla, R = ['Para el tratamiento de la fiebre amarilla, te recomendaria:
        
        1- Administracion de antivirales - Los medicamentos antivirales pueden ser utiles para tratar casos graves de fiebre amarilla.
        
        2- Hospitalizacion - En casos severos, la hospitalizacion es necesaria para un monitoreo medico adecuado y para recibir tratamiento de soporte.
        
        3- Transfusion de sangre - En algunos casos de fiebre amarilla grave, puede ser necesaria una transfusion de sangre para tratar la anemia o la trombocitopenia.
        
        4- Tratamiento sintomatico - Se pueden administrar medicamentos para aliviar los sintomas, como analgesicos para reducir la fiebre y el malestar.
        
        5- Hidratacion - Mantener una buena hidratacion es crucial para ayudar al cuerpo a combatir la infeccion y prevenir la deshidratacion.
        
        6- Cuidados de apoyo - Los pacientes con fiebre amarilla necesitan descanso adecuado y cuidados de apoyo para facilitar la recuperacion.
        
        7- Control de vectores - Es importante implementar medidas de control de vectores para prevenir la propagacion, como la eliminacion de criaderos de mosquitos.
        
        8- Vacunacion - La vacunacion es una medida preventiva crucial. Se debe vacunar al menos 10 dias antes de viajar a areas donde la enfermedad es endemica.
        
        9- Tratamiento de soporte - En casos de fiebre amarilla grave, se pueden necesitar cuidados intensivos, incluyendo el apoyo respiratorio.
        
        10- Terapia de rehidratacion oral - En casos leves de fiebre amarilla, la terapia de rehidratacion oral puede ser suficiente para la deshidratacion.

        
        
        '];
        X = laringitis, R = ['Para el tratamiento de laringits, te recomendaria:
        
        1- Descansar la voz - Evitar hablar en exceso puede ayudar a aliviar la inflamacion de las cuerdas vocales.
        
        2- Hidratacion - Mantenerse bien hidratado ayuda a mantener la garganta humeda y puede aliviar la irritacion.
        
        3- Gargaras con agua tibia y sal - Las gargaras con esta mezcla pueden ayudar a reducir la inflamacion y aliviar el malestar.
        
        4- Evitar irritantes - Evitar el humo del tabaco, el aire seco y los productos quimicos irritantes puede ayudar.
        
        5- Inhalacion de vapor - Respirar vapor de agua caliente puede ayudar a humedecer y aliviar la garganta.
        
        6- Utilizar humidificador - Usar un humidificador puede ayudar a mantener el aire humedo y aliviar la irritacion de garganta.
        
        7- Reposo - Descansar y evitar el esfuerzo vocal puede permitir que las cuerdas vocales se recuperen mas rapidamente.
        
        8- Analgesicos - Tomar analgesicos de venta libre, como el paracetamol o ibuprofeno, puede ayudar a aliviar el dolor y la fiebre.
        
        9- Antibioticos - Si la laringitis es causada por una infeccion bacteriana, pueden ser necesarios antibioticos para tratarla.
        
        10- Corticosteroides - En casos de laringitis severa, el medico puede recetar corticosteroides para reducir la inflamacion y aliviar los sintomas.'];

        R = ['puede ser que', X, 'es una enfermedad pero no se que tratamiento darte']
    ).

tratamiento(X, R) :- \+ tratamientos(X), R = ['no se si', X, 'sea una enfermedad lo siento'].

%BASE_DE_TRATAMIENTOS
tratamientos(cancer_de_prostata).
tratamientos(fiebre_amarilla).
tratamientos(laringitis).


%REGLAS_FAMILIA
familiar(X, R) :-
    familiares(X, Relacion, Y),
    (
        R = [X, 'es', Relacion, 'de', Y]
    ).

familiar(X, R) :- \+ familiares(X, _, _), R = ['No tengo informacion sobre', X].

%BASE_DE_FAMILIA
familiares('gabriel', 'padre', 'miguel').
familiares('beatriz', 'madre', 'miguel').
familiares('alberto', 'abuelo', 'miguel').
familiares('soledad', 'abuela', 'miguel').
familiares('jorge', 'primo', 'miguel').
familiares('fernanda', 'prima', 'miguel').
familiares('beto', 'tio', 'miguel').
familiares('jazmin', 'tia', 'miguel').
familiares('andrea', 'hermana', 'miguel').
familiares('natalia', 'hermana', 'miguel').
familiares('miguel', 'hijo', 'gabriel').
familiares('miguel', 'hijo', 'beatriz').
familiares('miguel', 'nieto', 'alberto').
familiares('miguel', 'nieto', 'soledad').
familiares('miguel', 'primo', 'jorge').
familiares('miguel', 'primo', 'fernanda').
familiares('miguel', 'sobrino', 'beto').
familiares('miguel', 'sobrino', 'jazmin').
familiares('miguel', 'hermano', 'natalia').
familiares('natalia', 'hermana', 'natalia').


familiares('alberto', 'padre', 'gabriel').
familiares('soledad', 'madre', 'gabriel').
familiares('salomon', 'abuelo', 'gabriel').
familiares('mari', 'abuela', 'gabriel').
familiares('ivan', 'primo', 'gabriel').
familiares('isabel', 'prima', 'gabriel').
familiares('agustin', 'tio', 'gabriel').
familiares('marta', 'tia', 'gabriel').
familiares('beto', 'hermano', 'gabriel').
familiares('gabriel', 'hijo', 'alberto').
familiares('gabriel', 'hijo', 'soledad').
familiares('gabriel', 'nieto', 'salomon').
familiares('gabriel', 'nieto', 'mari').
familiares('gabriel', 'primo', 'ivan').
familiares('gabriel', 'primo', 'isabel').
familiares('gabriel', 'sobrino', 'agustin').
familiares('gabriel', 'sobrino', 'marta').
familiares('gabriel', 'hermano', 'beto').

familiares('raul', 'padre', 'beatriz').
familiares('zenaida', 'madre', 'beatriz').
familiares('roberto', 'abuelo', 'beatriz').
familiares('avelina', 'abuela', 'beatriz').
familiares('manuel', 'primo', 'beatriz').
familiares('lupe', 'prima', 'beatriz').
familiares('carlos', 'tio', 'beatriz').
familiares('silvia', 'tia', 'beatriz').
familiares('monse', 'hermana', 'beatriz').
familiares('norma', 'hermana', 'beatriz').
familiares('beatriz', 'hija', 'raul').
familiares('beatriz', 'hija', 'zenaida').
familiares('beatriz', 'nieta', 'roberto').
familiares('beatriz', 'nieta', 'avelina').
familiares('beatriz', 'prima', 'manuel').
familiares('beatriz', 'prima', 'lupe').
familiares('beatriz', 'sobrina', 'carlos').
familiares('beatriz', 'sobrina', 'silvia').
familiares('beatriz', 'hermana', 'monse').
familiares('beatriz', 'hermana', 'norma').


familiares('gabriel', 'padre', 'andrea').
familiares('beatriz', 'madre', 'andrea').
familiares('alberto', 'abuelo', 'andrea').
familiares('soledad', 'abuela', 'andrea').
familiares('jorge', 'primo', 'andrea').
familiares('fernanda', 'prima', 'andrea').
familiares('beto', 'tio', 'andrea').
familiares('jazmin', 'tia', 'andrea').
familiares('miguel', 'hermano', 'andrea').
familiares('natalia', 'hermana', 'andrea').
familiares('andrea', 'hija', 'gabriel').
familiares('andrea', 'hija', 'beatriz').
familiares('andrea', 'nieta', 'alberto').
familiares('andrea', 'nieta', 'soledad').
familiares('andrea', 'prima', 'jorge').
familiares('andrea', 'prima', 'fernanda').
familiares('andrea', 'sobrina', 'beto').
familiares('andrea', 'sobrina', 'jazmin').
familiares('andrea', 'hermana', 'miguel').
familiares('andrea', 'hermana', 'natalia').


familiares('gabriel', 'padre', 'natalia').
familiares('beatriz', 'madre', 'natalia').
familiares('alberto', 'abuelo', 'natalia').
familiares('soledad', 'abuela', 'natalia').
familiares('jorge', 'primo', 'natalia').
familiares('fernanda', 'prima', 'natalia').
familiares('beto', 'tio', 'natalia').
familiares('jazmin', 'tia', 'natalia').
familiares('miguel', 'hermano', 'natalia').
familiares('natalia', 'hermana', 'natalia').
familiares('natalia', 'hija', 'gabriel').
familiares('natalia', 'hija', 'beatriz').
familiares('natalia', 'nieta', 'alberto').
familiares('natalia', 'nieta', 'soledad').
familiares('natalia', 'prima', 'jorge').
familiares('natalia', 'prima', 'fernanda').
familiares('natalia', 'sobrina', 'beto').
familiares('natalia', 'sobrina', 'jazmin').
familiares('natalia', 'hermana', 'miguel').
familiares('natalia', 'hermana', 'natalia').

