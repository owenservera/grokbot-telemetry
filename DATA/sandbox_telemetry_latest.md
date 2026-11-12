# sandbox_telemetry_parse — 2026-11-12 23:20:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2369994 lines=5245
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5236 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 5236} |
| `chromeGpuPssKb` | {'int': 5236} |
| `chromeOtherPssKb` | {'int': 5236} |
| `chromeProcesses` | {'int': 5236} |
| `chromeProfiles` | {'int': 5236} |
| `chromeRendererMaxPssKb` | {'int': 5236} |
| `chromeRendererPssKb` | {'int': 5236} |
| `chromeRenderers` | {'int': 5236} |
| `chromeTabs` | {'int': 5236} |
| `chromeTabsProbedProfiles` | {'int': 5236} |
| `chromeUtilityPssKb` | {'int': 5236} |
| `desktopPssKb` | {'int': 5236} |
| `hostPssKb` | {'int': 5236} |
| `kind` | {'str': 5236} |
| `memAvailableKb` | {'int': 5236} |
| `memTotalKb` | {'int': 5236} |
| `otherPssKb` | {'int': 5236} |
| `processes` | {'int': 5236} |
| `pssFallbackProcesses` | {'int': 5236} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
