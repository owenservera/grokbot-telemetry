# sandbox_telemetry_parse — 2026-11-26 00:21:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2992137 lines=6628
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6613 |
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
| `chromeBrowserPssKb` | {'int': 6613} |
| `chromeGpuPssKb` | {'int': 6613} |
| `chromeOtherPssKb` | {'int': 6613} |
| `chromeProcesses` | {'int': 6613} |
| `chromeProfiles` | {'int': 6613} |
| `chromeRendererMaxPssKb` | {'int': 6613} |
| `chromeRendererPssKb` | {'int': 6613} |
| `chromeRenderers` | {'int': 6613} |
| `chromeTabs` | {'int': 6613} |
| `chromeTabsProbedProfiles` | {'int': 6613} |
| `chromeUtilityPssKb` | {'int': 6613} |
| `desktopPssKb` | {'int': 6613} |
| `hostPssKb` | {'int': 6613} |
| `kind` | {'str': 6613} |
| `memAvailableKb` | {'int': 6613} |
| `memTotalKb` | {'int': 6613} |
| `otherPssKb` | {'int': 6613} |
| `processes` | {'int': 6613} |
| `pssFallbackProcesses` | {'int': 6613} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
