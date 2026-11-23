# sandbox_telemetry_parse — 2026-11-24 00:46:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2061319 lines=4570
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4555 |
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
| `chromeBrowserPssKb` | {'int': 4555} |
| `chromeGpuPssKb` | {'int': 4555} |
| `chromeOtherPssKb` | {'int': 4555} |
| `chromeProcesses` | {'int': 4555} |
| `chromeProfiles` | {'int': 4555} |
| `chromeRendererMaxPssKb` | {'int': 4555} |
| `chromeRendererPssKb` | {'int': 4555} |
| `chromeRenderers` | {'int': 4555} |
| `chromeTabs` | {'int': 4555} |
| `chromeTabsProbedProfiles` | {'int': 4555} |
| `chromeUtilityPssKb` | {'int': 4555} |
| `desktopPssKb` | {'int': 4555} |
| `hostPssKb` | {'int': 4555} |
| `kind` | {'str': 4555} |
| `memAvailableKb` | {'int': 4555} |
| `memTotalKb` | {'int': 4555} |
| `otherPssKb` | {'int': 4555} |
| `processes` | {'int': 4555} |
| `pssFallbackProcesses` | {'int': 4555} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
