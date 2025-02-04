import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/entity/entity_details_page.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

import '../../generated/l10n.dart';

class TenantDetailsPage extends ContactBasedDetailsPage<Tenant> {
  TenantDetailsPage(TbContext tbContext, String tenantId)
      : super(tbContext,
            entityId: tenantId,
            defaultTitle: S.current.tenant_title,
            subTitle: S.current.tenant_subtitle);

  @override
  Future<Tenant?> fetchEntity(String tenantId) {
    return tbClient.getTenantService().getTenant(tenantId);
  }
}
