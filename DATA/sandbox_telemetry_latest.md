# sandbox_telemetry_parse — 2026-11-24 22:48:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2483395 lines=5503
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5488 |
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
| `chromeBrowserPssKb` | {'int': 5488} |
| `chromeGpuPssKb` | {'int': 5488} |
| `chromeOtherPssKb` | {'int': 5488} |
| `chromeProcesses` | {'int': 5488} |
| `chromeProfiles` | {'int': 5488} |
| `chromeRendererMaxPssKb` | {'int': 5488} |
| `chromeRendererPssKb` | {'int': 5488} |
| `chromeRenderers` | {'int': 5488} |
| `chromeTabs` | {'int': 5488} |
| `chromeTabsProbedProfiles` | {'int': 5488} |
| `chromeUtilityPssKb` | {'int': 5488} |
| `desktopPssKb` | {'int': 5488} |
| `hostPssKb` | {'int': 5488} |
| `kind` | {'str': 5488} |
| `memAvailableKb` | {'int': 5488} |
| `memTotalKb` | {'int': 5488} |
| `otherPssKb` | {'int': 5488} |
| `processes` | {'int': 5488} |
| `pssFallbackProcesses` | {'int': 5488} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
