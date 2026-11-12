# sandbox_telemetry_parse — 2026-11-12 08:48:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2049912 lines=4538
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4529 |
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
| `chromeBrowserPssKb` | {'int': 4529} |
| `chromeGpuPssKb` | {'int': 4529} |
| `chromeOtherPssKb` | {'int': 4529} |
| `chromeProcesses` | {'int': 4529} |
| `chromeProfiles` | {'int': 4529} |
| `chromeRendererMaxPssKb` | {'int': 4529} |
| `chromeRendererPssKb` | {'int': 4529} |
| `chromeRenderers` | {'int': 4529} |
| `chromeTabs` | {'int': 4529} |
| `chromeTabsProbedProfiles` | {'int': 4529} |
| `chromeUtilityPssKb` | {'int': 4529} |
| `desktopPssKb` | {'int': 4529} |
| `hostPssKb` | {'int': 4529} |
| `kind` | {'str': 4529} |
| `memAvailableKb` | {'int': 4529} |
| `memTotalKb` | {'int': 4529} |
| `otherPssKb` | {'int': 4529} |
| `processes` | {'int': 4529} |
| `pssFallbackProcesses` | {'int': 4529} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
