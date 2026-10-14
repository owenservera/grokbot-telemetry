# sandbox_telemetry_parse — 2026-10-14 10:15:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=229534 lines=512
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 507 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 507} |
| `chromeGpuPssKb` | {'int': 507} |
| `chromeOtherPssKb` | {'int': 507} |
| `chromeProcesses` | {'int': 507} |
| `chromeProfiles` | {'int': 507} |
| `chromeRendererMaxPssKb` | {'int': 507} |
| `chromeRendererPssKb` | {'int': 507} |
| `chromeRenderers` | {'int': 507} |
| `chromeTabs` | {'int': 507} |
| `chromeTabsProbedProfiles` | {'int': 507} |
| `chromeUtilityPssKb` | {'int': 507} |
| `desktopPssKb` | {'int': 507} |
| `hostPssKb` | {'int': 507} |
| `kind` | {'str': 507} |
| `memAvailableKb` | {'int': 507} |
| `memTotalKb` | {'int': 507} |
| `otherPssKb` | {'int': 507} |
| `processes` | {'int': 507} |
| `pssFallbackProcesses` | {'int': 507} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
