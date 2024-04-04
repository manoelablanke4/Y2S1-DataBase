# Y2S1-DataBase Project

This repository contains the source code and documentation for an Engineering Company Warehouse Management System, a project developed by Álvaro Luís Dias Amaral Alvim Torres, Beatriz Filomena Remondes de Oliveira and 
Manoela Blanke Américo for the subject of Data Base. The system serves as a computerized backbone to efficiently manage the stock of parts and components utilized in various engineering projects, equipment maintenance, and related services within the company's workshop.

<h2>Project Overview</h2>
The primary objective of this project is to streamline the inventory management process within the company's warehouse. Key functionalities and features of the system include: 
<br>
<br>
  <ul>
    <li><strong>Customer Order Management:</strong> Recording and processing customer orders, including customer details, order descriptions, and deadlines.</li>
    <li><strong>Employee Management:</strong> Detailed information about each employee, their roles (technician or engineer), and assignment of orders.</li>
    <li><strong>Work Order Generation:</strong> Creation of specific work orders for each customer order, detailing project descriptions and creation dates.</li>
    <li><strong>Inventory Management:</strong> Tracking stock levels of parts and components, generating internal requests for items needed to fulfill orders, and suggesting item orders when stock is insufficient.</li>
</ul>
<h2>UML Class Diagram Model</h2>
<p align="center" justify="center">
  <img src="images/uml_diagram_project.drawio.png">
</p>

<h2>Relational Model</h2>

<h4>Entities and Attributes:</h4>
<br>
<ol start="1">
    <li><strong>Encomenda</strong> (Order)
        <ul>
            <li>idEncomenda (Order ID)</li>
            <li>titulo (Title)</li>
            <li>descricao (Description)</li>
            <li>dataRecebida (Date Received)</li>
            <li>dataDeadline (Deadline Date)</li>
            <li>idCliente (Customer ID, Foreign Key referencing Cliente)</li>
            <li>idFuncionario (Employee ID, Foreign Key referencing Funcionario)</li>
        </ul>
    </li>
    <li><strong>Funcionario</strong> (Employee)
        <ul>
            <li>idFuncionario (Employee ID)</li>
            <li>nome (Name)</li>
            <li>morada (Address)</li>
            <li>telefone (Phone)</li>
            <li>NIF (Tax Identification Number)</li>
            <li>idTipo (Type ID, Foreign Key referencing Tipo)</li>
        </ul>
    </li>
    <li><strong>Trabalhar</strong> (Work)
        <ul>
            <li>idEncomenda (Order ID, Foreign Key referencing Encomenda)</li>
            <li>idFuncionario (Employee ID, Foreign Key referencing Funcionario)</li>
        </ul>
    </li>
    <li><strong>Tipo</strong> (Type)
        <ul>
            <li>idTipo (Type ID)</li>
            <li>especializacao (Specialization)</li>
        </ul>
    </li>
    <li><strong>OrdemDeTrabalho</strong> (Work Order)
        <ul>
            <li>ID (Order ID)</li>
            <li>data (Date)</li>
            <li>descricao (Description)</li>
            <li>idEncomenda (Order ID, Foreign Key referencing Encomenda)</li>
        </ul>
    </li>
    <li><strong>PedidoInterno</strong> (Internal Request)
        <ul>
            <li>pID (Request ID)</li>
            <li>data (Date)</li>
            <li>descricao (Description)</li>
            <li>ID (Order ID, Foreign Key referencing OrdemDeTrabalho)</li>
        </ul>
    </li>
    <li><strong>Procurar</strong> (Search)
        <ul>
            <li>pID (Request ID, Foreign Key referencing PedidoInterno)</li>
            <li>stockID (Stock ID, Foreign Key referencing Stock)</li>
            <li>ID (ID)</li>
            <li>descricao (Description)</li>
            <li>custoUnidade (Unit Cost)</li>
            <li>quantidade (Quantity)</li>
        </ul>
    </li>
    <li><strong>Stock</strong>
        <ul>
            <li>stockID (Stock ID)</li>
            <li>quantidadeDisponivel (Available Quantity)</li>
        </ul>
    </li>
    <li><strong>EncomendaArtigo</strong> (Order Item)
        <ul>
            <li>eID (Order Item ID)</li>
            <li>data (Date)</li>
            <li>descricao (Description)</li>
            <li>idFornecedor (Supplier ID, Foreign Key referencing Fornecedor)</li>
        </ul>
    </li>
    <li><strong>Sugerir</strong> (Suggest)
        <ul>
            <li>eID (Order Item ID, Foreign Key referencing EncomendaArtigo)</li>
            <li>stockID (Stock ID, Foreign Key referencing Stock)</li>
            <li>ID (ID)</li>
            <li>descricao (Description)</li>
            <li>custoUnidade (Unit Cost)</li>
            <li>quantidade (Quantity)</li>
        </ul>
    </li>
    <li><strong>Fornecedor</strong> (Supplier)
        <ul>
            <li>idFornecedor (Supplier ID)</li>
            <li>nome (Name)</li>
            <li>morada (Address)</li>
            <li>telefone (Phone)</li>
        </ul>
    </li>
</ol>
<h4>Notes:</h4>
<br>
<ul>
    <li>Foreign Key relationships are indicated by "->".</li>
    <li>Attribute names are translated to English.</li>
    <li>The schema is designed to be implemented in a relational database management system (RDBMS) like SQLite.</li>
    <li>Certain attributes marked with asterisks (*) were originally derived elements but were transformed into normal attributes to allow implementation in SQLite.</li>
</ul>
