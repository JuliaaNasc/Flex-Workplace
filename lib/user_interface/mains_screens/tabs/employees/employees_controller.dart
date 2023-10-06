import 'package:flex_workplace/models/employee.dart';
import 'package:flex_workplace/models/quafication.dart';
import 'package:flex_workplace/models/sector.dart';
import 'package:flex_workplace/models/subsector.dart';

class EmployeesController {
  List<Employee> employeesComercial = [
    Employee(
      photo: null,
      name: ' Jonas Laureno',
      id: 'J0n45l4ur3n0',
      email: 'jonas.laureno@g4flex.com',
      description:
          'Atua no ramo comercial da empresa brasileira, G4 Flex Business and Services',
      discord: 'Jonas_Laureno',
      linkedin: 'jonaslaureno',
      qualification: [
        Qualification(
          name: 'CX',
          id: 'c0x0',
        ),
        Qualification(
          name: 'CS',
          id: 'c0s0',
        ),
        Qualification(
          name: 'CT',
          id: 'c0t0',
        ),
        Qualification(
          name: 'Omnichannel ',
          id: '0m1n1ch4anel',
        ),
        Qualification(
          name: 'IA',
          id: '1a',
        ),
        Qualification(
          name: 'CRM ',
          id: 'Crm0',
        )
      ],
      sectors: [
        Sector(
          id: 'jrh73w4y23y2fg',
          name: 'Comercial',
          photo: '',
        )
      ],
      subsectors: [
        Subsector(
            id: '1nwruyw7ru',
            name: '',
            photo: '',
            description:
                'Atua no ramo Comercial da empresa com a efetuação de vendas e apresentação da empresa'),
      ],
    ),
  ];
  List<Employee> employeesDesenvolvimento = [
    Employee(
        photo: null,
        name: ' Arlysthon Feitosa Freitas',
        id: 'alnffojnsefbvis',
        email: 'arlysthon.feitosa@g4flex.com',
        description:
            'Atua no ramo de Desenvolvimento da empresa brasileira, G4 Flex Business and Services',
        discord: 'Arlysthon_Feitosa',
        linkedin: 'arlysthon-feitosa-2900231aa',
        qualification: [
          Qualification(
            name: 'HTML',
            id: 'c0x0',
          ),
          Qualification(
            name: 'CSS',
            id: 'c0s0sdvsdv',
          ),
          Qualification(
            name: 'JavaScript',
            id: 'c0t0svsd',
          ),
          Qualification(
            name: 'FrameWork: fluuter',
            id: '0m1n1ch4anel',
          ),
          Qualification(
            name: 'FrameWork: nodeJS',
            id: '1acdsgw',
          ),
          Qualification(
            name: 'AngularJS',
            id: 'Crm0',
          ),
          Qualification(
            name: 'ReactJS',
            id: 'Cradffam0',
          ),
          Qualification(
            name: 'Ember Design Responsivo',
            id: 'Crmkfnewuif0',
          )
        ],
        sectors: [
          Sector(
            id: 'jschzxicbasixn',
            name: 'Desenvolvimento',
            photo: '',
          ),
        ],
        subsectors: [
          Subsector(
            id: 'ndbdnxvzofgefnoeriyer',
            name: 'Mobile',
            photo: '',
            description: 'Desenvolvimento de aplicativos',
          )
        ]),
  ];
  List<Employee> employeesSuporte = [
    Employee(
      photo: null,
      name: ' Rodrigo Mesquita',
      id: 'jewurywer',
      email: 'rodrigo.mesquita@g4flex.com',
      description:
          'Atua no ramo do Suporte da empresa brasileira, G4 Flex Business and Services',
      discord: 'Rdrigo_Mesquita',
      linkedin: 'rodrigomesq',
      qualification: [
        Qualification(
          name: 'Gerente de Sustentação',
          id: 'c0xifhf8h0',
        ),
        Qualification(
          name: 'Gerente de Processos',
          id: 'c0s0sdvsdv',
        ),
        Qualification(
          name: 'Gerente de Projetos',
          id: 'c0tkqidjqc0svsd',
        ),
        Qualification(
          name: 'Gestão de Indicadores',
          id: '0m1n1ch4anel',
        ),
        Qualification(
          name: 'Liderança',
          id: '1acdvfgfbdsgw',
        ),
        Qualification(
          name: 'Governança de TI',
          id: 'Criwbfwiohcojwncom0',
        ),
        Qualification(
          name: 'Engenharia de Telecomunicações',
          id: 'Cradffamkncwodf0',
        ),
        Qualification(
          name: 'Salesforce',
          id: 'Crmkfnewuif0',
        )
      ],
      sectors: [
        Sector(
          id: 'dbe7ry83rbd',
          name: 'Suporte',
          photo: '',
        ),
      ],
      subsectors: [
        Subsector(
          id: 'nwieur283u',
          name: 'Gerente',
          photo: '',
          description: 'Gerencia a sua equipe',
        ),
      ],
    ),
  ];
  List<Employee> employeesFinanceiro = [
    Employee(
      photo: null,
      name: ' Igor Louback',
      id: 'jewurywer',
      email: 'igor.louback@g4flex.com',
      description:
          'Atua no ramo Financeiro da empresa brasileira, G4 Flex Business and Services',
      discord: 'Igor_Louback',
      linkedin: 'rodrigomesq',
      qualification: [
        Qualification(
          name: 'Financeiro',
          id: 'c0xifhf8h0',
        ),
        Qualification(
          name: 'Sócio de uma empresa nascional ',
          id: 'c0s0sdvsdv',
        ),
      ],
      sectors: [
        Sector(
          id: 'dbe7ry83rbd',
          name: 'Financeiro',
          photo: '',
        ),
      ],
      subsectors: [
        Subsector(
          id: 'nwieur283u',
          name: 'Financeiro',
          photo: '',
          description: 'Financeiro da empresa G4 Flex Business and Service, e um dos sócios',
        ),
      ],
    ),
  ];
}
