tem
===

Triple Elements Model (TEM) for fault tolerant cloud computing

This version is mainly for OpenStack.

server: tem server that receives requests from tem users
tem: tem client that monitors a component and sends a requet to the tem server when a failure detected cannot be handled.
     It uses ping to the component for SLA element.
