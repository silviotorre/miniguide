# Software Supply Chain — Field Notes

## Build boundary
- Pin source revisions, base images and CI actions/dependencies; review updates.
- Isolate builds, minimize CI permissions, use short-lived workload identity.
- Treat third-party packages, build scripts and cache contents as untrusted inputs.

## Evidence and artifact identity
- **SBOM:** emit SPDX or CycloneDX for the released artifact; retain with its digest. An SBOM inventories components; it does not prove integrity or absence of vulnerabilities.
- **Provenance:** capture source revision, builder identity, build process and artifact digest (SLSA/in-toto). Verify the attestation's signer **and** predicate against policy.
- **Signature:** sign the immutable OCI digest, not a mutable tag; verify the expected signing identity/issuer or trusted public key.
- **Promotion:** copy the *same digest* across environments; do not rebuild per stage. Retain signatures, SBOM and provenance through promotion.

## OCI verification (example)
```powershell
$Image = "registry.example.com/team/api@sha256:<digest>"
cosign verify $Image --certificate-identity "<expected-build-identity>" --certificate-oidc-issuer "<expected-issuer>"
cosign verify-attestation $Image --type slsaprovenance --certificate-identity "<expected-build-identity>" --certificate-oidc-issuer "<expected-issuer>"
```
Replace placeholders with exact trusted identity and issuer. Inspect attestation predicates before admitting the artifact. A valid signature alone does **not** establish trusted source or safe behavior.

## CI release gates
1. Build once from a reviewed, pinned revision; generate SBOM and provenance.
2. Scan dependencies/images; enforce explicit severity and exception policies.
3. Sign the resulting digest in a restricted release job.
4. Verify digest, signature identity, provenance and policy **before deployment**; fail closed on missing evidence.
5. Record deployed digest, environment, approval and rollback target.

## References
- [SLSA provenance](https://slsa.dev/spec/v1.0/provenance)
- [Sigstore Cosign verification](https://docs.sigstore.dev/cosign/verifying/)
- [Sigstore attestations](https://docs.sigstore.dev/cosign/verifying/attestation/)
- [SPDX](https://spdx.dev/) · [CycloneDX](https://cyclonedx.org/)
