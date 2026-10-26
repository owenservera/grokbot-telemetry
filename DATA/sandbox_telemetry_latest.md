# sandbox_telemetry_parse — 2026-10-27 00:30:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=225975 lines=503
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 498 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 498} |
| `chromeGpuPssKb` | {'int': 498} |
| `chromeOtherPssKb` | {'int': 498} |
| `chromeProcesses` | {'int': 498} |
| `chromeProfiles` | {'int': 498} |
| `chromeRendererMaxPssKb` | {'int': 498} |
| `chromeRendererPssKb` | {'int': 498} |
| `chromeRenderers` | {'int': 498} |
| `chromeTabs` | {'int': 498} |
| `chromeTabsProbedProfiles` | {'int': 498} |
| `chromeUtilityPssKb` | {'int': 498} |
| `desktopPssKb` | {'int': 498} |
| `hostPssKb` | {'int': 498} |
| `kind` | {'str': 498} |
| `memAvailableKb` | {'int': 498} |
| `memTotalKb` | {'int': 498} |
| `otherPssKb` | {'int': 498} |
| `processes` | {'int': 498} |
| `pssFallbackProcesses` | {'int': 498} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
