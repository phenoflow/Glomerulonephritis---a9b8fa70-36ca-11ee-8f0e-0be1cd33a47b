cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  glomerulonephritis-glomnephritis---primary:
    run: glomerulonephritis-glomnephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  glomerulonephritis-membrane---primary:
    run: glomerulonephritis-membrane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-glomnephritis---primary/output
  acute-glomerulonephritis---primary:
    run: acute-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-membrane---primary/output
  glomerulonephritis-bright's---primary:
    run: glomerulonephritis-bright's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: acute-glomerulonephritis---primary/output
  prolifrative-glomerulonephritis---primary:
    run: prolifrative-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-bright's---primary/output
  crescentic-glomerulonephritis---primary:
    run: crescentic-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: prolifrative-glomerulonephritis---primary/output
  other-glomerulonephritis---primary:
    run: other-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: crescentic-glomerulonephritis---primary/output
  nephrotic-glomerulonephritis---primary:
    run: nephrotic-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-glomerulonephritis---primary/output
  membranous-glomerulonephritis---primary:
    run: membranous-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: nephrotic-glomerulonephritis---primary/output
  glomerulonephritis-membranoprolif---primary:
    run: glomerulonephritis-membranoprolif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: membranous-glomerulonephritis---primary/output
  glomerulonephritis-changes---primary:
    run: glomerulonephritis-changes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-membranoprolif---primary/output
  glomerulonephritis---primary:
    run: glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-changes---primary/output
  antiglomerular-glomerulonephritis---primary:
    run: antiglomerular-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: glomerulonephritis---primary/output
  glomerulonephritis-diffuse---primary:
    run: glomerulonephritis-diffuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: antiglomerular-glomerulonephritis---primary/output
  glomerulonephritis-syndrm---primary:
    run: glomerulonephritis-syndrm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-diffuse---primary/output
  endocapilary-glomerulonephritis---primary:
    run: endocapilary-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-syndrm---primary/output
  glomerulonephritis-mesang---primary:
    run: glomerulonephritis-mesang---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: endocapilary-glomerulonephritis---primary/output
  glomerulonephritis-deposit---primary:
    run: glomerulonephritis-deposit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-mesang---primary/output
  glomerulonephritis-chron---primary:
    run: glomerulonephritis-chron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-deposit---primary/output
  recurrent-glomerulonephritis---primary:
    run: recurrent-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-chron---primary/output
  nephropathy-glomerulonephritis---primary:
    run: nephropathy-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: recurrent-glomerulonephritis---primary/output
  persistent-glomerulonephritis---primary:
    run: persistent-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: nephropathy-glomerulonephritis---primary/output
  glomerulonephritis-unspecified---primary:
    run: glomerulonephritis-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: persistent-glomerulonephritis---primary/output
  glomerulonephritis-glomerulosclerosis---primary:
    run: glomerulonephritis-glomerulosclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-unspecified---primary/output
  glomerulonephritis-glomneph---primary:
    run: glomerulonephritis-glomneph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-glomerulosclerosis---primary/output
  glomerulonephritis-progre---primary:
    run: glomerulonephritis-progre---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-glomneph---primary/output
  glomerulonephritis-morpholog---primary:
    run: glomerulonephritis-morpholog---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-progre---primary/output
  glomerulonephritis-morph---primary:
    run: glomerulonephritis-morph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-morpholog---primary/output
  glomerulonephritis-disordr---primary:
    run: glomerulonephritis-disordr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-morph---primary/output
  glomerulonephritis-abnormality---secondary:
    run: glomerulonephritis-abnormality---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-disordr---primary/output
  segmental-glomerulonephritis---secondary:
    run: segmental-glomerulonephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-abnormality---secondary/output
  membranous-glomerulonephritis---secondary:
    run: membranous-glomerulonephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: segmental-glomerulonephritis---secondary/output
  mesangial-glomerulonephritis---secondary:
    run: mesangial-glomerulonephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: membranous-glomerulonephritis---secondary/output
  endocapillary-glomerulonephritis---secondary:
    run: endocapillary-glomerulonephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: mesangial-glomerulonephritis---secondary/output
  mesangiocapillary-glomerulonephritis---secondary:
    run: mesangiocapillary-glomerulonephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: endocapillary-glomerulonephritis---secondary/output
  glomerulonephritis-deposit---secondary:
    run: glomerulonephritis-deposit---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: mesangiocapillary-glomerulonephritis---secondary/output
  crescentic-glomerulonephritis---secondary:
    run: crescentic-glomerulonephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-deposit---secondary/output
  other-glomerulonephritis---secondary:
    run: other-glomerulonephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: crescentic-glomerulonephritis---secondary/output
  glomerulonephritis-specified---secondary:
    run: glomerulonephritis-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: other-glomerulonephritis---secondary/output
  morphological-glomerulonephritis---secondary:
    run: morphological-glomerulonephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: glomerulonephritis-specified---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: morphological-glomerulonephritis---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
