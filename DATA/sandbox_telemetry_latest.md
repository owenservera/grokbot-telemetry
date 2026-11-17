# sandbox_telemetry_parse — 2026-11-17 10:48:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=359131 lines=800
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 793 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 793} |
| `chromeGpuPssKb` | {'int': 793} |
| `chromeOtherPssKb` | {'int': 793} |
| `chromeProcesses` | {'int': 793} |
| `chromeProfiles` | {'int': 793} |
| `chromeRendererMaxPssKb` | {'int': 793} |
| `chromeRendererPssKb` | {'int': 793} |
| `chromeRenderers` | {'int': 793} |
| `chromeTabs` | {'int': 793} |
| `chromeTabsProbedProfiles` | {'int': 793} |
| `chromeUtilityPssKb` | {'int': 793} |
| `desktopPssKb` | {'int': 793} |
| `hostPssKb` | {'int': 793} |
| `kind` | {'str': 793} |
| `memAvailableKb` | {'int': 793} |
| `memTotalKb` | {'int': 793} |
| `otherPssKb` | {'int': 793} |
| `processes` | {'int': 793} |
| `pssFallbackProcesses` | {'int': 793} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
