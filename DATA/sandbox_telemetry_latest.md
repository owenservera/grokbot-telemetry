# sandbox_telemetry_parse — 2026-10-14 07:54:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=174390 lines=390
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 385 |
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
| `chromeBrowserPssKb` | {'int': 385} |
| `chromeGpuPssKb` | {'int': 385} |
| `chromeOtherPssKb` | {'int': 385} |
| `chromeProcesses` | {'int': 385} |
| `chromeProfiles` | {'int': 385} |
| `chromeRendererMaxPssKb` | {'int': 385} |
| `chromeRendererPssKb` | {'int': 385} |
| `chromeRenderers` | {'int': 385} |
| `chromeTabs` | {'int': 385} |
| `chromeTabsProbedProfiles` | {'int': 385} |
| `chromeUtilityPssKb` | {'int': 385} |
| `desktopPssKb` | {'int': 385} |
| `hostPssKb` | {'int': 385} |
| `kind` | {'str': 385} |
| `memAvailableKb` | {'int': 385} |
| `memTotalKb` | {'int': 385} |
| `otherPssKb` | {'int': 385} |
| `processes` | {'int': 385} |
| `pssFallbackProcesses` | {'int': 385} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
