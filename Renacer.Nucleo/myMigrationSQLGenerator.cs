using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations.Model;
using System.Data.Entity.Migrations.Sql;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.Entity;

namespace Renacer.Nucleo
{
    public class myMigrationSQLGenerator : MySqlMigrationSqlGenerator
    {
        private string TrimSchemaPrefix(string table)
        {
            if (table.StartsWith("dbo."))
                return table.Replace("dbo.", "");
            return table;
        }

        //Para que no agregue los .dbo
        //protected override MigrationStatement Generate(AddForeignKeyOperation addForeignKeyOperation)
        //{
        //    addForeignKeyOperation.PrincipalTable = addForeignKeyOperation.PrincipalTable.Replace("dbo.", "");
        //    addForeignKeyOperation.DependentTable = addForeignKeyOperation.DependentTable.Replace("dbo.", "");
        //    MigrationStatement ms = base.Generate(addForeignKeyOperation);
        //    return ms;
        //}
        public override IEnumerable<MigrationStatement> Generate(IEnumerable<MigrationOperation> migrationOperations, string providerManifestToken)
        {
            IEnumerable<MigrationStatement> res = base.Generate(migrationOperations, providerManifestToken);
            foreach (MigrationStatement ms in res)
            {
                ms.Sql = ms.Sql.Replace("dbo.", "");
            }
            return res;
        }

        protected override MigrationStatement Generate(CreateIndexOperation op)
        {
            StringBuilder sb = new StringBuilder();

            sb = sb.Append("CREATE ");

            if (op.IsUnique)
            {
                sb.Append("UNIQUE ");
            }

            //index_col_name specification can end with ASC or DESC.
            // sort order are permitted for future extensions for specifying ascending or descending index value storage
            //Currently, they are parsed but ignored; index values are always stored in ascending order.

            object sort;
            op.AnonymousArguments.TryGetValue("Sort", out sort);
            var sortOrder = sort != null && sort.ToString() == "Ascending" ?
                            "ASC" : "DESC";

            sb.AppendFormat("index  `{0}` on `{1}` (", op.Name, TrimSchemaPrefix(op.Table));
            sb.Append(string.Join(",", op.Columns.Select(c => "`" + c + "` " + sortOrder)) + ") ");

            object indexTypeDefinition;
            op.AnonymousArguments.TryGetValue("Type", out indexTypeDefinition);

            var indexType = indexTypeDefinition != null && string.Compare(indexTypeDefinition.ToString(), "Hash", StringComparison.InvariantCultureIgnoreCase) > 0 ?
                            "HASH" : "BTREE";

            sb.Append("using " + indexType);

            return new MigrationStatement() { Sql = sb.ToString() };
        }
    }

}
