import 'package:flex_workplace/models/employee.dart';
import 'package:flex_workplace/models/quafication.dart';

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
      sector: 'Comercial',
      subSector: '',
    ),
  ];
  List<Employee> employeesDesenvolvimento = [
    Employee(
      photo: null,
      name: ' Arlysthon Feitosa Freitas',
      id: 'alnffojnsefbvis',
      email: 'arlysthon.feitosa@g4flex.com',
      description:
          'Atua no ramo e Desenvolvimento da empresa brasileira, G4 Flex Business and Services',
      discord: 'CArlysthon_Feitosa',
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
      sector: 'Desenvolvimento',
      subSector: 'Mobile',
    ),
  ];
}
