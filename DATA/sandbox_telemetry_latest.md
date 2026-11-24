# sandbox_telemetry_parse — 2026-11-24 09:26:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2224564 lines=4931
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4916 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4916} |
| `chromeGpuPssKb` | {'int': 4916} |
| `chromeOtherPssKb` | {'int': 4916} |
| `chromeProcesses` | {'int': 4916} |
| `chromeProfiles` | {'int': 4916} |
| `chromeRendererMaxPssKb` | {'int': 4916} |
| `chromeRendererPssKb` | {'int': 4916} |
| `chromeRenderers` | {'int': 4916} |
| `chromeTabs` | {'int': 4916} |
| `chromeTabsProbedProfiles` | {'int': 4916} |
| `chromeUtilityPssKb` | {'int': 4916} |
| `desktopPssKb` | {'int': 4916} |
| `hostPssKb` | {'int': 4916} |
| `kind` | {'str': 4916} |
| `memAvailableKb` | {'int': 4916} |
| `memTotalKb` | {'int': 4916} |
| `otherPssKb` | {'int': 4916} |
| `processes` | {'int': 4916} |
| `pssFallbackProcesses` | {'int': 4916} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
