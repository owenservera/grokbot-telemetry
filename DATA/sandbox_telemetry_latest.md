# sandbox_telemetry_parse — 2026-11-18 01:28:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=620474 lines=1378
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1371 |
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
| `chromeBrowserPssKb` | {'int': 1371} |
| `chromeGpuPssKb` | {'int': 1371} |
| `chromeOtherPssKb` | {'int': 1371} |
| `chromeProcesses` | {'int': 1371} |
| `chromeProfiles` | {'int': 1371} |
| `chromeRendererMaxPssKb` | {'int': 1371} |
| `chromeRendererPssKb` | {'int': 1371} |
| `chromeRenderers` | {'int': 1371} |
| `chromeTabs` | {'int': 1371} |
| `chromeTabsProbedProfiles` | {'int': 1371} |
| `chromeUtilityPssKb` | {'int': 1371} |
| `desktopPssKb` | {'int': 1371} |
| `hostPssKb` | {'int': 1371} |
| `kind` | {'str': 1371} |
| `memAvailableKb` | {'int': 1371} |
| `memTotalKb` | {'int': 1371} |
| `otherPssKb` | {'int': 1371} |
| `processes` | {'int': 1371} |
| `pssFallbackProcesses` | {'int': 1371} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
